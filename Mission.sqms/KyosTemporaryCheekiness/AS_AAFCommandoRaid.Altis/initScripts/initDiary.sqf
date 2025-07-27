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
	HQ Comms Net: LR 77.0<br/>
	JTAC Support Net: LR 76.0 <br/>
	PLT HQ:  SR 50.0<br/>
	ALPHA:   SR 51.0<br/>
	BRAVO:   SR 52.0<br/>
	CHARLIE: SR 53.0<br/>"
]];

_player createDiaryRecord ["Diary", ["Execution","
	1- Secure Transmission Post ORACLE (“Tx Oracle”). Search the location for intel, then destroy any transmitters/commo equipment you find.<br/>
	2- Locate and secure the FIA base in the marked zone.<br/>
	3- (Optional) Destroy FIA targets of opportunity you encounter, e.g. ammo dumps, fuel storage, comms towers, hardpoints, etc.<br/>
	4- (Optional) Secure intel on FIA operations in the area (take a screenshot of intel you find).<br/>"
]];

_player createDiaryRecord ["Diary", ["Additional","
	1 - HARPY 1-1 and HARPY 1-2 were scheduled to provide CAS for this operation. Unfortunately, both pilots of HARPY 1-2 were injured by a mortar attack at their base two days ago, so only 1 CAS helicopter is available to support you.<br/><br/>
	2 - We’ve experienced a number of dangerous overheating issues with the Miniguns usually attached to our LSV tactical mobility vehicles, which has forced us to remove them. Metis launchers have been provided on one each of Alpha and Bravo’s vehicles to give you long range strike capabilities against hardened targets. <br/><br/>
	3 - HARPY is armed with 3 Laser Guided ATGMs, 12 HE rockets and dual 7.62mm Miniguns. This loadout is standardized for anti insurgency operations, and pilots do not have the authority to alter it.<br/><br/>
	4 - The SIGINT stations will provide you with additional intel on enemy positions as and when the enemy transmits on radio.<br/>"
]];

_player createDiaryRecord ["Diary", ["Mission","
	Locate and destroy the FIA communications intercept post (“TX ORACLE”). Once the FIA are in disarray, use the confusion to strike deep into their operation, using intelligence you find and SIGINT provided by MINERVA-1, MINERVA-2 and HERMES. We believe the FIA has established a command post near Agios Panagiotis, this is your primary target. In addition, you are authorized to destroy any targets of opportunity you encounter that you consider to have tactical value.
<br/>"
]];

_player createDiaryRecord ["Diary", ["Situation","
	The FIA continues to be an unpleasant thorn in our side. A significant insurgent force now occupies the hilly terrain between Agia Stemma and Agios Panagiotis, from which they strike out at our bases in Kavala and Zaros and Agios Dionysios. If allowed to continue, they threaten our main supply route to our bases in Kavala.<br/><br/>
	Our operations to root out these insurgents have thus far been unsuccessful. Recent intelligence indicates that this is due to a FIA communications intercept station placed on Agia Stemma. Efforts to destroy this station with artillery have thus far been unsuccessful. <br/><br/>
	We have recently acquired three EWAR (Electronic Warfare) posts, callsigns MINERVA-1, MINERVA-2 and HERMES. MINERVA are an older system. Less accurate, they can only provide approximate locations. HERMES is a newer system that requires some extra processing time, but has greater accuracy, and can even classify communication types using AI. It is also capable of automatically issuing warnings of incoming enemy firemissions. We will use these to intercept and jam FIA radio communications for the duration of this operation.<br/>"
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