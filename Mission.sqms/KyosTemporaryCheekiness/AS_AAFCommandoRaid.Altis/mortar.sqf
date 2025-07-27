titleText ["<t align = 'center' shadow = '2' color='#788DEB' size'2' font='RobotoCondensedBold' > SUNBURST: </t><t color='#ffffff' size='1.3' font='RobotoCondensed' > Wolf, this is Sunburst, be advised, SIGINT stations believe they are picking up FIA comms, watch for intel on map!</t>", "PLAIN DOWN", 2, true, true]; 

sleep 10;

min1 sidechat "||MINERVA1||RX_SIG:76.2MHZ||SIG_STR:-72.6dBm||DIR_BRG:192-||SIG_CLASSIF:COMMS!||";
sleep 5;
min2 sidechat "||MINERVA2||RX_SIG:76.2MHZ||SIG_STR:-81.2dBm||DIR_BRG:287-||SIG_CLASSIF:COMMS!||";
sleep 7;
min1 sidechat "||MINERVA1||RX_SIG:76.2MHZ||SIG_STR:-72.6dBm||DIR_BRG:192-||SIG_CLASSIF:COMMS!||";
sleep 2;
min2 sidechat "||MINERVA2||RX_SIG:76.2MHZ||SIG_STR:-81.2dBm||DIR_BRG:287-||SIG_CLASSIF:COMMS!||";
sleep 5;
_markers = ["M1_2", "M2_2"];
{_x setmarkerAlpha 1} forEach _markers;
herm sidechat "||HERMES-SIGINT-V1.023||RX_SIG:76.2MHZ||SIG_STR:-61.3dBm||DRG_BRG: DETERMINING...||SIG_TYPE: COMMS|| SIG_AUTO_CLASSIF_NLP: FO COMMS||";
sleep 1;
herm sidechat "||HERMES-SIGINT-V1.023||WARNING: LIKELY FORWARD OBSERVER COMMS DETECTED||!";
sleep 3;
herm sidechat "||HERMES-SIGINT-V1.023||WARNING: INCOMING! INCOMING! INCOMING!||!";
sleep 30;
herm sidechat "||HERMES-SIGINT-V1.023||RX_SIG:76.2MHZ||SIG_STR:-61.3dBm||DRG_BRG: 254||SIG_TYPE: COMMS|| SIG_AUTO_CLASSIF_NLP: FO COMMS||POSITION: PLOTTED";
_markers = ["H2"];
{_x setmarkerAlpha 1} forEach _markers;