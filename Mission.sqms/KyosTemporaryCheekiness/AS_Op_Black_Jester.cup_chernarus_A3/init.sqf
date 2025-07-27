// Modify default of which features are enabled or not.
FFPP_FFPunEnabled = true;
FFPP_FFPunTellInstigator = false;
FFPP_FFPunTellVictim = false;
FFPP_FFPunTellAdmin = true;

[] execVM "antiflubber.sqf";

// Enable friendly fire logging for specific AI
//[VarName,true] call FFPP_fnc_punishment_FF_addEH;

//G_1

_targets = [t_1, t_2, t_3, t_4, t_5, t_6, t_7];
{G_1 reveal _x} forEach _targets;
{G_2 reveal _x} forEach _targets;
{G_3 reveal _x} forEach _targets;