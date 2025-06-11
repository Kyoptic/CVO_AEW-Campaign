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


private _triggerCiv_scene1 = missionNamespace getVariable ["civ_trigger_1", objNull];  // <- replace "civ_trigger_1" with the actual variable;

if (isServer) then {
    [
        {
            // condition - Needs to return bool
            params ["_obj", "", [objNull]];

            !alive _obj // obj ded
            ||
            isNull _obj // obj deleted
        },                
        {
            // Code to be executed once condition true
            missionNamespace setVariable ["kyo_trigger_cutscene_1", true];
            [] call cutscenes_fnc_cutscene_1;
        },                
        [_triggerCiv_scene1] // parameters
    ] call CBA_fnc_waitUntilAndExecute;
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

