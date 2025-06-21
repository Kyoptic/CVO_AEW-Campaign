/*
* Author: Zorn
* Function to setup the Command Subject
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
    "ORBAT"
    ,"Notes"
    ,""                     // subtitle
    ,""                     // Image
    ,"
EWAR Officer has access to the spectrum analyser, which may be used to identify units transmitting on radio.<br/><br/>
Medic is double trained as a Marksman, and has access to DMRs.<br/><br/>
2IC is also a trained linguist/interpreter. The island of Altis has many refugees. Not everyone speaks English.<br/><br/>
These smaller 6 man units are highly flexible and can easily be augmented by combining three or four people from another unit to form an 8, 9 or 10 man squad for extra firepower. Alternatively, they can be split off or reduced to a 4 man team while still maintaining much of their capabilities (e.g. 2IC, Medic, EOD, AT spec).<br/><br/>
"
] call cvo_diary_fnc_setEntry;

[
    "ORBAT"
    ,"Raven 1-3 - Infantry"
    ,""                     // subtitle
    ,""                     // Image
    ,"
1IC Squad Leader<br/>
    Medic (Cert. Marksman)<br/>
    Support Gunner (MG)<br/>
2IC Team Leader (Cert. Linguist)<br/>
    Anti-Tank Specialist<br/>
    Explosive Ordnance Disposal Specialist<br/>
"
] call cvo_diary_fnc_setEntry;
[
    "ORBAT"
    ,"Raven 1-2 - Infantry"
    ,""                     // subtitle
    ,""                     // Image
    ,"
1IC Squad Leader<br/>
    Medic (Cert. Marksman)<br/>
    Support Gunner (MG)<br/>
2IC Team Leader (Cert. Linguist)<br/>
    Anti-Tank Specialist<br/>
    Explosive Ordnance Disposal Specialist<br/>
"
] call cvo_diary_fnc_setEntry;
[
    "ORBAT"
    ,"Raven 1-1 - Infantry"
    ,""                     // subtitle
    ,""                     // Image
    ,"
1IC Squad Leader<br/>
    Medic (Cert. Marksman)<br/>
    Support Gunner (MG)<br/>
2IC Team Leader (Cert. Linguist)<br/>
    Anti-Tank Specialist<br/>
    Explosive Ordnance Disposal Specialist<br/>
"
] call cvo_diary_fnc_setEntry;

[
    "ORBAT"
    ,"Raven 1-6 - Platoon Command"
    ,""                     // subtitle
    ,""                     // Image
    ,"
CO  Platoon Leader<br/>
XO  Platoon Second In Command<br/>
    Doctor<br/>
    Electronic Warfare Officer<br/>
"
] call cvo_diary_fnc_setEntry;