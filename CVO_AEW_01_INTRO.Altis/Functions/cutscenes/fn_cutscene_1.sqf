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

// pos heli transport spawn [13161.7,11006.3,100]

// Defines // TODO: asign the right heli variables
private _durationTransition = 5;


// Create Transport Helicopters and attachTo them to their starting point
private _allPlayers = call BIS_fnc_listPlayers - [ZGM, CoZGM];
helis_transport = [];
private _helis = [];
private _heli_className = "Aegis_C_Heli_Transport_02_VIP_F"; // 12 passenger seats


for "_i" from 1 to (ceil (count _allPlayers / 12) ) do {
	private _heli = createVehicle [_heli_className, [0,0,0], [], 0, "FLY"];
	helis_transport pushBack _heli;
	_heli attachTo [ lz_start, [0,-100*_i,200]];
    _heli flyInHeight [200, true];
    
};


// spawn heli on lz_engine and turn on engine (delayed)
private _heliEngine = createVehicle  [_heli_className, getPos lz_engine vectorAdd [0,0,1]];
[ { _this#0 engineOn true } , [_heliEngine], 1] call CBA_fnc_waitAndExecute;

// secure each heli
{
    private _heli = _x;
    private _crew = west createVehicleCrew _heli;
    _heli lockDriver true;
    { _heli lockTurret [_x, true] } forEach allTurrets [_heli, false];
    { _x allowDamage false } forEach (units _crew + [_heli]);
} forEach (helis_transport + [_heliEngine]);


// Create Waypoints for Transport Helicopters
{
    private _heli = _x;
    private _grp = group driver _heli;

    // Use Objects as waypoint references + use stored data for flyinheight
    {
        private _wp = _grp addWaypoint [getPos _x, -1];

        // set flyInHeight based on object variable
        private _alt = _x getVariable ["flyInHeight", -1];
        if (_alt != -1) then { _heli setVariable ["flyInHeight", _alt]};
        _wp setWaypointStatements [
            "true",
            format ["vehicle this flyInHeight [%1, true]", _heli getVariable ["flyInHeight", 200]]
        ];

    } forEach [obj_wp_1, obj_wp_2, obj_wp_3, obj_wp_4, obj_wp_5, obj_wp_6, obj_wp_7];

    // get relative LZ @ Airport
    private _lz = missionNamespace getVariable ["lz_airport_" + str _forEachIndex, objNull];
    if (isNull _lz) exitWith {};

    // add Final WP on helipad
    private _wp = _grp addWaypoint [getPos _lz, -1];

    // establish Speedlimiter for each helicopter
    [_heli, _lz] call common_fnc_speedlimiter;
    
    // establish order to land once the heli arrived at airport
    [
        { (_this#0) distance2D (_this#1) < 150 },
        {
            [ { (_this#0) landAt [_this#1, "LAND", 999]; } , _this, 10] call CBA_fnc_waitAndExecute;
        },
        [_heli, _lz]
    ] call CBA_fnc_waitUntilAndExecute;
} forEach helis_transport;





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
        params ["_helis"];
        
        // free the helicopters
        {detach _x} foreach attachedObjects lz_start;

        // Recursive Function: teleport 1 player per iteration(~every5 frames) into the helicopter so multiple players dont try to take the same spot.
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