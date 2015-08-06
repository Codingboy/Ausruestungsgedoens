private["_map"];
{
	lbAdd[2100, _x];
}
forEach ["NATO","CSAT","AAF","BW (flecktarn)","BW (tropentarn)","US (marpat wd)","US (marpat d)"];
_map = [
	["AA","Anti Air"],
	["AsAGMG","Assisting Autonomous Grenade Machine Gun"],
	["AsAHMG","Assisting Autonomous Heavy Machine Gun"],
	["AGMG","Autonomous Grenade Machine Gun"],
	["AHMG","Autonomous Heavy Machine Gun"],
	["AsMortar","Assisting Mortar"],
	["AT","Anti Tank"],
	["AsAA","Assisting Anti Air"],
	["AsAT","Assisting Anti Tank"],
	["AsHMG","Assisting Heavy Machine Gun"],
	["AsLMG","Assisting Light Machine Gun"],
	["AsMMG","Assisting Medium Machine Gun"],
	["CFR","Combat First Responder"],
	["Crew","Crew"],
	["DM","Designated Marksman"],
	["Eng","Engineer"],
	["ExSpec","Explosive Specialist"],
	["FAC","Forward Air Controller"],
	["FTL","Fire Team Lead"],
	["Gren","Grenadier"],
	["Helicrew","Helicrew"],
	["Helipilot","Helipilot"],
	["HMG","Heavy Machine Gun"],
	["LAT","Light Anti Tank"],
	["Light","Light Rifleman"],
	["LMG","Light Machine Gun"],
	["Medic","Medic"],
	["MMG","Medium Machine Gun"],
	["Mortar","Mortar"],
	["Para","Paratrooper"],
	["Pilot","Pilot"],
	["PL","Platoon Lead"],
	["Rifleman","Rifleman"],
	["SL","Squad Lead"],
	["Sniper","Sniper"],
	["Spotter","Spotter"],
	["SS","Sharpshooter"],
	["UAV","Unmanned Aerial Vehicle"],
	["Unarmed","Unarmed"]
];
{
	lbAdd[2101, _x select 1];
}
forEach _map;
/*[
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
"Crew",
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
"Helicrew",
"Helipilot",
"HMG",
"LAT",
"Light",
"LMG",
"Medic",
"MMG",
"Mortar",
"Para",
"Pilot",
"PL",
"Rifleman",
"SL",
"Sniper",
"Spotter",
"SS",
//"Survivor",
"UAV",
"Unarmed"
//"VR"
];*/
lbSetCurSel[2100, 0];
lbSetCurSel[2101, 0];

CODI_Loadout_ClassSelector = _this select 0;