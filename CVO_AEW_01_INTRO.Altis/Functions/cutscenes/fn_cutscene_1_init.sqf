/*
* Author: Zorn
* Function to establish the stuff for the first cutscene
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* ['something', player] call prefix_component_fnc_functionname
*
* Public: No
*/


// 1. Trigger: some random civ ai gets killed/deleted



// ONLY ON THE SERVER
if (isServer) then {
    // REPLACES THE TRIGGER
    // WAIT UNTIL CIV IS DEAD/DELETED, THEN EXECUTES THE CUTSCENE 1 MAIN FUCNTION ON THE SERVER
    private _triggerCiv_scene1 = missionNamespace getVariable ["civ_trigger_1", objNull];  // <- replace "civ_trigger_1" with the correct variable <- TODO
    [
        {
            params [["_obj", "", [objNull]]];
            !alive _obj || isNull _obj
        },                
        { missionNamespace setVariable ["kyo_trigger_cutscene_1", true, true]; },                
        [_triggerCiv_scene1]
    ] call CBA_fnc_waitUntilAndExecute;

    // Starts the cutscene
    [{ missionNamespace getVariable ["kyo_trigger_cutscene_1", false] }, { [] call cutscenes_fnc_cutscene_1; }] call CBA_fnc_waitUntilAndExecute;

    
    private _codeToRun = {
        [airport_crowd_soundsource, "airport_crowd", 300] call CBA_fnc_globalSay3D;
    };

    private _parameters = [  /*parameters*/  ];
    private _exitCode = { /* exit code */ };
    private _condition = { ! (missionNamespace getVariable ["kyo_trigger_cutscene_1", false]) };
    private _delay = 75;
    
    [{
        params ["_args", "_handle"];
        _args params ["_codeToRun", "_parameters", "_exitCode", "_condition"];
    
        if (_parameters call _condition) then {
            _parameters call _codeToRun;
        } else {
            _handle call CBA_fnc_removePerFrameHandler;
            _parameters call _exitCode;
        };
    }, _delay, [_codeToRun, _parameters, _exitCode, _condition]] call CBA_fnc_addPerFrameHandler;
};


// EVENTS ON PLAYERS
if !(hasInterface) exitWith {};

// TRANSITION FADE TO/FROM BLACK
[
    "CUTSCENE_BLACK", // eventname
    {
        params ["_mode", "_duration", ["_muteSounds", true, [true]]];

        switch (_mode) do {
            case "TOBLACK": {   ["CVO_cutscene_fading", true, _duration] call BIS_fnc_blackOut; };
            case "FROMBLACK": { ["CVO_cutscene_fading", true, _duration] call BIS_fnc_blackIn; };
        };

        if (_muteSounds) then {
            switch (_mode) do {
                case "TOBLACK": {  [false] call ace_common_fnc_setVolume; };
                case "FROMBLACK": { [true] call ace_common_fnc_setVolume; };
            };
        };
    }
] call CBA_fnc_addEventHandler;


// TELEPORTS EACH PLAYER INDIVIDUALLY, LOCALLY ON THEIR MASHINE, INTO THE HELI
[
    "CUTSCENE_PLAYER_INTO_HELI", // eventname
    {
        params ["_vic", "_index"];
        moveOut player;

        player moveInCargo [_vic, _index, false];
        player assignAsCargoIndex [_vic, _index];
    }

] call CBA_fnc_addEventHandler;


