// params: _player, _jip

//Credits

_player createDiaryRecord ["Diary", ["Credits","
Thanks and credits goes to: <br/><br/>
Frost'sBite from the Antistasi Dev Team for the friendly fire script https://github.com/official-antistasi-community/A3-FF-Punishment-Phantom<br/><br/>
Hakon from the Antistasi Dev Team for all the functions/scripts and help he provided the event team with.<br/><br/>
SkippieDippie from the Antistasi Event Team and 24th CHORNI VORON for all the functions/script and help he provided the event team with.<br/><br/>
Dmitry Yuri for the antiFlubber script.<br> <br/>
Zorn for big boom script. <br> <br/>
All the creator's of the mods that were used in this mission.<br/><br/>
Anyone who have contributed to the creation of this mission.<br/><br/>
"]]; 

//Briefing [All sides]

_player createDiaryRecord ["Diary", ["Signals","
	MAIN COMMMS NET: SR 77.0<br/>
	PLT HQ SR: 70.0<br/>
	ALPHA SR: 60.0<br/>
	BRAVO SR: 50.0<br/>
	ROMEO SR: 40.0<br/>"
]];

// _player createDiaryRecord ["Diary", ["Additional","
	// 1- There is a Static .50 cal, a MANPAD launcher, a commando mortar and an ATGM at the heavy weapons cache. We did not want to risk them in town, but they may provide much-needed long range firepower when you retreat. Use them to give the AAF a bloody nose by taking out something expensive.<br/><br/>
	// 2- While you may use the vehicles at the staging point, it is recommended that you abandon them after the firefight. The AAF’s ROE is very lax, and these will present big targets that will be easy for them to find and kill with a missile from a CAS asset.<br/><br/>
	// <br/><br/>"
// ]];

_player createDiaryRecord ["Diary", ["Execution","
	1 - Infiltrate the valley under cover of the morning fog.<br/><br/>
	2 - Place charges on the fuel tanks at the fuel depot.<br/><br/>
	3 - Destroy as many fuel trucks as possible.<br/><br/>
	3 - Escape northwards, where a local cell has established an ambush, and undercover exfil vehicles.<br/><br/>"
]];

_player createDiaryRecord ["Diary", ["Mission","
	Your platoon is armed with some of the best equipment we can muster. You have been inserted by boats to the coastline under cover of darkness and fog. Use the early morning fog to infiltrate the valley. Locate the fuel depot and conduct a rapid assault on it. Place charges and destroy as many fuel trucks as you can, then withdraw before the AAF can leverage its rotary wing assets to surround and destroy you. A local cell has setup an ambush north of your objective. Rendezvous with them for exfil via unmarked civilian vehicles."
]];

_player createDiaryRecord ["Diary", ["Situation","
	Our progress in liberating Altis has been consistently blocked by the AAF's ability to deploy helicopter based QRF on short notice. Time and time again we have been pushed back as their elite airborne troops encircle our forces, forcing our retreat or destruction. This must stop.<br/><br/>
	The AAF's helicopters are kept safe away from areas where we have influence, so we have been unable to attack them directly when they are on the ground. Equally, the AAF has decided to store most of their fuel in a depot in the hills south of Oreokastro. They have surrounded this depot with watch posts and patrols, and it is almost impossible to infiltrate or attack with our limited forces. Under just the right conditions, however, early morning sea fog creeps up this valley concealing everything within. Tonight is one such night, and we must seize this opportunity to knock out the AAF's fuel supplies, once and for all."
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