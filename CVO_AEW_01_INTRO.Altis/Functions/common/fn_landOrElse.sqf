/*
* Author: Zorn
* Function to brute force a smooth and nice landing on a target LZ
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
    [ "_heli",       objNull, [objNull]      ],
    [ "_lz",         objNull, [objNull]      ],
    [ "_duration",   15,      [0]            ],
    [ "_forceDur",   120,     [0]            ]
];

if (isNull _heli || isNull _lz) exitWith { systemChat "Object not provided"; };

driver _heli action ["LandGear", _heli];

private _startPos = getPosASL _heli;
private _endPos = getPosASL _lz;

private _intermediary = + _endPos;
_intermediary set [2, _startPos select 2];

private _positions = [_startPos, _intermediary, _endPos];

private _startVectorUp = vectorUp _heli;
private _startVectorDir = vectorDir _heli;
private _endVectorDir = (getPosASL _heli vectorMultiply [1,1,0]) vectorFromTo (getPosASL _lz vectorMultiply [1,1,0]);


/*
_codeToRun  - <CODE> code to Run stated between {}
_parameters - <ANY> OPTIONAL parameters, will be passed to  code to run, exit code and condition
_exitCode   - <CODE> OPTIONAL exit code between {} code that will be executed upon ending PFEH default is {}
_condition  - <CODE THAT RETURNS BOOLEAN> - OPTIONAL conditions during which PFEH will run default {true}
_delay      - <NUMBER> (optional) delay between each execution in seconds, PFEH executes at most once per frame
*/

private _startTime = CBA_missionTime;
private _endTime = CBA_missionTime + _duration;
private _releaseTime = _endTime + _forceDur;
    
private _codeArgs = [_heli, _positions, _lz, _startVectorUp, _startVectorDir, _endVectorDir];
private _parameters = [_startTime, _endTime, _codeArgs, _releaseTime, _duration];


private _condition = { _this#3 > CBA_missionTime };

private _codeToRun = {
    params ["_startTime", "_endTime", "_codeArgs", "_releaseTime", "_duration"];
    _codeArgs params ["_heli", "_positions", "_lz", "_startVectorUp", "_startVectorDir", "_endVectorDir"];
    
    private _progress = linearConversion [_startTime, _endTime, CBA_missionTime, 0, 1, true];

    private _newPos = _progress bezierInterpolation _positions;


    _heli setPosASL _newPos;
    
    _heli setVectorDirAndUp [
        vectorLinearConversion [ 0, 0.5, _progress, _startVectorDir, _endVectorDir, true ],
        vectorLinearConversion [ 0, 0.5, _progress, _startVectorUp,  [0,0,1],       true ]
    ];

    if ( _progress > 0.5 ) then { driver _heli action ["LandGear", _heli]; };
};
 
private _exitCode = {
    _this#2 params ["_heli", "","", "_lz"];

    ["cvo_forced_landing_done", [_heli, _lz], _heli] call CBA_fnc_localEvent;

    [ { _this#0 engineOn false; } , [_heli], 10] call CBA_fnc_waitAndExecute;

};

private _delay = 0;

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

