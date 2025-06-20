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

