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
    [{ missionNamespace setVariable ["kyo_trigger_cutscene_1", false] }, { [] call cutscenes_fnc_cutscene_1; }] call CBA_fnc_waitUntilAndExecute;

};

// EVENTS ON PLAYERS
if (hasInterface) then {
    // TRANSITION FADE INTO BLACK / FADE FROM BLACK
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
                _duration fadeSound _tgt_soundVolume;
            };
        }
    ] call CBA_fnc_addEventHandler;


    // TELEPORTS EACH PLAYER INDIVIDUALLY, LOCALLY ON THEIR MASHINE, INTO THE HELI
    [
        "CUTSCENE_PLAYER_INTO_HELI", // eventname
        {
            params [ "_helis" ];


            _helis = _helis select { !isNull _x };

            moveOut player;

            if (player moveInCargo (_helis#0)) then {
                player assignAsCargo (_helis#0)
            } else {
                if (count _helis > 1) then {
                    player moveInCargo (_helis#1);
                    player assignAsCargo (_helis#1)
                } else {
                    player allowDamage false;
                    player attachTo [_helis#0, [0,5,0]];

                    _condition = {
                        params ["_heli"];
                        ! alive _heli || { getPos _heli select 3 < 3 };
                    };            
                    _statement = {
                        detach player;
                        [ { player allowDamage true } , [], 5] call CBA_fnc_waitAndExecute;
                    };                // Code to be executed once condition true
                    _parameter = [_helis#0];                // arguments to be passed on -> _this
                    [_condition, _statement, _parameter] call CBA_fnc_waitUntilAndExecute;
                };
            };
        }
    ] call CBA_fnc_addEventHandler;
}; 

