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


private _triggerCiv_scene1 = objNull;  // <- place objNull with the variable of that civilian.



if (isServer) then {


    _condition = {
        params ["_obj", "", [objNull]];

        !alive _obj // obj ded
        ||
        isNull _obj // obj deleted
    };                // condition - Needs to return bool
    _statement = {
        missionNamespace setVariable ["kyo_trigger_cutscene_1", true];
    };                // Code to be executed once condition true
    _parameter = [_triggerCiv_scene1];                // arguments to be passed on -> _this
    [_condition, _statement, _parameter] call CBA_fnc_waitUntilAndExecute;
};

if (hasInterface) then {
    [
        "CUTSCENE_BLACK",
        {
            params ["_mode", "_duration", ["_muteSounds", true, [true]]];
            // TODO: The actual fading of the screen...


            if (_muteSounds) then {
                private _tgt_soundVolume = switch (_mode) do {
                    case "TOBLACK": { 0 };
                    case "FROMBLACK": { 1 };
                };
                _duration fadeSound _tgt_soundVolume;
            };
        }
    ] call CBA_fnc_addEventHandler;


    [
        "CUTSCENE_PLAYER_INTO_HELI",
        {
            params [ ["_heli", objNull, [objNull] ] ];

            moveOut player;
            player moveInCargo _heli;

        }
    ] call CBA_fnc_addEventHandler;
}; 

