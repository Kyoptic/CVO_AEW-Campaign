/*
* Author: Zorn
* Plays the cutscene on the individual clients.
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

if !(isServer) exitWith {};

private _delay = 0;
// 1. play sound of terminal audio annoucmeent
// 1.1 subtitle 
// Player Sound or so
/*

// TODO

// [[player], "Alarm"] call CBA_fnc_globalSay;

playSound3D [
    getMissionPath "\data\airport_announcement.ogg"
    ,soundSource
    ,true
    ,soundPosition
    ,3
    ,1
    ,100
    ,offset
    ,local
];
*/

// 2. helicopter engine sound turn on
_delay = _delay + 10;

[
    {
        params ["_heli"];
        _heli enableSimulationGlobal true;
        _heli engineOn true;
    },
    [heli_1],
    _delay                          //timeToWaitinSecounds
] call CBA_fnc_waitAndExecute;


// Fade To Black
_delay = _delay + 10;
private _durationTransition = 5;
[CBA_fnc_globalEvent, ["CUTSCENE_BLACK", ["TOBLACK", _durationTransition]], _delay] call CBA_fnc_waitAndExecute;

// Duration of transition + 1 secound black
_delay = _delay + _durationTransition + 1;

// TP Players into Heli
private _allPlayers = call BIS_fnc_listPlayers - [ZGM, CoZGM];

private _codeRecursive = {
    params ["_players", "_heli", "_codeRecursive"];

    private _player = _players deleteAt 0;
};

[CBA_fnc_targetEvent, ["CUTSCENE_PLAYER_INTO_HELI", [], _target], _delay] call CBA_fnc_waitAndExecute;

_delay = _delay + 1;

_durationTransition


// Fade Back from Black 


5 secounds transition:
turn off sounds
blackscreen into black


TP current connected players into helicopter

sounds get back in
blackscreen from blck back to normal

2-3 lines of text 