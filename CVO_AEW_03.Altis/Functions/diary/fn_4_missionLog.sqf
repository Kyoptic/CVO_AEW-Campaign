/*
* Author: Zorn
* Function to setup the Mission Logs
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
] call cvo_diary_fnc_setEntry;

*/

// Important: New entries get inserted on top of the list.
// This means: In this file, you need to reverse the desired order. 


[
    "Mission Log"        
    ,"1 - Acta, Non Verba"
    ,""         // Image inside the Entry. getMissionPath "\data\personalities.paa"
    ,""
    ,"
The 24th Arrives on Altis and conducts some basic EOD work.
"
    // ,_icon       // Image next to the entry Title (small flags for example)
    // ,_newName
    // ,_target
] call cvo_diary_fnc_setEntry;
