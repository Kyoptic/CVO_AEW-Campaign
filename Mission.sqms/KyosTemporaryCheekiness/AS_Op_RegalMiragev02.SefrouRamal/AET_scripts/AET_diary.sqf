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
	Plt Net: LR 77.0<br/>
	PLT HQ Intercomms:	SR 50.0<br/>
	ALPHA Intercomms: 	SR 51.0<br/>
	BRAVO Intercomms: 	SR 52.0<br/>
	CHARLIE Intercomms: SR 53.0<br/>
	VICTOR 1 IC:        SR 54.0<br/>
	VICTOR 2 IC:        SR 55.0<br/>
	ROMEO 1 IC          SR 56.0<br/>"
]];

_player createDiaryRecord ["Diary", ["Additional","
	50 Rnd Mags are ONLY for the AR.<br/><br/>
	Driver and Gunners in A/B may have to dismount to fight on occasion. They will join SL’s fireteam and the gunner should act as TL for a new fireteam composed of Blue team’s Medic and AR, Driver and Gunner. Backpacks for them are available in the APC.<br/><br/>
	Alpha and Bravo’s vehicles have 2x NLAWs which can be distributed as the SL wishes (recommended to ARs or dismounted Driver/Gunner)<br/><br/>
	There is not much GM6 Lynx ammo available (50 Rnds total). A backup Vektor R5 is available in the Fennek MRAP.<br/><br/>
	Refuel, Repair, Rearm can be done by the Plt Mechanic from their Zamak and equipment boxes.<br/><br/>
	All of the armoured vehicles can use a laser designator in the commander seat to mark a target. VICTOR-1 and VICTOR-2 can then fire top-down laser guided ATGMs at targets from behind cover. Use this feature to target dangerous enemies or entrenched positions safely.
<br/><br/>
	<br/><br/>"
]];

_player createDiaryRecord ["Diary", ["Execution","
	PRIMARY OBJECTIVE<br/>
	1 - (Optional) Secure the hamlet of Bir Tiguisit. It is reported to be occupied by irregular forces of unknown allegiance.<br/>
	2 - Ambush and destroy the approaching SFIA vehicle convoy.<br/>
	3 - Secure the southern office complex of the Cobalt Mine.<br/>
	4 - Secure the Rail Transfer Depot.<br/>"
]];

_player createDiaryRecord ["Diary", ["Mission","
	We have recently lost control of an essential Cobalt extraction facility. Your mechanized platoon is tasked to ambush an approaching reinforcement convoy of vehicles of the Marawi Freedom and Independence Army (SFIA), then recapture the Offices and Rail Transfer Depot of the Cobalt extraction facility.<br/>"
]];

_player createDiaryRecord ["Diary", ["Situation","
	This morning at 10:15 we've lost contact with outpost Red Star after a heavy assault from rebel forces supported by CSAT.<br/><br/>
	We've also detected that rebel forces moved into the town of Kavala and started barricading it.<br/><br/>
	Etc...<br/><br/>"
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