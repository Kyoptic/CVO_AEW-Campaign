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
    "Situation"        
    ,"CVO Deployment"
    ,""         // Image inside the Entry. getMissionPath "\data\personalities.paa"
    ,""
    ,"
The 24th Chorni Vorn has been hired as a subcontractor to Myrmidones Inc, a PMC that was started by a group of ex-Altis war veterans, ostensibly to help in peacekeeping and counterinsurgency operations around the world.<br/><br/>As Altis has fallen into chaos once more, Myrmidones has gained valuable contracts from the New Altis Government and the United Nations.<br/><br/>With good knowledge of the land and the people, and the benefit of being a separate entity from the NAA, the Myrmidones can travel more freely across the island than even the NAA. Tasked with the supervision of food and aid distribution, they have found a gap in their EOD capabilities.<br/><br/>The 24th has been hired to fill that gap...
"
    // ,_icon       // Image next to the entry Title (small flags for example)
    // ,_newName
    // ,_target
] call cvo_intel_fnc_setEntry;

[
    "Situation"        
    ,"Background"
    ,""         // Image inside the Entry. getMissionPath "\data\personalities.paa"
    ,""
    ,"
After the collapse of the old AAF-led military junta following the East Wind incident, Altis has suffered several years of turmoil. Amidst a delicate ceasefire, NATO and CSAT forces have slowly withdrawn from the island under the watchful eye of the United Nations.<br/><br/>

Without a centrally authorised government, civilians and FIA cells on Altis have formed local - legally armed - militias. Some of these operate as local cooperatives, helping others in times of need, while others operate as little more than protection rackets and criminal gangs. Gradually, with the help of Greece and other western aligned powers, the old FIA leader Nikos has been elected president of a provisional government, forming the Second Altian Republic.<br/><br/>

This nascent Altian Republic is still finding its feet, however, and amidst reports of a large ex-AAF weapons cache going missing it has formally requested an armed contingent of Greek forces ('Task Force NIKE') to be present on Altis while it begins to train a New Altis Army. This move, deemed necessary by the government, has been widly unpopular, rocketing the popularity of the opposing political party 'Agón' ('The Struggle') as it acuses Nikos' government of selling off the sovereignty of Altis for corporate profits.<br/><br/>

As the Second Altis Republic begins to train its own armed forces, the New Altis Army, it fills gaps in its capabilities through the skills of Myrmidon Inc, a private military company largely comprised of ex Veterans of NATO from the east wind conflict. Experienced in counterinsurgency, they have recently discovered a conspicuous gap in their EOD skills. A gap the 24th Chorni Voron has been contracted to fill...
"
    // ,_icon       // Image next to the entry Title (small flags for example)
    // ,_newName
    // ,_target
] call cvo_intel_fnc_setEntry;

