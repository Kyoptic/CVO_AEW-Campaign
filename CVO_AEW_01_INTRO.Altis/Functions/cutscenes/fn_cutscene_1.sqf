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

helis_transport = [];
private _durationTransition = 10;
private _heli_className = "Aegis_C_Heli_Transport_02_VIP_F"; // 12 passenger seats


private _allPlayers = call BIS_fnc_listPlayers - [ZGM, CoZGM];
private _heli_count = count _allPlayers / 12;

// Editor Debug Mode
_heli_count = [_heli_count, 4       ] select is3DENPreview;
_allPlayers = [_allPlayers, [player]] select is3DENPreview;


// ############### ################## ###############
// ############### CREATE HELICOPTERS ###############
// ############### ################## ###############

// EngineSound: spawn heli on lz_engine and turn engine on (delayed)
private _heliEngine = createVehicle  [_heli_className, getPos lz_engine vectorAdd [0,0,1]];
[ { _this#0 engineOn true } , [_heliEngine], 1] call CBA_fnc_waitAndExecute;

// Create Transport Helicopters and attachTo them to their starting point
for "_i" from 1 to _heli_count do {
	private _heli = createVehicle [_heli_className, [0,0,0], [], 0, "FLY"];
	helis_transport pushBack _heli;
	_heli attachTo [ lz_start, [-500*_i,-500*_i,250]];
    _heli flyInHeight [250, true];
};

// secure each heli
{
    private _heli = _x;
    private _crew = west createVehicleCrew _heli;

    group driver _heli setBehaviourStrong "CARELESS";

    _heli lockDriver true;
    { _heli lockTurret [_x, true] } forEach allTurrets [_heli, false];
    { _x allowDamage false } forEach (units _crew + [_heli]);
} forEach (helis_transport + [_heliEngine]);


// ############### ################ ###############
// ############### CREATE WAYPOINTS ###############
// ############### ################ ###############
private _waypointObjects = [obj_wp_1, obj_wp_2, obj_wp_3, obj_wp_4, obj_wp_5, obj_wp_6, obj_wp_7];

{
    private _heli = _x;

    _heli setVariable ["flyInHeight", 200];
    _heli flyInHeightASL [20, 20, 20];

    private _grp = group driver _heli;

    // Use Objects as waypoint references + use stored data for flyinheight
    private _waypoints = [];
    {
        private _wp = _grp addWaypoint [getPos _x, -1];

        // set flyInHeight based on object variable
        private _alt = _x getVariable ["flyInHeight", -1];
        if (_alt != -1) then { _heli setVariable ["flyInHeight", _alt]};
        _wp setWaypointStatements [
            "true",
            "vehicle this flyInHeight [vehicle this getVariable 'flyInHeight', true]"
        ];
        _waypoints pushBack _wp;

    } forEach _waypointObjects;



    // get relative LZ @ Airport
    private _lzVarName = "lz_airport_" + str _forEachIndex;
    private _lz = missionNamespace getVariable [_lzVarName, objNull];
    if (isNull _lz) exitWith {};

    // add Final WP on helipad
    private _wp = _grp addWaypoint [getPos _lz, -1];
    
    // _wp setWaypointScript "";

    _wp setWaypointStatements [
        "true",
        format ["[group this, %1, %2] spawn BIS_fnc_wpLand;", getPos _lz, _lzVarName ]
        // format ["vehicle this landAt [%1, 'LAND', 999];", _lzVarName]
    ];

    // establish Speedlimiter for each helicopter
    [_heli, _lz] call common_fnc_speedlimiter;
    
    // establish order to land once the heli arrived at airport
} forEach helis_transport;

// Delete the Waypoint Objectives cause the helicopters try to "avoid" them.
{ deleteVehicle _x } forEach _waypointObjects;

// ############### ################# ###############
// ############### DELAYED EXECUTION ###############
// ############### ################# ###############
private _delay = 0;
// PHASE 1: helicopter engine sound turn on
_delay = _delay + 1;
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


// PHASE 1: play sound of terminal audio annoucmeent
_delay = _delay + 10;
[ CBA_fnc_globalSay3D, [airport_departure_soundsource, "airport_announcement", 300], _delay ] call CBA_fnc_waitAndExecute;


// PHASE 3: Fade To Black
_delay = _delay + 5;
[CBA_fnc_globalEvent, ["CUTSCENE_BLACK", ["TOBLACK", _durationTransition]], _delay] call CBA_fnc_waitAndExecute;


// PHASE 4: Teleport Players into Heli
_delay = _delay + _durationTransition + 1;
[
    {
        // free the helicopters
        { detach _x } foreach attachedObjects lz_start;

        params ["_players", "_helis"];

        private _slots = [];

        {
            private _heli = _x;
            // get all cargo seats, select only the empty ones, then create the individual [vic,index] slot, append the full list to the main array
            _slots append ( fullCrew [_heli, "cargo", true] select { isNull (_x select 0) } apply { [_heli, _x select 2] } );
        } forEach _helis;
        diag_log format ['[CVO](debug)(fn_cutscene_1) _slots: %1', _slots];
        {
            // take random slot, remove it from the main array and apply it to a player.
            private _slot = _slots deleteAt ( floor random count _slots );
            ["CUTSCENE_PLAYER_INTO_HELI", _slot, _x] call CBA_fnc_targetEvent;
        } forEach _players;

    },
    [_allPlayers, helis_transport],
    _delay
] call CBA_fnc_waitAndExecute;


// PHASE 5: Fade Back from Black 
_delay = _delay + 3;
[CBA_fnc_globalEvent, ["CUTSCENE_BLACK", ["FROMBLACK", _durationTransition]], _delay] call CBA_fnc_waitAndExecute;
_delay = _delay + _durationTransition;


// PHASE 6: Fade Back from Black 
_delay = _delay + _durationTransition + 1;


// TODO: Text overlays


