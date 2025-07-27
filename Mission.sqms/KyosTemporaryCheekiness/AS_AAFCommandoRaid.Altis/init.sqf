// Modify default of which features are enabled or not.
FFPP_FFPunEnabled = true;
FFPP_FFPunTellInstigator = false;
FFPP_FFPunTellVictim = false;
FFPP_FFPunTellAdmin = true;

[] execVM "antiflubber.sqf";

[ban, cmdvic] call BIS_fnc_attachToRelative;

_markers = ["H2", "M1_2", "M2_2", "M1_3", "M2_3", "QRF","H3_1","H3_2","H3_3","H3_4"];
{_x setmarkerAlpha 0} forEach _markers;

//ClosedLaptop hideObjectGlobal true;

// Enable friendly fire logging for specific AI
//[VarName,true] call FFPP_fnc_punishment_FF_addEH;
