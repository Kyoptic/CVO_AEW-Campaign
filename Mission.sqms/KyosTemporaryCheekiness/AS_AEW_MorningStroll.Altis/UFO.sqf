sleep 30;

//playsound "Beep_Target";
playsound "UFO";

titleText ["<t align = 'center' shadow = '2' color='#788DEB' size'2' font='RobotoCondensedBold' > Coy HQ: </t><t color='#ffffff' size='1.3' font='RobotoCondensed' >Ground team, this is Company HQ. We've received intel from the air force that something is heading towards your AO. They can't get a fix on what it is but it's moving fast. They're scrambling some fighters now but keep your heads up and eyes peeled.</t>", "PLAIN DOWN", 2, true, true]; //20 indicates how long message is up.

// Add a chatlog of the message in the text in case they don't have time to read it.
player createDiaryRecord ["ChatLog", "Coy HQ: Ground team, this is HQ. We've been passed information by the air force that something is heading towards your AO. They can't get a fix on what it is. It's coming in and out of their radar. They're scrambling a fighter now. Keep your heads up and eyes peeled."];

sleep 30;

trigman setdamage 1;

sleep 90;


//playsound "Beep_Target";
playsound "WTF";

titleText ["<t align = 'center' shadow = '2' color='#788DEB' size'2' font='RobotoCondensedBold' > Coy HQ: </t><t color='#ffffff' size='1.3' font='RobotoCondensed' >Ground team, what the hell is going on down there!? We're getting reports of cluster munitions! Come in!? What have you done? High command is getting on my ass. I'm pulling you out, right now! Mark me an LZ, ASAP, over!</t>", "PLAIN DOWN", 2, true, true]; //20 indicates how long message is up.

//[independent, "task1", ["Hold Comms Delta until evac arrives. The ETA is 40 minutes.", "Hold COMMS Delta", "cookiemarker"], [0,0,0], "ASSIGNED", 2, true] call BIS_fnc_taskCreate;

//playmusic "LeadTrack01_lxWS";