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
    ,"\A3\Data_F_Enoch\Flags\flag_looters_co.paa"           // getMissionPath "\data\personalities.paa"
    ,""           // _subtitle
    ,"While many of the militias that have formed on Altis are effectively local cooperatives of volunteers who do their best to protect their communities and livelihoods, some militas have found that guns and violence can go a long way to making you very rich. These have been seen to operate as little more than gangs or protection rackets against the local population, and do not hesitate to use violence to get what they want: food, fuel, ammo or cash."           // _text
    ,"\A3\Data_F_Enoch\Flags\flag_looters_co.paa"
    // ,_newName
    // ,_target
] call cvo_diary_fnc_setEntry;

[
    _emyForces_DisplayName        
    ,"AAF Loyalists"
    ,"\A3\Data_F\Flags\flag_AAF_CO.paa"           // getMissionPath "\data\personalities.paa"
    ,"Altis Armed Forces Loyalists"           // _subtitle
    ,"There are rumours that a hardcore group of ex-AAF veterans still hold out somewhere (perhaps in exile), hoping to one day bring the old regime back into power. We should investigate these if we find any evidence of them."           // _text
    ,"\A3\Data_F\Flags\flag_AAF_CO.paa"
    // ,_newName
    // ,_target
] call cvo_diary_fnc_setEntry;

[
    _emyForces_DisplayName        
    ,"Agón Insurgents"
    ,"AEWP\AEWP\data\Flags\flag_ALSIR.paa"           // getMissionPath "\data\personalities.paa"
    ,""           // _subtitle
    ,"Some supporters of Agón have resorted to more than just protest and political condemnation of Nikos' Second Altis Republic. These extremists have taken up arms against the NAA in a nascent insurgency. They can often be identified by the red shemaghs they wear in affiliation with Agón protestors."           // _text
    ,"AEWP\AEWP\data\Flags\flag_ALSIR.paa"
    // ,_newName
    // ,_target
] call cvo_diary_fnc_setEntry;



// ######### "ALLIED FORCES"        
private _alliedForces_DisplayName = "Allied Forces";

[
    _alliedForces_DisplayName        
    ,"HAF"
    ,"AEWP\AEWP\data\Flags\flag_HAF.paa"           // getMissionPath "\data\personalities.paa"
    ,"HELLENIC ARMED FORCES"           // _subtitle
    ,"A contingent of the Hellenic Armed Forces was invited to Altis during the formation of the interim government - Task Force NIKE. This contingent, primarily comprised of a mechanised battalion, has been tasked by the Altian government with providing security across Altis and training the nascent NAA. Well equipped and highly professional, Task Force NIKE is the most significant miltiary force on Altis at this time."           // _text
    ,"AEWP\AEWP\data\Flags\flag_HAF.paa"           // Icon (small Flag for examlpe)
    // ,_newName
    // ,_target
] call cvo_diary_fnc_setEntry;


[
    _alliedForces_DisplayName        
    ,"UNTOFIAAS"
    ,"\A3\Data_F\Flags\Flag_uno_CO.paa"           // getMissionPath "\data\personalities.paa"
    ,"United Nations Truce Observation Forces In Altis And Stratis"           // _subtitle
    ,"A multinational force of United Nations troops originally tasked with monitoring the disarmament of the AAF and FIA during the period immediately following the East Wind incident. They are largely unarmed, though will occasionally deploy small numbers of armed peacekeepers to help to supervise IDAP food distributions. They are, however, under extraordinarily strict ROE and often unable to provide a meaningful response to hostile actions by insurgents. To get around this, they frequently hire Myrmidon PMC to help protect aid distribution in rural areas."           // _text
    ,"\A3\Data_F\Flags\Flag_uno_CO.paa"           // Icon (small Flag for examlpe)
    // ,_newName
    // ,_target
] call cvo_diary_fnc_setEntry;


[
    _alliedForces_DisplayName        
    ,"NAA"
    ,"AEWP\AEWP\data\Flags\flag_NAA.paa"           // getMissionPath "\data\personalities.paa"
    ,"New Altis Army"           // _subtitle
    ,"The New Altis Army are the nascent armed forces of Nikos' Second Altian Republic. After the disbanding of the AAF, the Second Altis Republic has been forced to carefully consider how to structure its armed forces. The NAA must build the trust of its people and break free from the assocations of its AAF predecessor. With AAF uniforms, vehicles and equipment having become commonplace across the island, it was often impossible for civilians and militia to know whether uniformed soldiers were genuinely part of the government or simply thugs taking advantage of their official appearance to force their way into communities and conduct violence without repurcussions. To this effect, the NAA have commissioned a new camouflage pattern, ALPAT, and is in the process of rolling it out across their armed forces.<br/><br/>
	The NAA are primarily a motorised force, operating primarily in MRAPs and trucks to maintain the key lines of communication across the island. Highly selective in their recruits, they are a small but disciplined force that are still learning the ropes."           // _text
    ,"AEWP\AEWP\data\Flags\flag_NAA.paa"           // Icon (small Flag for examlpe)
    // ,_newName
    // ,_target
] call cvo_diary_fnc_setEntry;

[
    _alliedForces_DisplayName        
    ,"Myrmidon PMC"
    ,"AEWP\AEWP\data\Flags\flag_MYR.paa"           // getMissionPath "\data\personalities.paa"
    ,"Your employers"           // _subtitle
    ,"Myrmidon PMC is comprised primarily of NATO veterans of the war on Altis. They hold contracts with Nikos' Second Altis Republic and IDAP to conduct peacekeeping, protection, EOD and VIP escort missions across the island. As veterans of the war on Altis, many Myrmidones speak the local language and know the areas they patrol. They often have contacts within local militias who were ex-FIA and, as a separate entity to the government, the Myrmidones can therefore often gain access to areas that local militias have closed off to the NAA. Recently, noting a shortfall in their EOD capabilities, they have subcontracted the 24th Chorni Voron to bolster their ranks."           // _text
    ,"AEWP\AEWP\data\Flags\flag_MYR.paa"           // Icon (small Flag for examlpe)
    // ,_newName
    // ,_target
] call cvo_diary_fnc_setEntry;
