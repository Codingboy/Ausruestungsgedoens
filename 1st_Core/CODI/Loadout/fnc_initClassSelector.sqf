{
	lbAdd[2100, _x];
}
forEach ["NATO","CSAT","AAF","BW (flecktarn)","BW (tropentarn)"];
{
	lbAdd[2101, _x];
}
forEach [
"AA",
"AsAGMG",
"AsAHMG",
//"AAR",
"AGMG",
"AHMG",
"AsMortar",
"AT",
"AsAA",
"AsAT",
"AsHMG",
"AsLMG",
"AsMMG",
//"Crew",
//"Diver",
//"DiverExp",
//"DiverFTL",
"DM",
"Eng",
"ExSpec",
"FAC",
//"freizeit",
"FTL",
"Gren",
//"HeliCrew",
//"HeliPilot",
"HMG",
"LAT",
//"Lite",
"LMG",
"Medic",
"MMG",
"Mortar",
//"Para",
//"Pilot",
//"Recon",
"PL",
"Rifleman",
"SL",
"Sniper",
"Spotter",
//"SS",
//"Survivor",
"UAV",
"Unarmed"
//"VR"
];
lbSetCurSel[2100, 0];
lbSetCurSel[2101, 0];

CODI_Loadout_ClassSelector = _this select 0;