// Cinematic Fade-To-Black followed by Teleport, with infodumps, annotated:
// This was launched from a trigger with []execVM "ScriptNameHere.sqf"

//// Fade to black
//titleCut ["", "BLACK", 6]; // The 6 is the duration of the fade
//uisleep 4;
//// Text on screen
//titletext ["<t size='2'> Later that evening, at RASMAN airbase. </t>","PLAIN",10, true, true];
//// TP Players to location (invisible helipad, variable name: RasmanBase)
private _currentTask = player call BIS_fnc_taskCurrent;
//[_currentTask, "SUCCEEDED"] remoteExec ["BIS_fnc_TaskSetState", -2];
[_currentTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
//T1 setTaskState "Succeeded";
uisleep 4;
//player setPosASL (getPosASL RasmanBase);

// Brief Players
titleText ["<t align = 'center' shadow = '2' color='#788DEB' size'2' font='RobotoCondensedBold' > SUNBURST: </t><t color='#ffffff' size='1.3' font='RobotoCondensed' > Good job securing that intel. The information suggests the Red Skulls have moved the asset to a valley east of Abdera. A chopper is inbound to take you there now.</t>", "PLAIN DOWN", 2, true, true]; //20 indicates how long message is up.

// Add a chatlog of the message in the text in case they don't have time to read it.
player createDiaryRecord ["ChatLog", "SUNBURST: Good job securing that intel. The information suggests the Red Skulls have moved the asset to a valley east of Abdera. A chopper flight is inbound to take you there now. "];

uisleep 3;

openMap true; [markerSize "NewAO", markerPos "NewAO", 5] call BIS_fnc_zoomOnArea; // Opens player's maps, and zooms them to a location, defined by an area marker called NewAO. You can either use a visible marker, or else use: NewAO setmarkerAlpha 0 in the init.sqf

// Change time
//skipTime 5; // 5 hours forwards. 
//uisleep 5;
// Setup markers for next AO
_markers = ["LZ1", "LZ2", "LZ3", "LZ5"]; // Array of markers
{_x setmarkerAlpha 1} forEach _markers; //Reveals the markers (which were made transparent with sermarkerAlpha 0 in the init.sqf)
"LZ4" setmarkerAlpha 0.5;

////Return vision to player
// "dynamicBlur" ppEffectEnable true;   
// "dynamicBlur" ppEffectAdjust [6];   
// "dynamicBlur" ppEffectCommit 0;     
// "dynamicBlur" ppEffectAdjust [0.0];  
// "dynamicBlur" ppEffectCommit 5;  
// titleCut ["", "BLACK IN", 5];



