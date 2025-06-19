/*
* Author: Zorn
* Function to establish serveronly stuff.
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

diag_log format ['[CVO](debug)(fn_init_server) _this: %1', _this];

if !(isServer) exitWith {};


// Trigger for 1. Cutscene
[
    {
        params [["_obj", "", [objNull]]];
        !alive _obj || isNull _obj
    },                
    { missionNamespace setVariable ["kyo_trigger_cutscene_1", true, true]; },                
    [missionNamespace getVariable ["civ_trigger_1", objNull]]
] call CBA_fnc_waitUntilAndExecute;

// Starts the cutscene
[{ missionNamespace getVariable ["kyo_trigger_cutscene_1", false] }, { [] call cutscenes_fnc_cutscene_1; }] call CBA_fnc_waitUntilAndExecute;


// Trigger for 2. Cutscene
[
    {
        params [["_obj", "", [objNull]]];
        isNull _obj || { !alive _obj }
    },                
    { missionNamespace setVariable ["kyo_trigger_cutscene_2", true, true]; },                
    [missionNamespace getVariable ["trigger_man_skipDay", objNull]]
] call CBA_fnc_waitUntilAndExecute;

// Starts the cutscene
[{ missionNamespace getVariable ["kyo_trigger_cutscene_2", false] }, { [] call cutscenes_fnc_cutscene_2; }] call CBA_fnc_waitUntilAndExecute;


// Airport Crowd Sound Loop
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

[
    { missionNamespace getVariable ["trigger_landed", false] },
    { detach c130; deleteVehicle lz_c130; }
] call CBA_fnc_waitUntilAndExecute;

