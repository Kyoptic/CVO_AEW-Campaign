// Modify default of which features are enabled or not.
FFPP_FFPunEnabled = true;
FFPP_FFPunTellInstigator = false;
FFPP_FFPunTellVictim = false;
FFPP_FFPunTellAdmin = true;

[] execVM "antiflubber.sqf";

// Enable friendly fire logging for specific AI
//[VarName,true] call FFPP_fnc_punishment_FF_addEH;

[turret, van] call BIS_fnc_attachToRelative;

s1 allowdamage false;
s2 allowdamage false;

// m1 addItemToBackpack "optic_NVS"; 
// m2 addItemToBackpack "optic_NVS";