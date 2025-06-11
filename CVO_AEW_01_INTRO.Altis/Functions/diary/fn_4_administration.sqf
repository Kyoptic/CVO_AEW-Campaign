/*
* Author: Zorn
* Function to setup the Administration Diary
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

// A. Administration – "Bad Guys & Bandages": Enemy Prisoners of War ("EPW") & Casualty evacuation ("Casevac") Plans
[
    "Administration"
    ,"Bad Guys & Bandages"
    ,""         // Image inside the Entry. getMissionPath "\data\personalities.paa"
    ,""
    ,"
  Enemy Prisoners of War (EPW)<br\>
To be established<br\>
<br\>
  Casualty evacuation (CASEVAC)<br\>
To be established<br\>
"
    // ,_icon       // Image next to the entry Title (small flags for example)
    // ,_newName
    // ,_target
] call cvo_intel_fnc_setEntry;



// B. Logistics – "Beans, Bullets, & Batteries": Food, Ammunition, Supply, Communications, Pyrotechnics, etc.

[
    "Logistics"
    ,"Beans, Bullets, & Batteries"
    ,""         // Image inside the Entry. getMissionPath "\data\personalities.paa"
    ,""
    ,"
  Food:<br\>
To be established<br\>
<br\>
  Ammunition:<br\>
To be established<br\>
<br\>
  Supply:<br\>
To be established<br\>
<br\>
Communications:<br\>
To be established<br\>
<br\>
Pyrotechnics:<br\>
To be established<br\>
<br\>
"
    // ,_icon       // Image next to the entry Title (small flags for example)
    // ,_newName
    // ,_target
] call cvo_intel_fnc_setEntry;
