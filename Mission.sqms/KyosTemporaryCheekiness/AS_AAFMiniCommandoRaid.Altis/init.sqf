// Modify default of which features are enabled or not.
FFPP_FFPunEnabled = true;
FFPP_FFPunTellInstigator = false;
FFPP_FFPunTellVictim = false;
FFPP_FFPunTellAdmin = true;

[flag1, pltcar] call BIS_fnc_attachToRelative;
[] execVM "antiflubber.sqf";

// Enable friendly fire logging for specific AI
//[VarName,true] call FFPP_fnc_punishment_FF_addEH;
