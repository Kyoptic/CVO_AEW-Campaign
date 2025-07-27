// Brief Players
titleText ["<t align = 'center' shadow = '2' color='#788DEB' size'2' font='RobotoCondensedBold' > DROMEDARY ACTUAL: </t><t color='#ffffff' size='1.3' font='RobotoCondensed' >This is DROMEDARY ACTUAL to any friendly units, our platoon has been struck by insurgent forces near COMMS DELTA and requires immediate assistance. We have casualties in need of urgent CASEVAC. Any Livonian UN forces, please respond!</t>", "PLAIN DOWN", 2, true, true]; //20 indicates how long message is up.

// Add a chatlog of the message in the text in case they don't have time to read it.
player createDiaryRecord ["ChatLog", "This is DROMEDARY ACTUAL to any friendly units, our platoon has been struck by insurgent forces near COMMS DELTA and requires immediate assistance. We have casualties in need of urgent CASEVAC. Any Livonian UN forces, please respond!"];

sleep 15;

titleText ["<t align = 'center' shadow = '2' color='#6D6D6D' size'2' font='RobotoCondensedBold' > Radio: </t><t color='#ffffff' size='1.3' font='RobotoCondensed' >**static**</t>", "PLAIN DOWN", 2, true, true]; //20 indicates how long message is up.

sleep 25;

titleText ["<t align = 'center' shadow = '2' color='#00e600' size'2' font='RobotoCondensedBold' > JULIET 29: </t><t color='#ffffff' size='1.3' font='RobotoCondensed' >Uhh, DROMEDARY this is JULIET 29 we read you. Standby for comms relay to HQ.</t>", "PLAIN DOWN", 2, true, true]; //20 indicates how long message is up.

player createDiaryRecord ["ChatLog", "Uhh, DROMEDARY this is JULIET 29 we read you. Standby for comms relay to HQ."];

sleep 20;

titleText ["<t align = 'center' shadow = '2' color='#00e600' size'2' font='RobotoCondensedBold' > JULIET 29: </t><t color='#ffffff' size='1.3' font='RobotoCondensed' >DROMEDARY this is JULIET 29, be advised, CAS is inbound to support you, rotary wing Exfil is en route. ETA 40 mikes, out.</t>", "PLAIN DOWN", 2, true, true]; //20 indicates how long message is up.

player createDiaryRecord ["ChatLog", "JULIET 29: DROMEDARY this is JULIET 29, be advised, CAS is inbound to support you, rotary wing Exfil is en route. ETA is approximately 40 mikes, out."];

[independent, "task1", ["Hold Comms Delta until evac arrives. The ETA is 40 minutes.", "Hold COMMS Delta", "cookiemarker"], [0,0,0], "ASSIGNED", 2, true] call BIS_fnc_taskCreate;

playmusic "LeadTrack01_lxWS";