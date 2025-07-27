// Fade to black
uisleep 5;
titleText ["<t align = 'center' shadow = '2' color='#788DEB' size'2' font='RobotoCondensedBold' > SUNBURST: </t><t color='#ffffff' size='1.3' font='RobotoCondensed' > 	Well done, Pegasus. Choppers are in bound for RTB.</t>", "PLAIN DOWN", -1, true, true];

uisleep 5;

titleCut ["", "BLACK", 6];
uisleep 4;
titletext ["<t size='2'> Later that evening, at RASMAN airbase. </t>","PLAIN",10, true, true];
// TP Players to base
uisleep 4;
player setPosASL (getPosASL RasmanBase);

// Change time
skipTime 5;
uisleep 5;
// Setup markers for next AO
_markers = ["H1", "H2", "H3", "H4", "H5", "H6", "H7", "H8", "H9", "H10", "H11"];
{_x setmarkerAlpha 1} forEach _markers;

// Return vision to player
"dynamicBlur" ppEffectEnable true;   
"dynamicBlur" ppEffectAdjust [6];   
"dynamicBlur" ppEffectCommit 0;     
"dynamicBlur" ppEffectAdjust [0.0];  
"dynamicBlur" ppEffectCommit 5;  
titleCut ["", "BLACK IN", 5];

// Brief Players
titleText ["<t align = 'center' shadow = '2' color='#788DEB' size'2' font='RobotoCondensedBold' > SUNBURST: </t><t color='#ffffff' size='1.3' font='RobotoCondensed' > Welcome home, Pegasus. Your next task will be to locate and secure our boy taken hostage. The intel you secured indicated he is in the Sakhe valley. You will be dropped off at LZ Apollo. Locate and secure our hostage. We suspect the enemy also has two weapons caches in that area. If you can, find them and destroy them.</t>", "PLAIN DOWN", 20, true, true];

player createDiaryRecord ["Diary", ["ChatLog", "SUNBURST: Welcome home, Pegasus. Your next task will be to locate and secure our boy taken hostage. The intel you secured indicated he is in the Sakhe valley. You will be dropped off at LZ Apollo. Locate and secure our hostage. We suspect the enemy also has two weapons caches in that area. If you can, find them and destroy them."]];

openMap true; [markerSize "NewAO", markerPos "NewAO", 5] call BIS_fnc_zoomOnArea;

uisleep 45;
titleText ["<t align = 'center' shadow = '2' color='#788DEB' size'2' font='RobotoCondensedBold' > SUNBURST: </t><t color='#ffffff' size='1.3' font='RobotoCondensed' > 	Once you are ready, get in the helicopters. Oh, and don't forget to get yourself checked up by the medical officer before you go. Make sure to bring flashbangs and explosive charges.</t>", "PLAIN DOWN", -1, true, true];

player createDiaryRecord ["Diary", ["ChatLog", "SUNBURST: Once you are ready, get in the helicopters. Oh, and don't forget to get yourself checked up by the medical officer before you go. Make sure to bring flashbangs and explosive charges."]];

