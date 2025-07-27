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
	MAIN COMMMS NET: SR 77.0<br/>
	PLT HQ SR: 70.0<br/>
	ALPHA SR: 60.0<br/>
	BRAVO SR: 50.0<br/>
	CHARLIE SR: 40.0<br/>"
]];

_player createDiaryRecord ["Diary", ["Additional","
	1 - SRs for SLs and TLs only.
	<br/><br/>
	2 - There are friendly troops already at the hospital. Further resupply can be requested. Secure an LZ and contact HQ.
	<br/><br/>
	3 - There is some resupply available around the hospital.
	<br/><br/>
	4 - If needed, rotary-wing CAS may be available for assistance.
	<br/><br/>"
]];

_player createDiaryRecord ["Diary", ["Execution","
	1 - Secure the Hôpital St Angelo and surrounding grounds.
	<br/><br/>
	2 - Establish a buffer zone to prevent enemy AA from threatening the evacuation by securing the town of Obregan.
	<br/><br/>
	3 - Hold Obregan and the hospital while the evacuation occurs. At least four MEDEVAC helicopters will be needed. Only one can use the landing pad at a time..
	<br/><br/>
	4 - Conduct an orderly withdrawal to Corazol once the evacuation is complete.
	<br/><br/>"
]];

_player createDiaryRecord ["Diary", ["Mission","
	The St.Angelo Hospital, south of Obregan, accepted most of the military and civilian casualties from the during the initial hours of the invasion, but the blockage of the MSR means it is now impossible to evacuate these casualties by road. We must air-lift these casualties to safety. To do this, your platoon is being deployed to secure the hospital and establish a perimeter for long enough to evacuate casualties from the hospital."
]];

_player createDiaryRecord ["Diary", ["Situation","
	The anti-monarchist People’s Union of Sahrani (Unión Populista de Sahrani - UPS) has long opposed the Monarchy of Sahrani that has reigned since its founding in the late 1800s. Until recently, the archipelago of Sahrani has been a North-Atlantic backwater of little interest, known mostly for its abundant fisheries and as a convenient location for refueling aircraft and ships. 
	<br/><br/>
	Increasing pressure for government reform by the UPS has been supported by the large and powerful Socialist Union of Kolgujev, with frequent calls for a popular vote for parliamentary reform being rejected by the Sahrani government and monarchy. Consequently, the UPS movement for reform has led to armed protest and assassination attempts on the royal family.
	<br/><br/>
	Earlier today, the UPS activated dozens of armed insurgent cells across the eastern half of Sahrani, aiming to realise its populist uprising in one swift and bloody movement. Simultaneously, a Kolgujev naval task force has disgorged amphibious troops and made landings in the North and East of the island. As civilians evacuated towards the western half of the island, UPS insurgents detonated a bomb on board a bus, causing a multi-car collision and blocking Sahrani’s only MSR.
	<br/><br/>"
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