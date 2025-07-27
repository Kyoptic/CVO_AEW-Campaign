titleText ["<t align = 'center' shadow = '2' color='#788DEB' size'2' font='RobotoCondensedBold' > SUNBURST: </t><t color='#ffffff' size='1.3' font='RobotoCondensed' > Wolf, this is Sunburst, be advised, SIGINT stations believe they are picking up FIA comms, watch for intel on map!</t>", "PLAIN DOWN", 2, true, true]; 

sleep 10;

min1 sidechat "||MINERVA1||RX_SIG:76.2MHZ||SIG_STR:-72.6dBm||DIR_BRG:192-||SIG_CLASSIF:COMMS!||";
sleep 5;
min2 sidechat "||MINERVA2||RX_SIG:76.2MHZ||SIG_STR:-81.2dBm||DIR_BRG:287-||SIG_CLASSIF:COMMS!||";
sleep 10;
min1 sidechat "||MINERVA1||RX_SIG:76.2MHZ||SIG_STR:-72.6dBm||DIR_BRG:192-||SIG_CLASSIF:COMMS!||";
sleep 2;
min2 sidechat "||MINERVA2||RX_SIG:76.2MHZ||SIG_STR:-81.2dBm||DIR_BRG:287-||SIG_CLASSIF:COMMS!||";
sleep 5;
_markers = ["M1_3", "M2_3"];
{_x setmarkerAlpha 1} forEach _markers;
sleep 8;
herm sidechat "||HERMES-SIGINT-V1.023||RX_SIG:76.2MHZ||SIG_STR:-61.3dBm||DRG_BRG: DETERMINING...||SIG_TYPE: COMMS|| SIG_AUTO_CLASSIF_NLP: REQ 4 SUPPORT||";
sleep 1;
herm sidechat "||HERMES-SIGINT-V1.023||WARNING: QRF POSSIBLE||!";
sleep 30;
herm sidechat "||HERMES-SIGINT-V1.023||RX_SIG:76.2MHZ||SIG_STR:-61.3dBm||DRG_BRG: 254||SIG_TYPE: COMMS|| SIG_AUTO_CLASSIF_NLP: REQ 4 SUPP||POSITION: PLOTTED";

// Reveal QRF marker gradaully. Yes i know this is a moronic way to do it. It was quicker to copy paste this than chage the syntax okay? Deal with it. Works the same.
_markers = ["H3_1"];
{_x setmarkerAlpha 1} forEach _markers;
sleep 10;
_markers = ["H3_2"];
{_x setmarkerAlpha 1} forEach _markers;
sleep 10;
_markers = ["H3_3"];
{_x setmarkerAlpha 1} forEach _markers;
sleep 10;
_markers = ["H3_4", "QRF"];
{_x setmarkerAlpha 1} forEach _markers;
