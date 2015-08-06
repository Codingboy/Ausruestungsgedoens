private["_side","_class","_silenced","_medic","_exSpec","_pilot","_sideInt","_hasNV","_classText","_map"];
_side = lbText[2100, lbCurSel 2100];
_classText = lbText[2101, lbCurSel 2101];
_class = "Rifleman";
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
	if (_classText == _x select 1) then
	{
		_class = _x select 0;
	};
}
forEach _map;
_silenced = cbChecked (CODI_Loadout_ClassSelector displayCtrl 2800);
_medic = cbChecked (CODI_Loadout_ClassSelector displayCtrl 2801);
_exSpec = cbChecked (CODI_Loadout_ClassSelector displayCtrl 2802);
_pilot = cbChecked (CODI_Loadout_ClassSelector displayCtrl 2803);
_hasNV = cbChecked (CODI_Loadout_ClassSelector displayCtrl 2804);
closeDialog 0;
_sideInt = 0;
switch (_side) do
{
	case "NATO":
	{
		_sideInt = 0;
	};
	case "CSAT":
	{
		_sideInt = 1;
	};
	case "AAF":
	{
		_sideInt = 2;
	};
	case "BW (flecktarn)":
	{
		_sideInt = 3;
	};
	case "BW (tropentarn)":
	{
		_sideInt = 4;
	};
	case "US (marpat wd)":
	{
		_sideInt = 5;
	};
	case "US (marpat d)":
	{
		_sideInt = 6;
	};
};
[] call CODI_Loadout_fnc_reset;
[_class] call CODI_Loadout_fnc_loadout;
[player, _sideInt, _silenced, _hasNV, _medic, _exSpec, _pilot] call CODI_Loadout_fnc_equip;