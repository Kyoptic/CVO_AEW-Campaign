// Modify default of which features are enabled or not.
FFPP_FFPunEnabled = true;
FFPP_FFPunTellInstigator = false;
FFPP_FFPunTellVictim = false;
FFPP_FFPunTellAdmin = true;

[] execVM "antiflubber.sqf";

// _markers = ["H1", "H2", "H3", "H4", "H5", "H6", "H7", "H8", "H9", "H10", "H11", "CAVE1","NewAO"];
// {_x setmarkerAlpha 0} forEach _markers;

if (hasinterface) then {
    1 faderadio 0;

    titleCut ["", "BLACK FADED", 999];

        [] Spawn {
        waitUntil{!(isNil "BIS_fnc_init")};
		
        0 fadesound 0;
		sleep 2;
		titletext ["<t size='2'> This mission was designed, conceptualized and largely built in late 2021, inspired by the CoD 4 Mission 'Blackout'. Any relationship to current world affairs is entirely coincidental and unintentional.</t>","PLAIN",1, true, true];
		sleep 13;
		titletext ["<t size='2'> WARNING: This mission contains potentially copywrited music starting in 5 seconds! </t>","PLAIN",1, true, true];
		sleep 6;
        sleep 1;
		playMusic "CoD4_GroundZero";
		sleep 3;
        titletext ["<t size='2'> Northern Chernarus, 2011 - Chernorussian Civil War </t> <br/><br/> <img size='10' shadow='0' image='Images\voron_sponsor.paa'/>","PLAIN",1.3, true, true];
        
        "dynamicBlur" ppEffectEnable true;   
        "dynamicBlur" ppEffectAdjust [6];   
        "dynamicBlur" ppEffectCommit 0;     
        "dynamicBlur" ppEffectAdjust [0.0];  
        "dynamicBlur" ppEffectCommit 8;  
        titleCut ["", "BLACK IN", 10];
		setAperture 4;
		sleep 4;
		
		// SF Anims
		SF1 playmove "Acts_CrouchGetLowGesture";
		SF1 playmove "Acts_SupportTeam_Front_KneelLoop";
		SF1 playmove "Acts_Pointing_Right";

		SF2 playmove "amovPknlMstpSrasWrflDnon";
		SF2 playmove "Acts_SupportTeam_Front_KneelLoop";
		SF2 playmove "amovPknlMstpSrasWrflDnon";

		SF3 playmove "amovPknlMstpSrasWrflDnon";
		SF3 playmove "Acts_SupportTeam_Front_KneelLoop";
		SF3 playmove "Acts_Rifle_Operations_Checking_Chamber";
		SF3 playmove "amovPknlMstpSrasWrflDnon";

		SF4 playmove "amovPknlMstpSrasWrflDnon";
		SF4 playmove "Acts_Rifle_Operations_Back";
		SF4 playmove "amovPknlMstpSrasWrflDnon";
		
		
		// SPETZ Anims
		B1 playmove "Acts_CrouchGetLowGesture";
		B1 playmove "Acts_SupportTeam_Front_KneelLoop";
		B1 playmove "amovPknlMstpSrasWrflDnon";

		B2 playmove "amovPknlMstpSrasWrflDnon";
		B2 playmove "Acts_SupportTeam_Front_KneelLoop";
		B2 playmove "Acts_Rifle_Operations_Checking_Chamber";
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
		
		B5_1 playmove "Acts_CrouchGetLowGesture";
		B5_1 playmove "Acts_SupportTeam_Front_KneelLoop";
		B5_1 playmove "Acts_Pointing_Right";

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
		
        1 fadesound 0.5;
    };
    1 faderadio 1;
};

"CheckpointMark" setMarkerAlpha 0;
"BTRmark" setMarkerAlpha 0;


/* uisleep 20;
playMusic "Intro"; */




