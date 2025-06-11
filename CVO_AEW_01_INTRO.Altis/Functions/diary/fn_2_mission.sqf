/*
* Author: Zorn
* Function to setup the Mission Tabs Tabs
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

// Important: New entries get inserted on top of the list.
// This means: In this file, you need to reverse the desired order. 

Help rebuild Altis by fulfilling contracts for Myrmidones.<br/><br/>
Treat the Altians with respect and concern.<br/>


[
    "Mission"        
    ,"SECONDARY OBJECTIVES"
    ,""         // Image inside the Entry. getMissionPath "\data\personalities.paa"
    ,""
    ,"
*** Insert optional Mission objectives here.***.<br/><br/>
"
    // ,_icon       // Image next to the entry Title (small flags for example)
    // ,_newName
    // ,_target
] call cvo_intel_fnc_setEntry;


[
    "Mission"        
    ,"PRIMARY OBJECTIVES"
    ,""         // Image inside the Entry. getMissionPath "\data\personalities.paa"
    ,""
    ,"
*** Insert required Mission objectives here.***<br/><br/>
"
    // ,_icon       // Image next to the entry Title (small flags for example)
    // ,_newName
    // ,_target
] call cvo_intel_fnc_setEntry;


[
    "Mission"        
    ,"General Information"
    ,""         // Image inside the Entry. getMissionPath "\data\personalities.paa"
    ,""
    ,"
"
    // ,_icon       // Image next to the entry Title (small flags for example)
    // ,_newName
    // ,_target
] call cvo_intel_fnc_setEntry;


