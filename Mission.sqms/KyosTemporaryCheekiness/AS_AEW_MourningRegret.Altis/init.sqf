// Modify default of which features are enabled or not.
FFPP_FFPunEnabled = true;
FFPP_FFPunTellInstigator = false;
FFPP_FFPunTellVictim = false;
FFPP_FFPunTellAdmin = true;

[] execVM "antiflubber.sqf";

// "picket1" setMarkerAlpha 0; "picket2" setMarkerAlpha 0;

[FLAG1, WAMcar1] call BIS_fnc_attachToRelative;
[FLAG2, WAMcar2] call BIS_fnc_attachToRelative;

// Enable friendly fire logging for specific AI
//[VarName,true] call FFPP_fnc_punishment_FF_addEH;

// [turret, van] call BIS_fnc_attachToRelative;


[rb_1, true, [0, 2, 0], 45] call ace_dragging_fnc_setDraggable; 
[rb_2, true, [0, 2, 0], 45] call ace_dragging_fnc_setDraggable; 
[rb_3, true, [0, 2, 0], 45] call ace_dragging_fnc_setDraggable; 
[rb_4, true, [0, 2, 0], 45] call ace_dragging_fnc_setDraggable; 