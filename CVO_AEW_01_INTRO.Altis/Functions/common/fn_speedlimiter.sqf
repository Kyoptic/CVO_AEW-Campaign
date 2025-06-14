/*
* Author: Zorn
* Function to limit the speed based on distance for the provided helicopter
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

params [
    ["_heli", objNull, [objNull]],
    ["_tgt",  objNull, [objNull]]
];

if (isNull _heli || isNull _tgt) exitWith { systemChat "heli or tgt is null" };

missionNamespace setVariable ["heli_speedlimit", true, true];




private _parameters = [_heli, _tgt];
private _delay = 0;

private _condition = {
    missionNamespace getVariable ["heli_speedlimit", false]
    &&
    {
        alive (_this#0) && { (getPos (_this#0) select 2) > 5 };
    }
};

private _codeToRun = {
    params ["_heli", "_tgt"];
    private _limit = linearConversion [3000, 500, _heli distance2D _tgt, 200, 50, true];
    _heli limitSpeed _limit;
    driver _heli limitSpeed _limit;
    if ( is3DENPreview && { player in _heli } ) then { systemChat format ["Speed: %1/%2 - Alt: %3/%4",floor speed _heli, floor _limit, floor (getPos _heli select 2), _heli getVariable "flyInHeight"] };
};

private _exitCode = {};

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