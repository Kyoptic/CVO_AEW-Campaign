// Modify default of which features are enabled or not.
FFPP_FFPunEnabled = true;
FFPP_FFPunTellInstigator = false;
FFPP_FFPunTellVictim = false;
FFPP_FFPunTellAdmin = true;

[] execVM "antiflubber.sqf";

//execVM "cvo_arsenal_define.sqf";

// Enable friendly fire logging for specific AI
//[VarName,true] call FFPP_fnc_punishment_FF_addEH;

// [trunk, true, [0,0,1], 0] call ace_dragging_fnc_setCarryable;
