/*
* Author: Zorn
* Function to initialize the diary: "Personalities" Tab
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* ['something', player] call prefix_component_fnc_functionname
*
* Public: No
*/

/*
* Arguments:
*   0: _name            <STRING>    Name of the Person
*   1: _image           <STRING>    Image Path          Default: "DEFAULT"          Example: getMissionPath "\data\personalities.paa";
                                    - Alternative: "" to display nothing
*   2: _subtitle        <STRING>    Subtitle            Default: ""                 Example: "Head of Mission"
*   3: _text            <STRING>    Text                Default: ""                 Example: "He's a good boy. So goood. <br/> And I know who's a good boy..."
*   4: _icon            <STRING>    Image Path          Default: ""                 Example: "\A3\Data_F\Flags\Flag_AAF_CO.paa"
*   5: _newName         <STRING>    Update name         Default: ""                 Example: "Unkown Mean Guy" -> "Badboi Bob"
*   6: _subject         <STRING>    SubjectTitle        Default: "Personalities"    Example: "High Value Targets"
*   7: _target          <OBJECT>    Reciever of Entry   Default: player
*/

/*
[
    _name,
    image,
    subtitle,
    _text,
    _icon,
    _newName,
    _customSubject,
    _target
] call cvo_diary_fnc_setPersonality;
*/

[
    "'Spike' Gillian",
    getMissionPath "\data\img_people\spike.jpg", // default Image - use getMissionPath "/folder/file.jpg" for image from the mission folder - idk if paa is required or jpg works here.
    "Senior Operations Lead<br/>Myrmidones Altis Branch",
    "Mr Gillian has had a long career in the British armed forces, serving for over 20 years in the Royal Marines before his deployment to Altis under the NATO banner. On the cusp of retirement from the military, a fellow ex-Altis war veteran reached out to him with a proposal - leave the Marines, and join the Myrmidones. Now, a year later, Mr Gillian is a senior operations lead on Altis, delegating tasks to various Myrmidon units in the centre of the island.",
    "AEWP\AEWP\data\Flags\flag_MYR.paa"  // icon
] call cvo_diary_fnc_setPersonality;

[
    "Sgt 'Mic' Deacon",
    getMissionPath "\data\img_people\micdeacon.jpg", // default Image - use getMissionPath "/folder/file.jpg" for image from the mission folder - idk if paa is required or jpg works here.
    "IDAP Camp Protection, Infestiona<br/>Myrmidones Altis Branch",
    "Myrmidon NCO in charge of defence of IDAP camp south of Infestiona.",
    "AEWP\AEWP\data\Flags\flag_MYR.paa"  // icon
] call cvo_diary_fnc_setPersonality;

[
    "'Aris'",
    "", // default Image - use getMissionPath "/folder/file.jpg" for image from the mission folder - idk if paa is required or jpg works here.
    "Civilian Contact / Lone Hunter",
"
Spotted during a routine patrol by the 24th on the route between Galati and Athira. We were doing a demining run at an old warehouse when one of the guys noticed someone watching us from a nearby treeline — quiet, not moving. Would've stayed hidden if our perimeter team hadn't picked him up.
<br/><br/>
He called himself 'Aris'. Said he'd been camping out in an abandoned building nearby for a couple nights. Hard to say how long he'd actually been in the area.
<br/><br/>
Once the shooting started (some local group started harassing the patrol), Aris took the opportunity to ghost. Slipped out during the chaos, packed up his gear, and moved on. Left nothing behind but some bootprints and cold ash.
<br/><br/>
He was carrying what looked like a civilian hunting rifle, dressed in beat-up hunter's gear and a boonie hat. No photos, no recordings. No ID, no real details — just the name. Firefight kept us busy in that moment.
<br/><br/>
Last seen heading up the road toward Galati. Hasn't turned up since.
<br/><br/>
Note:
Didn't seem hostile. Smart, careful, good at staying unnoticed. Could be ex-something, or just a local who knows how to move. Worth keeping an eye out.
"
] call cvo_diary_fnc_setPersonality;

