// params: _player, _jip

//Credits

_player createDiaryRecord ["Diary", ["Credits","
Thanks and credits goes to: <br/>
Frost'sBite from the Antistasi Dev Team for the friendly fire script https://github.com/official-antistasi-community/A3-FF-Punishment-Phantom<br/>
Hakon from the Antistasi Dev Team for all the functions/scripts and help he provided the event team with.<br/>
All the creator's of the mods that were used in this mission.<br/>
Anyone who have contributed to the creation of this mission.<br/>
"]]; 

//Briefing [All sides]

_player createDiaryRecord ["Diary", ["Signals","
	Main Comms Net: LR 77.0<br/><br/>
	PLT HQ: SR 50.0<br/>
	ALPHA: SR 51.0<br/>
	BRAVO: SR 52.0<br/>
	CHARLIE: SR 53.0<br/>"
]];

_player createDiaryRecord ["Diary", ["Additional","
	1- Friendly Livonian park rangers are operating in your AO, assisting by conducting their own reconnaissance. They are armed with M14 rifles, but should be easily distinguishable by their High-Vis orange vests. Unfortunately our radios are incompatible.<br/><br/>
	2- SZAFIR 2-1 is a squad-sized element supporting your operations from the radio tower at Rodzanica. They are your primary link to Regional HQ  and can relay messages as required. Radio comms elsewhere in the AO are spotty.<br/><br/>
	3- We have had severe supply issues with our NVG’s batteries due to an urgent operational requirement for them at a NATO exercise ongoing elsewhere in Livonia. You will have to make do with flashlights and flares.<br/><br/>
	4- Marksmen carry additional ammo for rifles and ARs.  LAT soldiers carry 2 additional MAAWS rounds.<br/>"
]];

_player createDiaryRecord ["Diary", ["Execution","
	Starting at DMP Luna, maneuver your platoon as a single unit to maintain maximum cohesion. If you encounter armed unfriendly personnel, attempt to detain them. Engage only if fired upon. <br/><br/>

Sweep the marked area on the road to your east, report signs of suspicious activity to Szafir 2-1 so they can relay it to HQ. <br/><br/>

Movement plan to be determined by Plt CO.<br/>"
]];

_player createDiaryRecord ["Diary", ["Mission","
	Reconnoiter the marked area. Investigate any signs of force or evidence of activity by armed gangs or Novoruziyan agents within the AO. Report any activity you find. Maintain a strict ROE yellow (do not fire unless fired upon) to prevent unnecessary escalation. "
]];

_player createDiaryRecord ["Diary", ["Situation","
	After the breakdown of the Russian Federation in the early 2030s, the nation of Livonia now borders the nation of Novoruziya, a proudly militaristic nation that has made a great show of returning to its socialist ex-Soviet roots. Having joined CSAT, Novoruziya has made successful efforts to make its armed forces much smaller, but better equipped and more professional.<br/><br/>

	A porous and poorly secured border region between Livonia and Novoruziya has led to a massive increase in armed smuggling gangs and black market activity. Recently we’ve received reports of civilians being detained or turned back by road blocks west of the abandoned town of Kulno, close to the border with Novoruziya. We believe this is likely to be a brazen attempt by smuggling gangs to impose their will, but we cannot rule out the possibility that this is the action of “little green men” - Novoruziyan agents - conducting a form of Hybrid Warfare. Whatever the source, we cannot allow for this activity to continue.<br/>"
]];

// Briefing [For different sides]
// Copy the content of the "West" case to other cases as needed and comment/delete the previous briefing code

/*

switch (side _player) do {

	case west:
	{
		_player createDiaryRecord ["Diary", ["Signals","
			Main Communication Net: LR 77.0<br/>
			Alpha Intercoms: SR 70.0<br/>
			Etc...<br/>"
		]];

		_player createDiaryRecord ["Diary", ["Execution","
			1- Move in into the outpost<br/>
			2- Hold the outpost until reinforcments arrive<br/>
			Etc...<br/>"
		]];

		_player createDiaryRecord ["Diary", ["Additional","
			1- There are still civilian population in the area<br/>
			2- There is active AAA around the outpost<br/>
			Etc...<br/>"
		]];

		_player createDiaryRecord ["Diary", ["Mission","
			We've lost contact with Red Star outpost north of Kavala, your mission is to move in and secure the outpost and wait for reinforcments to arrive, be aware that there is still active AAA that needs to be neutralized for reinforcments to move in.<br/>
			Once the outpost is secured, you are to returned to the FOB and clear a way for more reinforcments to arrive.<br/>
			Etc...<br/>"
		]];

		_player createDiaryRecord ["Diary", ["Situation","
			This morning at 10:15 we've lost contact with outpost Red Star after a heavy assault from rebel forces supported by CSAT.<br/>
			We've also detected that rebel forces moved into the town of Kavala and started barricading it.<br/>
			Etc...<br/>"
		]];
	};
	case east:
	{};
	case independent:
	{};
	case civilian:
	{};
};

*/