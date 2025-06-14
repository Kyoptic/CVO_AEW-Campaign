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

};

// EVENTS ON PLAYERS
if !(hasInterface) exitWith {};

// TRANSITION FADE TO/FROM BLACK
[
    "CUTSCENE_BLACK", // eventname
    {
        params ["_mode", "_duration", ["_muteSounds", true, [true]]];

        switch (_mode) do {
            case "TOBLACK": { ["CVO_cutscene_fading", true, _duration] call BIS_fnc_blackOut; };
            case "FROMBLACK": { ["CVO_cutscene_fading", true, _duration] call BIS_fnc_blackIn; };
        };

        if (_muteSounds) then {
            private _tgt_soundVolume = switch (_mode) do {
                case "TOBLACK": { 0 };
                case "FROMBLACK": { 1 };
            };
            (_duration * 0.66) fadeSound _tgt_soundVolume;
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

