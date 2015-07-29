CODI_Loadout_ScopeSelector_scopes =
[
	["optic_ACO_grn","ACO (Green)",["Rifleman"]],
	["optic_Aco","ACO (Red)",["Rifleman"]],
	["optic_ACO_grn_smg","ACO SMG (Green)",["Rifleman"]],
	["optic_Aco_smg","ACO SMG (Red)",["Rifleman"]],
	["optic_AMS","AMS (Black)",["Sniper","DM"]],
	["optic_AMS_khk","AMS (Khaki)",["Sniper","DM"]],
	["optic_AMS_snd","AMS (Sand)",["Sniper","DM"]],
	["optic_DMS","DMS",["DM"]],
	["optic_KHS_blk","Kahlia (Black)",["Sniper","DM"]],
	["optic_KHS_hex","Kahlia (Hex)",["Sniper","DM"]],
	["optic_KHS_old","Kahlia (Old)",["Sniper","DM"]],
	["optic_KHS_tan","Kahlia (Tan)",["Sniper","DM"]],
	["optic_LRPS","LRPS",["Sniper"]],
	["optic_Holosight","Mk17 Holosight",["Rifleman"]],
	["optic_Holosight_smg","Mk17 Holosight SMG",["Rifleman"]],
	["optic_SOS","MOS",["DM","Sniper"]],
	["optic_NVS","NVS",["DM","Sniper"]],
	["optic_MRCO","MRCO",["Rifleman"]],
	["optic_Arco","ARCO",["Rifleman","DM"]],
	["optic_Hamr","RCO",["Rifleman","DM"]]
];
if (isClass (configFile >> "CfgPatches" >> "ace_optics")) then
{
	CODI_Loadout_ScopeSelector_scopes pushBack ["ACE_optic_Hamr_PIP","RCO (PIP)",["Rifleman","DM"]];
	CODI_Loadout_ScopeSelector_scopes pushBack ["ACE_optic_Hamr_2D","RCO (2D)",["Rifleman","DM"]];
	CODI_Loadout_ScopeSelector_scopes pushBack ["ACE_optic_Arco_PIP","ARCO (PIP)",["Rifleman","DM"]];
	CODI_Loadout_ScopeSelector_scopes pushBack ["ACE_optic_Arco_2D","ARCO (2D)",["Rifleman","DM"]];
};
{
	if (
		((CODI_Loadout_Class == "Sniper" || CODI_Loadout_Class == "SS") && "Sniper" in (_x select 2)) ||
		(CODI_Loadout_Class == "DM" && "DM" in (_x select 2)) ||
		("Rifleman" in (_x select 2))
	) then
	{
		lbAdd[2100, _x select 1];
	};
}
forEach CODI_Loadout_ScopeSelector_scopes;
lbSetCurSel[2100, 0];