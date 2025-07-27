// Cinematic Fade-To-Black followed by Teleport, with infodumps, annotated:
// This was launched from a trigger with []execVM "ScriptNameHere.sqf"

//// Fade to black
//titleCut ["", "BLACK", 6]; // The 6 is the duration of the fade
//uisleep 4;
//// Text on screen
//titletext ["<t size='2'> Later that evening, at RASMAN airbase. </t>","PLAIN",10, true, true];
//// TP Players to location (invisible helipad, variable name: RasmanBase)
private _currentTask = player call BIS_fnc_taskCurrent;
[_currentTask, "Succeeded"] remoteExec ["setTaskState", -2];
//T1 setTaskState "Succeeded";
uisleep 4;
//player setPosASL (getPosASL RasmanBase);

// Brief Players
titleText ["<t align = 'center' shadow = '2' color='#788DEB' size'2' font='RobotoCondensedBold' > SUNBURST: </t><t color='#ffffff' size='1.3' font='RobotoCondensed' > Wolf, this is Sunburst, there she is, good find! Wait, be advised, we have unknown rotary wing contacts approaching rapidly from the north, their IFF transponders aren't replying. the ship's ROE states we cannot engage without a positive ID. This could be AAF coming in to snoop on the chaos down there, or worse... Maintain WEAPONS YELLOW on all unknown contacts, but defend yourself if you need to. Destroy that UGV quickly and get the hell out. Good luck, Sunburst out.</t>", "PLAIN DOWN", 2, true, true]; //20 indicates how long message is up.

// Add a chatlog of the message in the text in case they don't have time to read it.
player createDiaryRecord ["ChatLog", "SUNBURST: Wolf, this is Sunburst, there she is, good find! Wait, be advised, we have unknown rotary wing contacts approaching rapidly from the north, their IFF transponders aren't replying. ROE states we cannot engage without a positive ID. This could be AAF coming in to snoop on the chaos down there, or worse... Maintain WEAPONS YELLOW on all unknown contacts, but defend yourself if you need to. Destroy that UGV quickly and get the hell out. Good luck, Sunburst out."];

uisleep 1;

"Helimarker1" setmarkerAlpha 1;
"Helimarker2" setmarkerAlpha 1;
