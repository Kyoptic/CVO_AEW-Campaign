// Modify default of which features are enabled or not.
FFPP_FFPunEnabled = true;
FFPP_FFPunTellInstigator = false;
FFPP_FFPunTellVictim = false;
FFPP_FFPunTellAdmin = true;

[] execVM "antiflubber.sqf";

"picket1" setMarkerAlpha 0; "picket2" setMarkerAlpha 0;

[a1, jammer] call BIS_fnc_attachToRelative;
[a2, jammer] call BIS_fnc_attachToRelative;
[a3, jammer] call BIS_fnc_attachToRelative;
[a4, jammer] call BIS_fnc_attachToRelative;

[obj_1, jeep] call BIS_fnc_attachToRelative;
[obj_2, jeep] call BIS_fnc_attachToRelative;
[obj_3, jeep] call BIS_fnc_attachToRelative;
[obj_4, jeep] call BIS_fnc_attachToRelative;
[obj_5, jeep] call BIS_fnc_attachToRelative;
[obj_6, jeep] call BIS_fnc_attachToRelative;
[obj_7, jeep] call BIS_fnc_attachToRelative;

// Enable friendly fire logging for specific AI
//[VarName,true] call FFPP_fnc_punishment_FF_addEH;

// [turret, van] call BIS_fnc_attachToRelative;

// s1 allowdamage false;
// s2 allowdamage false;


// // Previously had NV scopes added to marksman backpack this way, but removed it as they can be added via ACE arsenal.
// m1 addItemToBackpack "optic_NVS"; 
// m2 addItemToBackpack "optic_NVS";
// m3 addItemToBackpack "optic_NVS";

