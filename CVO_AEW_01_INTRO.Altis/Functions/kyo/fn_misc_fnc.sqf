/*
* Author: Zorn
* Function for Kyo's adhoc stuff
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

// File for adding miscellaneous scripts that need to be run once at the start of a particular mission in the op.
// 		E.g. attachto for flags/banners to vehicles.
//	I've split this off as a separate file as I expect it to change every mission in one way or another.
//	This way, this can just be ran from initserver.sqf

//WAM jeep, add flag.

[WAM_flag_0, WAM_jeep_0] call BIS_fnc_attachToRelative;