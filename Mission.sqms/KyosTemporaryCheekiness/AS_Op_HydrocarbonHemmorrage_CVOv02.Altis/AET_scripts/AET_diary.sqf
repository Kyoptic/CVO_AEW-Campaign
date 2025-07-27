// params: _player, _jip

//Credits

_player createDiaryRecord ["Diary", ["Credits","
Thanks and credits goes to: <br/><br/>
Frost'sBite from the Antistasi Dev Team for the friendly fire script https://github.com/official-antistasi-community/A3-FF-Punishment-Phantom<br/><br/>
Hakon from the Antistasi Dev Team for all the functions/scripts and help he provided the event team with.<br/><br/>
SkippieDippie from the Antistasi Event Team and 24th CHORNI VORON for all the functions/script and help he provided the event team with.<br/><br/>
Dmitry Yuri for the antiFlubber script.<br> <br/>
All the creator's of the mods that were used in this mission.<br/><br/>
Anyone who have contributed to the creation of this mission.<br/><br/>
"]]; 

//Briefing [All sides]

_player createDiaryRecord ["Diary", ["Signals","
	CELL NET: SR 77.0<br/>"
]];

// _player createDiaryRecord ["Diary", ["Additional","
	// 1- There is a Static .50 cal, a MANPAD launcher, a commando mortar and an ATGM at the heavy weapons cache. We did not want to risk them in town, but they may provide much-needed long range firepower when you retreat. Use them to give the AAF a bloody nose by taking out something expensive.<br/><br/>
	// 2- While you may use the vehicles at the staging point, it is recommended that you abandon them after the firefight. The AAF’s ROE is very lax, and these will present big targets that will be easy for them to find and kill with a missile from a CAS asset.<br/><br/>
	// <br/><br/>"
// ]];

_player createDiaryRecord ["Diary", ["Execution","
	1 - Infiltrate the valley under cover of the morning fog.<br/><br/>
	2 - Place charges on the fuel tanks at the marked objective.<br/><br/>
	3 - Escape northwards, where the FIA have established an ambush and undercover exfil vehicle.<br/><br/>"
]];

_player createDiaryRecord ["Diary", ["Mission","
	The 24th Chorni Voron has been contracted by an undisclosed third party to support FIA operations on Altis. A valuable fuel depot has been located in a nearby valley. The valley is covered by several watchposts and is outside of the capabilities of the FIA Guerillas to strike. We have been paid a large sum to solve this problem for them. The destruction of this fuel silo will starve AAF QRF Forces of fuel, allowing the guerillas greater tactical freedom in the future.<br/><br/>"
]];

_player createDiaryRecord ["Diary", ["Situation","
	The FIA have long struggled in their guerilla actions against the AAF. Earlier this week, an unknown benefactor has promised a large sum of money to the 24th to lend their expertise for a challenging operation outside of FIA capabilities.<br/><br/>A fuel depot in a nearby valley provides a large proportion of the aviation fuel for the AAF on Altis. This depot is well protected, but under cover of darkness and sea fog we believe we can infiltrate the area and destroy it. If we do a good job, perhaps there will be more jobs in need of doing on this sunny island..."
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