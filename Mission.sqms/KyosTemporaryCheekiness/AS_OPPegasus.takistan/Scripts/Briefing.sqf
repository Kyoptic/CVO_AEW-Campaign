// East = OPFOR | West = BLUFOR | independent = GREFOR | CIVILIAN = CIVILIAN
// Do not remove sides if you are not using them
// You can have a different breifing for each team
// For mission section, put each paragraph in its own line, even if it is very long

switch (side player) do {

	case West:
	{
		player createDiaryRecord ["Diary", ["Civilians","
		EXPECT A SIGNIFICANT CIVILIAN PRESENCE IN NAGARA. IT IS THE END OF THE DAY AND MANY CIVILIANS ARE LEAVING THE MARKET, BUT SOME MAY HEAD TO RELIGIOUS SITES FOR THEIR PRAYERS.<br/><br/>

		CIVILIANS ARE GENERALLY NEUTRAL OR FRIENDLY TO OUR PRESENCE, THERE HAVE BEEN ALMOST NO CASES OF IEDS OR SUICIDE ATTACKS AROUND NAGARA.<br/><br/>"
		]];
		player createDiaryRecord ["Diary", ["Enemy Forces","
		ENEMY INSURGENTS ARE ARMED LARGELY WITH OLD SOVIET EQUIPMENT AND BOLT ACTION RIFLES. THEY HAVE SOME LIGHT VEHICLES (TECHNICALS) WHICH MAY BE DEPLOYED.<br/><br/>

		THE INSURGENTS HAVE SEVERAL ‘STRONGHOLD TOWNS’ IN THE SOUTHERN MOUNTAINS. THESE CONSIST OF A STRING OF CONCEALED FORTIFIED POSITIONS. THEY WILL BE RELUCTANT TO USE IDF OR HEAVY WEAPONS WITHIN THESE TOWNS TO AVOID DESTROYING THEIR OWN PROPERTY
		<br/><br/>"
		]];
		player createDiaryRecord ["Diary", ["Signals","
			PLT LR COMMS: 	77.0<br/><br/>
			
			PLT HQ SR		50.0<br/>
			ALPHA SR		51.0<br/>
			BRAVO SR		52.0<br/>
			CHARLIE SR 		53.0<br/>"
		]];

		player createDiaryRecord ["Diary", ["Execution","
		1. ESTABLISH POSITIONS OVERWATCHING THE TOWN (COMPLETE, SEE MAP) <br/>
		2. ASSAULT THE COMPOUND IN NAGARA. LOCATE INTEL <br/>
		3. RTB <br/>
		4. IF ACTIONABLE INTEL IS FOUND, USE IT TO PLAN NIGHT TIME RAID <br/>
		5. RESCUE HOSTAGE, BY EVACUATING HIM BY HELICOPTER AT A SECURE LZ (THE HOSTAGE WILL NEED TO BE ESCORTED)<br/>"
		]];

		player createDiaryRecord ["Diary", ["Mission","
		PRIMARY OBJECTIVES: <br/>
		1. RAID THE COMPOUND IN NAGARA, LOCATE ACTIONABLE INTEL.<br/>
		2. IF ACTIONABLE INTEL IS FOUND, RTB, THEN ESTABLISH A PLAN OF ASSAULT TO RESCUE THE HOSTAGE.<br/><br/>
		SECONDARY OBJECTIVES: <br/>
		1. AVOID CIVILIAN CASUALTIES AT ALL COSTS.<br/>"
		]];

		player createDiaryRecord ["Diary", ["Situation","
			UK FORCES ARE HELPING TO STEM REGIONAL UNREST IN SOUTHERN TAKISTAN. EARLIER THIS WEEK WE RECEIVED INTEL THAT TAKISTANI RELIGIOUS EXTREMISTS (INSURGENTS) HAVE TAKEN A UK SERVICEMAN HOSTAGE. THIS EVENING, YOUR PLATOON, PART OF THE UK 2PARA REGIMENT, IS BEING DEPLOYED TO SECURE ACTIONABLE INTEL ON THE HOSTAGE’S LOCATION, SO THAT A RESCUE MISSION CAN BE UNDERTAKEN.<br/><br/>
			YOU WILL RAID A COMPOUND IN THE MARKET TOWN OF NAGARA, WEST OF THE NAYGUL VALLEY. THIS TOWN IS A HUB FOR INSURGENT INTELLIGENCE EXCHANGES. WE BELIEVE THERE MAY BE INTEL ON THE HOSTAGE’S LOCATION WITHIN THIS COMPOUND. YOUR PLATOON HAS BEEN DEPLOYED COVERTLY INTO LOCATIONS OVERLOOKING THE MARKET TOWN. YOU WILL BEGIN THE OPERATION AT SUNSET, AS THE MARKET CLOSES AND CIVILIANS BEGIN TO DISPERSE. RAID THE COMPOUND AND FIND THE INTEL.<br/><br/>
			IF ACTIONABLE INTEL IS FOUND, WE WILL PREPARE TO DEPLOY YOU A SECOND TIME TO PERFORM A NIGHT TIME RAID. THE LOCATION OF THE HOSTAGE WILL ONLY BE KNOWN ONCE YOU SECURE THE INTEL, SO YOU WILL HAVE TO PLAN QUICKLY.
			<br/><br/>"
		]];
	};

	case east:
	{
		player createDiaryRecord ["Diary", ["Signals","
			Main Communication Net: LR 77.0<br/>
			Alpha Intercoms: SR 70.0<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Execution","
			1- Move in into the outpost<br/>
			2- Hold the outpost until reinforcments arrive<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Additional","
			1- There are still civilian population in the area<br/>
			2- There is active AAA around the outpost<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Mission","
			We've lost contact with Red Star outpost north of Kavala, your mission is to move in and secure the outpost and wait for reinforcments to arrive, be aware that there is still active AAA that needs to be neutralized for reinforcments to move in.<br/>
			Once the outpost is secured, you are to returned to the FOB and clear a way for more reinforcments to arrive.<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Situation","
			This morning at 10:15 we've lost contact with outpost Red Star after a heavy assault from rebel forces supported by CSAT.<br/>
			We've also detected that rebel forces moved into the town of Kavala and started barricading it.<br/>
			Etc...<br/>"
		]];
	};

	case independent:
	{
		player createDiaryRecord ["Diary", ["Signals","
			Main Communication Net: LR 77.0<br/>
			Alpha Intercoms: SR 70.0<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Execution","
			1- Move in into the outpost<br/>
			2- Hold the outpost until reinforcments arrive<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Additional","
			1- There are still civilian population in the area<br/>
			2- There is active AAA around the outpost<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Mission","
			We've lost contact with Red Star outpost north of Kavala, your mission is to move in and secure the outpost and wait for reinforcments to arrive, be aware that there is still active AAA that needs to be neutralized for reinforcments to move in.<br/>
			Once the outpost is secured, you are to returned to the FOB and clear a way for more reinforcments to arrive.<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Situation","
			This morning at 10:15 we've lost contact with outpost Red Star after a heavy assault from rebel forces supported by CSAT.<br/>
			We've also detected that rebel forces moved into the town of Kavala and started barricading it.<br/>
			Etc...<br/>"
		]];
	};

	case civilian:
	{
		player createDiaryRecord ["Diary", ["Signals","
			Main Communication Net: LR 77.0<br/>
			Alpha Intercoms: SR 70.0<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Execution","
			1- Move in into the outpost<br/>
			2- Hold the outpost until reinforcments arrive<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Additional","
			1- There are still civilian population in the area<br/>
			2- There is active AAA around the outpost<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Mission","
			We've lost contact with Red Star outpost north of Kavala, your mission is to move in and secure the outpost and wait for reinforcments to arrive, be aware that there is still active AAA that needs to be neutralized for reinforcments to move in.<br/>
			Once the outpost is secured, you are to returned to the FOB and clear a way for more reinforcments to arrive.<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Situation","
			This morning at 10:15 we've lost contact with outpost Red Star after a heavy assault from rebel forces supported by CSAT.<br/>
			We've also detected that rebel forces moved into the town of Kavala and started barricading it.<br/>
			Etc...<br/>"
		]];
	};
};