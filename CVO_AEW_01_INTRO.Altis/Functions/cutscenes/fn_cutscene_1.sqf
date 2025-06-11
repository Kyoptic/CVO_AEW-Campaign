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

// Defines // TODO: asign the right heli variables
private _durationTransition = 5;
private _heli_engineSounds    = missionNamespace getVariable ["heli_eng",  objNull];
private _heli_teleportTarget  = missionNamespace getVariable ["heli_tp_1", objNull];
private _heli_teleportTarget2 = missionNamespace getVariable ["heli_tp_2", objNull];

{
    private _heli = _x;
    if (isNull _heli) then { continue };

    { _x allowDamage false } forEach (crew vehicle + [_heli]);

    _heli lockDriver true;

    { _heli lockTurret [_x, true] } forEach (allTurrets [_heli, false]);

} forEach [_heli_engineSounds, _heli_teleportTarget, _heli_teleportTarget2];





// PHASE 1: play sound of terminal audio annoucmeent
private _delay = 0;

// 1.A Play Sound
// 1.B Subtitles?
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




// PHASE 2: helicopter engine sound turn on
// 10 Sec after Announcement:
_delay = _delay + 10;

[
    {
        params ["_heli"];
        _heli_engineSounds allowDamage false;
        _heli_engineSounds enableSimulationGlobal true;
        _heli_engineSounds engineOn true;
    },
    [_heli_engineSounds],
    _delay                          //timeToWaitinSecounds
] call CBA_fnc_waitAndExecute;


// PHASE 3: Fade To Black
// 10 sec after Heli engine on:
_delay = _delay + 10;
[CBA_fnc_globalEvent, ["CUTSCENE_BLACK", ["TOBLACK", _durationTransition]], _delay] call CBA_fnc_waitAndExecute;




// PHASE 4: Teleport Players into Heli
// _durationTransition + 0.5 sec after Transition started:
_delay = _delay + _durationTransition + 0.5;
[
    {
        // Recursive Function: teleport 1 player per iteration(~every5 frames) into the helicopter so multiple players dont try to take the same spot.
        params ["_helis"];
        private _allPlayers = call BIS_fnc_listPlayers - [ZGM, CoZGM];
        private _codeRecursive = {
            params ["_players", "_helis", "_codeRecursive"];

            private _player = _players deleteAt 0;
            ["CUTSCENE_PLAYER_INTO_HELI", [_helis], _player] call CBA_fnc_targetEvent;     //_target can be single object or group or an array of those - will be executed only once per mashine
            if (_players isEqualTo []) exitWith {};
            [_codeRecursive, [_players, _helis, _codeRecursive], 1/60*5] call CBA_fnc_waitAndExecute;
        };
        [_players, _heli, _codeRecursive] call _codeRecursive;
    },
    [_heli_teleportTarget, _heli_teleportTarget2],
    _delay
] call CBA_fnc_waitAndExecute;


// PHASE 5: Fade Back from Black 
// 3 Secounds after the teleporting started
_delay = _delay + 3;
[CBA_fnc_globalEvent, ["CUTSCENE_BLACK", ["FROMBLACK", _durationTransition]], _delay] call CBA_fnc_waitAndExecute;
_delay = _delay + _durationTransition;


// PHASE 6: Fade Back from Black 
// _durationTransition + 1 Secounds after the teleporting started
_delay = _delay + _durationTransition + 1;

// TODO: Text overlays