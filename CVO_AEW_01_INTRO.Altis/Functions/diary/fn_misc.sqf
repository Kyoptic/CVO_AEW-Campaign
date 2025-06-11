/*
* Author: Zorn
* Function to add misc diary entries.
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
[
    _subject        
    ,_name
    ,_image         // Image inside the Entry. getMissionPath "\data\personalities.paa"
    ,_subtitle
    ,_text
    // ,_icon       // Image next to the entry Title (small flags for example)
    // ,_newName
    // ,_target
] call cvo_intel_fnc_setEntry;
*/

[
    "Misc"
    ,"Credits"
    ,"Thanks and credits goes to:"
    ,""
,"
- Dmitry Yuri from the Zeus Community for his antiFlubber script - smoke GL sticks (to kids)!<br/>
- All the creator's of the mods that were used in this mission.<br/>
- Anyone who have contributed to the creation of this mission.<br/>
"
] call cvo_intel_fnc_createDiaryEntry;

/*
[
    "Misc"
    ,""
    ,""
    ,""
,"
<br/>
"
] call cvo_intel_fnc_createDiaryEntry;
*/