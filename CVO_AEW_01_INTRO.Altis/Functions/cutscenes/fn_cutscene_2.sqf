/*
* Author: Zorn
* Metronome Function for the 2. Cutscene: SkipDay
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

if (!isServer) exitWith {};


//// 1. Phase
// Clients
["cut2_scene0"] call CBA_fnc_globalEvent;

// ############### ################# ###############
// ############### DELAYED EXECUTION ###############
// ############### ################# ############### 

/// 2. Phase
private _delay = 5;
[CBA_fnc_globalEvent, ["cut2_scene1"], _delay] call CBA_fnc_waitAndExecute;

_delay = _delay + 8;
// Clients
[CBA_fnc_globalEvent, ["cut2_scene2"], _delay] call CBA_fnc_waitAndExecute;

// Server
[
    {
        private _targetDaytime = 5 + 5/6;
		private _timeToSkip = [_targetDayTime + 24 - dayTime, _targetTime - daytime] select _targetDaytime > dayTime;
		skiptime _timeToSkip;

		0 setRain 0;
		0 setOvercast 0.5;
		0 setFog [0.20, 0.02, 50];

		3600 setRain 0;
		3600 setOvercast 0.2;
		3600 setFog [0.02, 0.02, 50];

		ZGM setPos (getPos TPpos);
		CoZGM setPos (getPos TPpos);
		"CVO_Patrol_Base" setMarkerAlpha 1;
		"NAA_Patrol_Base" setMarkerAlpha 1;
		"minefield1" setMarkerAlpha 1;
		"minefield2" setMarkerAlpha 0.6;
		"AbandonedBaseMarker" setMarkerAlpha 1;
		"Infestiona_IDAPCamp" setMarkerAlpha 1;
		"Infestiona_WAMilitiaCamp" setMarkerAlpha 1;

		// Delete Layer Function
		["AthiraRiotsLayer", "DELETE"] call cvo_common_fnc_layerObjects;
    },
    [],
    _delay
] call CBA_fnc_waitAndExecute;

/// 3. Phase
_delay = _delay + 8;

// Clients
[CBA_fnc_globalEvent, ["cut2_scene3"], _delay] call CBA_fnc_waitAndExecute;


/// 4. Phase
_delay = _delay + 3.5;

// Clients
[CBA_fnc_globalEvent, ["cut2_scene4"], _delay] call CBA_fnc_waitAndExecute;

/// 5. Phase
_delay = _delay + 3;
// Clients
[CBA_fnc_globalEvent, ["cut2_scene5"], _delay] call CBA_fnc_waitAndExecute;
