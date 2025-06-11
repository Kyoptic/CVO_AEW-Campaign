/*
* Author: Zorn
* Function to setup the ALLIED FORCES and ENEMY FORCES Tabs
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

[
    "Execution"        
    ,"Special Tasks"
    ,""         // Image inside the Entry. getMissionPath "\data\personalities.paa"
    ,""
    ,"
*** Insert instructions for specific units here.***
"
    // ,_icon       // Image next to the entry Title (small flags for example)
    // ,_newName
    // ,_target
] call cvo_intel_fnc_setEntry;

/*
[
    "Execution"        
    ,"FIRE SUPPORT PLAN"
    ,""         // Image inside the Entry. getMissionPath "\data\personalities.paa"
    ,""
    ,"
*** Insert fire support instructions here.***
"
    // ,_icon       // Image next to the entry Title (small flags for example)
    // ,_newName
    // ,_target
] call cvo_intel_fnc_setEntry;
*/

[
    "Execution"        
    ,"Movement Plan"
    ,""         // Image inside the Entry. getMissionPath "\data\personalities.paa"
    ,""
    ,"
*** Insert movement instructions here..***
"
    // ,_icon       // Image next to the entry Title (small flags for example)
    // ,_newName
    // ,_target
] call cvo_intel_fnc_setEntry;

[
    "Execution"        
    ,"Commanders Intend"
    ,""         // Image inside the Entry. getMissionPath "\data\personalities.paa"
    ,""
    ,"
Help rebuild Altis by fulfilling contracts for Myrmidones.<br/><br/>
Treat the Altians with respect and concern.<br/>
"
    // ,_icon       // Image next to the entry Title (small flags for example)
    // ,_newName
    // ,_target
] call cvo_intel_fnc_setEntry;