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
] call cvo_diary_fnc_setEntry;

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
    ,"While many of the militias that have formed on Altis are effectively local cooperatives of volunteers who do their best to protect their communities and livelihoods, some militas have found that guns and violence can go a long way to making you very rich. These have been seen to operate as little more than gangs or protection rackets against the local population, and do not hesitate to use violence to get what they want: food, fuel, ammo or cash."           // _text
    ,""
    // ,_newName
    // ,_target
] call cvo_diary_fnc_setEntry;

[
    _emyForces_DisplayName        
    ,"AAF Loyalists"
    ,""           // getMissionPath "\data\personalities.paa"
    ,"Altis Armed Forces Loyalists"           // _subtitle
    ,"There are rumours that a hardcore group of ex-AAF veterans still hold out, hoping to one day bring Arkanteros back into power. We should investigate these if we find any evidence of them."           // _text
    ,""
    // ,_newName
    // ,_target
] call cvo_diary_fnc_setEntry;

[
    _emyForces_DisplayName        
    ,"Agón Insurgents"
    ,""           // getMissionPath "\data\personalities.paa"
    ,""           // _subtitle
    ,"Some supporters of Agón have resorted to more than just protest and political condemnation of Nikos' Second Altis Republic. These extremists have taken up arms against the NAA in a nascent insurgency. They can often be identified by the red shemaghs they wear in affiliation with Agón protestors."           // _text
    ,""
    // ,_newName
    // ,_target
] call cvo_diary_fnc_setEntry;



// ######### "ALLIED FORCES"        
private _alliedForces_DisplayName = "Allied Forces";

[
    _alliedForces_DisplayName        
    ,"HAF"
    ,""           // getMissionPath "\data\personalities.paa"
    ,"HELLENIC ARMED FORCES"           // _subtitle
    ,"The New Altis Army (NAA) is still finding its footing. With most of the old AAF barred from serving in the NAA"           // _text
    ,""           // Icon (small Flag for examlpe)
    // ,_newName
    // ,_target
] call cvo_diary_fnc_setEntry;


[
    _alliedForces_DisplayName        
    ,"UNITOFIAAS"
    ,""           // getMissionPath "\data\personalities.paa"
    ,"United Nations Truce Observation Forces In Altis And Stratis"           // _subtitle
    ,"The New Altis Army has ... TODO"           // _text
    ,""           // Icon (small Flag for examlpe)
    // ,_newName
    // ,_target
] call cvo_diary_fnc_setEntry;


[
    _alliedForces_DisplayName        
    ,"NAA"
    ,""           // getMissionPath "\data\personalities.paa"
    ,"New Altis Army"           // _subtitle
    ,"The New Altis Army are the nascent armed forces of Nikos' Second Altian Republic. After the disbanding of the AAF and barring of most of them from serving in the armed forces."           // _text
    ,""           // Icon (small Flag for examlpe)
    // ,_newName
    // ,_target
] call cvo_diary_fnc_setEntry;

[
    _alliedForces_DisplayName        
    ,"Myrmidon PMC"
    ,""           // getMissionPath "\data\personalities.paa"
    ,"Your employers"           // _subtitle
    ,"Myrmidon PMC is comprised primarily of NATO veterans of the war on Altis. They hold contracts with Nikos' Second Altis Republic and IDAP to conduct peacekeeping, protection, EOD and VIP escort missions across the island. As veterans of the war on Altis, many Myrmidones speak the local language and know the areas they patrol. They often have contacts within local militias who were ex-FIA and, as a separate entity to the government, the Myrmidones can therefore often gain access to areas that local militias have closed off to the NAA. Recently, noting a shortfall in their EOD capabilities, they have subcontracted the 24th Chorni Voron to bolster their ranks."           // _text
    ,""           // Icon (small Flag for examlpe)
    // ,_newName
    // ,_target
] call cvo_diary_fnc_setEntry;
