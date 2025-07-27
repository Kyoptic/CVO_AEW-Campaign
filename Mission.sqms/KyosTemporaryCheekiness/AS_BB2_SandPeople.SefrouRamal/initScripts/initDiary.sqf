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
	Plt Net: LR 77.0<br/>
	PLT HQ Intercomms:	SR 50.0<br/>
	ALPHA Intercomms: 	SR 51.0<br/>
	BRAVO Intercomms: 	SR 52.0<br/>
	CHARLIE Intercomms: SR 53.0<br/>"
]];

_player createDiaryRecord ["Diary", ["Execution","
	PRIMARY OBJECTIVE<br/>
	1- Reach COMMS DELTA by dawn.<br/>
	2- Hold COMMS DELTA until friendly CASEVAC arrives for third squad’s casualties.<br/>
	3- Secure a safe LZ and RTB.<br/><br/>

	SECONDARY OBJECTIVE<br/>
	1- Avoid the old minefield.<br/>
	2- Avoid civilian casualties at all costs. Minimize collateral damage wherever possible.<br/>"
]];

_player createDiaryRecord ["Diary", ["Additional","
	Time acceleration is a big part of this mission. The time acceleration is about 8x, so you have approximately 90 mins of real time until dawn. Reach COMMS DELTA by then!<br/><br/>"
]];

_player createDiaryRecord ["Diary", ["Mission","
	Our radios do not have the range to contact any nearby friendly units. We must reach a nearby radio tower, COMMS DELTA, and contact HQ to receive CASEVAC and close air support. Fourth squad will remain with their casualties inside the ceasefire zone, but PLT HQ, ALPHA, BRAVO and CHARLIE must make a break for it.<br/>"
]];

_player createDiaryRecord ["Diary", ["Situation","
	The UN Peacekeeping in Sefrou Ramal has struggled to keep control of the most remote areas of the Saharan desert. In these vast stretches of badlands, radio comms are spotty and units can easily be left stranded on stretches of road that are a 10 to 12 hours drive away from the closest friendly unit.
	<br/><br/>
	Earlier today, your medical convoy was ambushed in just such a location. Having fought hard, most of the Platoon’s Fourth squad was injured or killed after their truck was hit by an IED. Having fought hard, and sunset rapidly approaching, the local Tura insurgents have agreed to a temporary ceasefire, they have given us until dawn to surrender our weapons and become POWs. For now, they have promised to respect all Red Crystal signallage and allow us to treat our casualties so long as we do not leave the area we are in.
	<br/><br/>
	We cannot allow ourselves to become POWs to the Tura insurgents. The shame on our fellow Livonians would be too great, and the losses to the UN peacekeeping deployment too severe."
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