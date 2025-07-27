// Modify default of which features are enabled or not.
FFPP_FFPunEnabled = true;
FFPP_FFPunTellInstigator = false;
FFPP_FFPunTellVictim = false;
FFPP_FFPunTellAdmin = true;

// Enable friendly fire logging for specific AI
//[VarName,true] call FFPP_fnc_punishment_FF_addEH;

// Enables antiFlubber script for all players
[] call AET_fnc_antiFlubber;


[b1, model] call BIS_fnc_attachToRelative;
[b2, model] call BIS_fnc_attachToRelative;
[b3, model] call BIS_fnc_attachToRelative;
[b4, model] call BIS_fnc_attachToRelative;
[b5, model] call BIS_fnc_attachToRelative;
[b6, model] call BIS_fnc_attachToRelative;
[b7, model] call BIS_fnc_attachToRelative;
[b8, model] call BIS_fnc_attachToRelative;
[b9, model] call BIS_fnc_attachToRelative;
[b10, model] call BIS_fnc_attachToRelative;
[b11, model] call BIS_fnc_attachToRelative;
[b12, model] call BIS_fnc_attachToRelative;
[b13, model] call BIS_fnc_attachToRelative;

b1 setobjectScale 0.1;
b2 setobjectScale 0.1;
b3 setobjectScale 0.1;

model setPos (getPos modelPos);