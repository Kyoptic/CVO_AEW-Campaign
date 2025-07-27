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
	CHARLIE Intercomms: SR 53.0<br/>"
]];

_player createDiaryRecord ["Diary", ["Additional","
	1 - Dawn is coming soon. You will have a maximum of 2 hours of darkness. Make good use of it. (Time acceleration 2x)<br/><br/>
	2 -  Use the Commando Mortars as organic support by fire weapons within the squad. Take care as they do not have much ammo.<br/><br/>
	3 - Your Grenadiers carry an RPG-32 with one rocket. Use it as a disposable or find more ammo in enemy supplies.<br/><br/>
	4 - Expect enemy rotary wing CAS. Most of their helicopters do not have the avionics and optics to fight at night, but we expect a small number of them to have upgrades that will make them dangerous. Keep an eye out.<br/><br/>
	5 - Vehicle RRR is available from the crates/welder/fuel which should be loaded into the Mechanics vehicle.<br/><br/>
	6 - Stay away from the CIVILIAN marked area. We do not need to bring this war to our people unnecessarily.<br/><br/>"
]];

_player createDiaryRecord ["Diary", ["Execution","
	1 - Destroy the enemy transmitter towers at Comms Charlie<br/><br/>
	2 - (Optional) Secure the enemy base at Comms Charlie to locate intel and prevent reinforcements.<br/><br/>
	3 - Locate and destroy the fuel depot at the marked location.<br/><br/>
	4 - Conduct an MLRS strike on the airbase from POI XRAY or POI YANKEE. Expect the enemy to respond and attempt to find the MLRS launch. Shoot n’ scoot.<br/><br/>
	5 - Conduct a BDA then, if necessary, conduct further MLRS strikes.<br/><br/>
	6 - Withdraw SOUTH before the enemy can muster forces to pin you down and eliminate you.<br/><br/>"
]];

_player createDiaryRecord ["Diary", ["Mission","
	Your SF platoon is to infiltrate the enemy's lines overnight and  strike at the helicopter base. First, isolate the local separatist forces by neutralizing a nearby communications base. Next, locate and destroy a fuel silo we suspect is in the area. Finally, conduct MLRS strikes on the helicopter base. Conduct a Battle Damage Assessment (BDA) to ensure at least 50% of enemy helicopters are damaged or destroyed, then withdraw."
]];

_player createDiaryRecord ["Diary", ["Situation","
	The west African nation of Marawi survived as an independent nation state throughout the European colonial period, emerging from the 20th century as an economic powerhouse of the region. Enriched by trade in a number of rare mineral ores, the Marawi royal family sits at the head of a long-standing constitutional monarchy.<br/><br/>
	In 2029, after three years of record drought, much of West Africa is in a dire situation, and Marawi’s control of three key dams in the region has created friction between its increasingly CSAT-influenced neighbors. These neighbors have encouraged a series of border skirmishes and funded religiously motivated insurrectionist groups. Now, in 2031, a full blown civil war has erupted, with a loose coalition of CSAT backed factions engaging in open conflict with the Monarchist Loyalists.<br/><br/>
	A drone reconnaissance flight has identified a newly constructed Separatist helicopter base close to the frontline. If it is allowed to mature, this will be a significant hindrance to our operations in the open terrain of the desert.<br/><br/>"
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