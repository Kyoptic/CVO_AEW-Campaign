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
/*
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
	We've lost contact with Red Star outpost north of Kavala, your mission is to move in and secure the outpost and wait for reinforcments to arrive, be aware that there is still active AAA that needs to be neutralized for reinforcments to move in.<br/><br/>
	Once the outpost is secured, you are to returned to the FOB and clear a way for more reinforcments to arrive.<br/><br/>
	Etc...<br/>"
]];

_player createDiaryRecord ["Diary", ["Situation","
	This morning at 10:15 we've lost contact with outpost Red Star after a heavy assault from rebel forces supported by CSAT.<br/><br/>
	We've also detected that rebel forces moved into the town of Kavala and started barricading it.<br/><br/>
	Etc...<br/>"
]];

// Briefing [For different sides]
// Copy the content of the "West" case to other cases as needed and comment/delete the previous briefing code
*/


switch (side _player) do {

	case West:
	{
		player createDiaryRecord ["Diary", ["Credits","
		Thanks and credits goes to: <br/>
		Frost'sBite from the Antistasi Dev Team for the friendly fire script https://github.com/official-antistasi-community/A3-FF-Punishment-Phantom<br/>
		Hakon from the Antistasi Dev Team for all the functions/scripts and help he provided the event team with.<br/>
		All the creator's of the mods that were used in this mission.<br/>
		Anyone who have contributed to the creation of this mission.<br/>
		"]]; 
		
		player createDiaryRecord ["Diary", ["Civilians","
		There are still some civilians in the area, though most will be hiding inside for the night. If you witness UlNat forces conducting terror operations, do what you must to sleep at night, but avoid compromising the mission. The lives of a couple of civilians may not be worth the damage the GRADS will cause if they're allowed to fire..<br/><br/><br/><br/>"
		]];
		player createDiaryRecord ["Diary", ["Enemy Forces","
		UlNat forces in the area are largely comprised of light/motorized paramilitary forces, mostly poorly trained irregulars. These troops seem to be focused on terrorizing the civilians, so expect to hear the occasional sounds of shots during the night. It is expected that the GRAD battery will be accompanied by better equipped support units.<br/><br/>

		UlNat forces are known to have an air assault infantry company based at a nearby airbase. It is unknown whether it is currently tasked elsewhere or if it is available as QRF. If it deploys, expect it to operate in an efficient, aggressive, and professional manner.
		<br/><br/>"
		]];
		player createDiaryRecord ["Diary", ["Signals","
			HQ LR COMMS: 	83.1<br/><br/>
			
			NOMAD 1-1 SR	62.3<br/>
			VIKTOR 2 SR		UNKNOWN<br/>"
		]];

		player createDiaryRecord ["Diary", ["Execution","PRIMARY OBJECTIVES: <br/>
		1. Meet with the Chernarussian Loyalist team at RV LUNA<br/>
		2. Assist the Chernarussian Loyalist for as long as it takes for them to share the location of VORON with you.<br/>
		3. Extract VORON safely. Secure an LZ and request EVAC.<br/>"
		]];

		player createDiaryRecord ["Diary", ["Mission","
		An important contact of ours (codename “VORON”) has been taken hostage by UlNat forces when his work as an informant was uncovered earlier this week. We must extract him safely. A Chernarussian Loyalist SF team is in the area and we believe they know his location. They've agreed to give you his location if you assist them in destroying some BM-21 GRADs in the area. Do so, but remember your top priority is to extract VORON alive.
"
		]];

		player createDiaryRecord ["Diary", ["Situation","
			The Chernarussian civil war is now in full swing. After the loss of Chernogorsk the country’s government has been forced into exile. The country is now split into two factions, the ultranationalist movement (UlNat) - spearheaded by the Chernarussian Movement of the Red Star, and a Loyalist movement which looks to restore the government-in-exile to power.<br/><br/>
			UlNat forces have been brutal to the civilian population, and in the northeastern region of Chernarus there are reports they have been carrying out wide scale arrests and executions against Loyalist sympathizers in a deliberate campaign of terror.
			<br/><br/>"
		]];
	};
	case east:
	{};
	case independent:
	{
		player createDiaryRecord ["Diary", ["Signals","
			HQ Communication Net: LR 73.4<br/>
			VIKTOR 2 SR:	102.3<br/>
			NOMAD 1-1 SR: 	UNKNOWN<br/>"
		]];

		player createDiaryRecord ["Diary", ["Execution","
			1- Meet with the UKSF team at RV LUNA<br/>
			2- Destroy the BM-21 Grads<br/>
			3- Inform the UKSF team of the location of their informant ONLY once the GRADs are destroyed.<br/>
			4- Extract safely by leaving the AO on foot or by vehicle.<br/>"
		]];

		player createDiaryRecord ["Diary", ["Additional","
			1- Unfortunately most of the government's equipment was captured by UlNat forces, so your equipment is quite limited. You have suppressed side arms but no suppressed rifles. What you lack in equipment you'll have to make up for in experience, cunning, and firepower.<br/><br/>"
		]];

		player createDiaryRecord ["Diary", ["Mission","
			We have received intel that a BM-21 GRAD battery is scheduled to move into position near the town of Svetloyarsk. For the past week it has been targeting civilian infrastructure in Loyalist areas, but we have been unable to find it. Locate and destroy the battery before it can fire again."
		]];

		player createDiaryRecord ["Diary", ["Situation","
			The Chernarussian civil war is now in full swing. After the loss of Chernogorsk the country's government has been forced into exile. The country is now split into two factions, the ultranationalist movement (UlNat) - spearheaded by the Chernarussian Movement of the Red Star, and a Loyalist movement which looks to restore the government-in-exile to power.<br/><br/>
			UlNat forces have been brutal to the civilian population, and in the northeastern region of Chernarus there are reports they have been carrying out wide scale arrests and executions against Loyalist sympathizers in a deliberate campaign of terror.
			<br/><br/>"
		]];
	};
	case civilian:
	{};
};