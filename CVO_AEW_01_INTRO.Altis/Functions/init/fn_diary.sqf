/*
* Author: Stolen from AET, reworked by Zorn.
* Function to add default Diary Entries.
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

params [["_player", player, [objNull]]];

_player createDiaryRecord ["Diary", ["Credits","
<font size=12 face='EtelkaMonospacePro'>
Thanks and credits goes to: <br/>
Dmitry Yuri from the Zeus Community for his antiFlubber script - smoke GL sticks (to kids)!<br/>
All the creator's of the mods that were used in this mission.<br/>
Anyone who have contributed to the creation of this mission.<br/></font>
"]]; 

_player createDiaryRecord ["Diary", ["Additional","
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
Additional Information
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>
<br/>  1. ***Insert additional information here.***
<br/>  2. ***Insert additional information here.***
</font>
"]];


_player createDiaryRecord ["Diary", ["Administration","
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
Current CVO Contract Details
</font><br/>
<font size=11 face='EtelkaMonospacePro'>
*** Insert information current CVO deployment. ***
</font><br/><br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
ADMINISTRATION
</font><br/>
<font size=11 face='EtelkaMonospacePro'>
*** Insert administrative information. ***
</font><br/><br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
LOGISTICS
</font><br/>
<font size=11 face='EtelkaMonospacePro'>
*** Insert logistical information. ***
</font><br/><br/>
"
]];


_player createDiaryRecord ["Diary", ["Execution","
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
COMMANDER'S INTENT
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>
*** Insert very short summary of plan here.***
</font>
<br/>
<br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
MOVEMENT PLAN
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>
*** Insert movement instructions here..***
</font>
<br/>
<br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
FIRE SUPPORT PLAN
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>
*** Insert fire support instructions here.***
</font>
<br/>
<br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
SPECIAL TASKS
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>
*** Insert instructions for specific units here.***
</font>
<br/>

"
]];

_player createDiaryRecord ["Diary", ["Mission","
<font size=11 face='EtelkaMonospacePro'>
*** Insert general information about the tasking here.***
</font>
<br/>
<br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
PRIMARY OBJECTIVES
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>
*** Insert required Mission objectives here.***
</font>
<br/>
<br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
SECONDARY OBJECTIVES
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>
*** Insert optional Mission objectives here.***
</font>
<br/>
"
]];

_player createDiaryRecord ["Diary", ["Situation","
<font size=11 face='EtelkaMonospacePro'>
The 24th CVO is being deployed as a subcontractor to Myrmidon Inc, a PMC operating on Altis during a period of intense strife. <br/><br/>

After the collapse of the old AAF-led military junta following the East Wind incident, Altis has suffered several years of turmoil. Amidst a delicate ceasefire, NATO and CSAT forces have slowly withdrawn from the island under the watchful eye of the United Nations.<br/><br/>

Without a centrally authorised government, civilians and FIA cells on Altis have formed local - legally armed - militias. Some of these operate as local cooperatives, helping others in times of need, while others operate as little more than protection rackets and criminal gangs. Gradually, with the help of Greece and other western aligned powers, the old FIA leader Nikos has been elected president of a provisional government, forming the Second Altian Republic.<br/><br/>

This nascent Altian Republic is still finding its feet, however, and amidst reports of a large ex-AAF weapons cache going missing it has formally requested an armed contingent of Greek forces ('Task Force NIKE') to be present on Altis while it begins to train a New Altis Army. This move, deemed necessary by the government, has been widly unpopular, rocketing the popularity of the opposing political party 'Agón' ('The Struggle') as it acuses Nikos' government of selling off the sovereignty of Altis for corporate profits.<br/><br/>

As the Second Altis Republic begins to train its own armed forces, the New Altis Army, it fills gaps in its capabilities through the skills of Myrmidon Inc, a private military company largely comprised of ex Veterans of NATO from the east wind conflict. Experienced in counterinsurgency, they have recently discovered a conspicuous gap in their EOD skills. A gap the 24th Chorni Voron has been contracted to fill...

</font>
<br/>
<br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
ENEMY FORCES
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>
Rogue Militia<br/>

<br/><br/>
Agón Insurgents<br/>
<br/><br/>

AAF Loyalists<br/>
There are rumours that a hardcore group of ex-AAF veterans still hold out, hoping to one day bring Arkanteros back into power.
<br/><br/>
</font>
<br/>
<br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
FRIENDLY FORCES
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>

MYRMIDON PMC<br/>
Myrmidon PMC is comprised primarily of NATO veterans of the war on Altis

NAA - NEW ALTIS ARMY<br/>
The New Altis Army has 

UNITOFIAAS - UNITED NATIONS TRUCE OBSERVATION FORCE IN ALTIS AND STRATIS <br/>

HAF - HELLENIC ARMED FORCES<br/>

</font>
<br/>
"
]];

// Remove Unused Channels
_player createDiaryRecord ["Diary", ["COMMS PLAN","
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
Command Net: AN/PRC-148
</font>
<font size=11 face='EtelkaMonospacePro'>
<br/> Group 01 Channel 1: Ground Command
<br/> Group 01 Channel 8: JTAC NET
<br/> Group 01 Channel 9: AIR NET
</font>
<br/>
<br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
Intra Squad Nets: AN/PRC-343 PRR
</font>
<font size=11 face='EtelkaMonospacePro'>
<br/> Block 1 Channel  1: 1-1 - Infantry
<br/> Block 1 Channel  2: 1-2 - Infantry
<br/> Block 1 Channel  3: 1-3 - Infantry
<br/> Block 1 Channel  4: 1-4 - Infantry
<br/> Block 1 Channel  5: 1-5 - Recon
<br/> Block 1 Channel  6: 1-6 - Platoon Command
<br/> Block 1 Channel  7: 1-7 - Support
<br/> Block 1 Channel  8: 1-8 - GRANIT - Fire Support
<br/> Block 1 Channel  9: 1-9 - KODIAK - Air Transport
<br/> Block 1 Channel 10: 1-0 - Company Command
</font>
"
]];
