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


// ######### "ENEMY FORCES"
private _emyForces_DisplayName = "Enemy Forces";
[
    _emyForces_DisplayName        
    ,"Rogue Militia"
    ,""           // getMissionPath "\data\personalities.paa"
    ,""           // _subtitle
    ,""           // _text
    ,""
    // ,_newName
    // ,_target
] call cvo_intel_fnc_setEntry;

[
    _emyForces_DisplayName        
    ,"AAF Loyalists"
    ,""           // getMissionPath "\data\personalities.paa"
    ,"Altis Armed Forces Loyalists"           // _subtitle
    ,"There are rumours that a hardcore group of ex-AAF veterans still hold out, hoping to one day bring Arkanteros back into power."           // _text
    ,""
    // ,_newName
    // ,_target
] call cvo_intel_fnc_setEntry;

[
    _emyForces_DisplayName        
    ,"Agón Insurgents"
    ,""           // getMissionPath "\data\personalities.paa"
    ,""           // _subtitle
    ,""           // _text
    ,""
    // ,_newName
    // ,_target
] call cvo_intel_fnc_setEntry;



// ######### "ALLIED FORCES"        
private _alliedForces_DisplayName = "Allied Forces";

[
    _alliedForces_DisplayName        
    ,"HAF"
    ,""           // getMissionPath "\data\personalities.paa"
    ,"HELLENIC ARMED FORCES"           // _subtitle
    ,"The New Altis Army has ... TODO"           // _text
    ,""           // Icon (small Flag for examlpe)
    // ,_newName
    // ,_target
] call cvo_intel_fnc_setEntry;


[
    _alliedForces_DisplayName        
    ,"UNITOFIAAS"
    ,""           // getMissionPath "\data\personalities.paa"
    ,"United Nations Truce Observation Forces In Altis Aad Stratis"           // _subtitle
    ,"The New Altis Army has ... TODO"           // _text
    ,""           // Icon (small Flag for examlpe)
    // ,_newName
    // ,_target
] call cvo_intel_fnc_setEntry;


[
    _alliedForces_DisplayName        
    ,"NAA"
    ,""           // getMissionPath "\data\personalities.paa"
    ,"New Altis Army"           // _subtitle
    ,"The New Altis Army has ... TODO"           // _text
    ,""           // Icon (small Flag for examlpe)
    // ,_newName
    // ,_target
] call cvo_intel_fnc_setEntry;

[
    _alliedForces_DisplayName        
    ,"Myrmidon PMC"
    ,""           // getMissionPath "\data\personalities.paa"
    ,""           // _subtitle
    ,"Myrmidon PMC is comprised primarily of NATO veterans of the war on Altis"           // _text
    ,""           // Icon (small Flag for examlpe)
    // ,_newName
    // ,_target
] call cvo_intel_fnc_setEntry;
