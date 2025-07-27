// Modify default of which features are enabled or not.
FFPP_FFPunEnabled = true;
FFPP_FFPunTellInstigator = false;
FFPP_FFPunTellVictim = false;
FFPP_FFPunTellAdmin = true;

_markers = ["H1", "H2", "H3", "H4", "H5", "H6", "H7", "H8", "H9", "H10", "H11", "CAVE1","NewAO"];
{_x setmarkerAlpha 0} forEach _markers;

if (hasinterface) then {
    1 faderadio 0;

    titleCut ["", "BLACK FADED", 999];

        [] Spawn {
        waitUntil{!(isNil "BIS_fnc_init")};
		
        0 fadesound 0;

        sleep 1;
        titletext ["<t size='2'> UK 2PARA 'Pegasus Platoon', Takistan, just outside Nagara </t><br/><br/> <img size='10' shadow='0' image='Images\armahosts_sponsor.paa'/>","PLAIN",1, true, true];
		//titleText ["<img size='10' shadow='0' image='Images\armahosts_sponsor.paa'/>", "PLAIN DOWN", 5, true, true];
        playMusic "BAF_Track01";
		
        "dynamicBlur" ppEffectEnable true;   \
        "dynamicBlur" ppEffectAdjust [6];   
        "dynamicBlur" ppEffectCommit 0;     
        "dynamicBlur" ppEffectAdjust [0.0];  
        "dynamicBlur" ppEffectCommit 5;  
        titleCut ["", "BLACK IN", 5];
		
		
		// ALPHA Anims
		A1 playmove "Acts_CrouchGetLowGesture";
		A1 playmove "Acts_SupportTeam_Front_KneelLoop";
		A1 playmove "Acts_Pointing_Right";

		A2 playmove "amovPknlMstpSrasWrflDnon";
		A2 playmove "Acts_SupportTeam_Front_KneelLoop";
		A2 playmove "amovPknlMstpSrasWrflDnon";

		A3 playmove "amovPknlMstpSrasWrflDnon";
		A3 playmove "Acts_SupportTeam_Front_KneelLoop";
		A3 playmove "Acts_Rifle_Operations_Checking_Chamber";
		A3 playmove "amovPknlMstpSrasWrflDnon";

		A4 playmove "amovPknlMstpSrasWrflDnon";
		A4 playmove "Acts_Rifle_Operations_Checking_Chamber";
		A4 playmove "amovPknlMstpSrasWrflDnon";
		
		A5 playmove "Acts_CrouchGetLowGesture";
		A5 playmove "Acts_SupportTeam_Front_KneelLoop";
		A5 playmove "Acts_Pointing_Right";

		// PLATOON ANIMS
		P1 playmove "amovPknlMstpSrasWrflDnon";
		P1 playmove "Acts_SupportTeam_Front_KneelLoop";
		P1 playmove "Acts_Pointing_Right";
		
		uisleep 1;
		P2 playmove "amovPknlMstpSrasWrflDnon";
		P2 playmove "Acts_SupportTeam_Front_KneelLoop";
		P2 playmove "Acts_Rifle_Operations_Checking_Chamber";
		P2 playmove "amovPknlMstpSrasWrflDnon";		
		
		// BRAVO Anims
		B1 playmove "Acts_CrouchGetLowGesture";
		B1 playmove "Acts_SupportTeam_Front_KneelLoop";
		B1 playmove "Acts_Pointing_Right";

		B2 playmove "amovPknlMstpSrasWrflDnon";
		B2 playmove "Acts_SupportTeam_Front_KneelLoop";
		B2 playmove "amovPknlMstpSrasWrflDnon";

		uisleep 1;
		B3 playmove "amovPknlMstpSrasWrflDnon";
		B3 playmove "Acts_SupportTeam_Front_KneelLoop";
		B3 playmove "Acts_Rifle_Operations_Checking_Chamber";
		B3 playmove "amovPknlMstpSrasWrflDnon";

		B4 playmove "amovPknlMstpSrasWrflDnon";
		B4 playmove "Acts_Rifle_Operations_Back";
		B4 playmove "amovPknlMstpSrasWrflDnon";
		
		B5 playmove "Acts_CrouchGetLowGesture";
		B5 playmove "Acts_SupportTeam_Front_KneelLoop";
		B5 playmove "Acts_Pointing_Right";

		B6 playmove "amovPknlMstpSrasWrflDnon";
		B6 playmove "Acts_SupportTeam_Front_KneelLoop";
		B6 playmove "amovPknlMstpSrasWrflDnon";
		uisleep 1;
		B7 playmove "amovPknlMstpSrasWrflDnon";
		B7 playmove "Acts_SupportTeam_Front_KneelLoop";
		B7 playmove "Acts_Rifle_Operations_Checking_Chamber";
		B7 playmove "amovPknlMstpSrasWrflDnon";

		B8 playmove "amovPknlMstpSrasWrflDnon";
		B8 playmove "Acts_Rifle_Operations_Back";
		B8 playmove "amovPknlMstpSrasWrflDnon";	
		
		// CHARLIE Anims
		C1 playmove "Acts_CrouchGetLowGesture";
		C1 playmove "Acts_SupportTeam_Front_KneelLoop";
		C1 playmove "Acts_Pointing_Right";

		C2 playmove "amovPknlMstpSrasWrflDnon";
		C2 playmove "Acts_SupportTeam_Front_KneelLoop";
		C2 playmove "amovPknlMstpSrasWrflDnon";

		uisleep 1;
		C3 playmove "amovPknlMstpSrasWrflDnon";
		C3 playmove "Acts_SupportTeam_Front_KneelLoop";
		C3 playmove "Acts_Rifle_Operations_Checking_Chamber";
		C3 playmove "amovPknlMstpSrasWrflDnon";

		C4 playmove "amovPknlMstpSrasWrflDnon";
		C4 playmove "Acts_Rifle_Operations_Back";
		C4 playmove "amovPknlMstpSrasWrflDnon";
		
		C5 playmove "Acts_CrouchGetLowGesture";
		C5 playmove "Acts_SupportTeam_Front_KneelLoop";
		C5 playmove "Acts_Pointing_Right";

		C6 playmove "amovPknlMstpSrasWrflDnon";
		C6 playmove "Acts_SupportTeam_Front_KneelLoop";
		C6 playmove "amovPknlMstpSrasWrflDnon";
		uisleep 1;
		
		C7 playmove "amovPknlMstpSrasWrflDnon";
		C7 playmove "Acts_SupportTeam_Front_KneelLoop";
		C7 playmove "Acts_Rifle_Operations_Checking_Chamber";
		C7 playmove "amovPknlMstpSrasWrflDnon";

		C8 playmove "amovPknlMstpSrasWrflDnon";
		C8 playmove "Acts_Rifle_Operations_Back";
		C8 playmove "amovPknlMstpSrasWrflDnon";	
		
        1 fadesound 0.5;
    };
    1 faderadio 1;
	uisleep 20;
	playSound "Intro";
	titleText ["<t align = 'center' shadow = '2' color='#788DEB' size'2' font='RobotoCondensedBold' > SUNBURST: </t><t color='#ffffff' size='1.3' font='RobotoCondensed' > 	Alpha, Bravo, this is Sunburst. It looks like most civilians are leaving the town at this time. The market is closing up. Be advised, some civilians may be heading to the mosque for their daily prayers, watch your fire. Out. </t>", "PLAIN DOWN", -1, true, true];
};

[] execVM "Scripts\Credits.sqf";
[] execVM "Scripts\Briefing.sqf";


uisleep 15;
minaret say3D ["CallToPrayer", 1000, 1, 0, 0];




