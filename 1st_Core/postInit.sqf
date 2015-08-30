if (hasInterface) then
{
	if (isNil "CODI_Loadout_Faction") then
	{
		CODI_Loadout_Faction = 5;
	};
	if (isNil "CODI_Loadout_isSilenced") then
	{
		CODI_Loadout_isSilenced = false;
	};
	if (isNil "CODI_Loadout_hasNV") then
	{
		CODI_Loadout_hasNV = false;
	};
	if (isNil "CODI_Loadout_StartEquipped") then
	{
		CODI_Loadout_StartEquipped = false;
	};
	if (isNil "CODI_Loadout_SupplyDrop") then
	{
		CODI_Loadout_SupplyDrop = true;
	};
	if (isNil "CODI_Loadout_CustomLoadout") then
	{
		CODI_Loadout_CustomLoadout = false;
	};
	if (isNil "CODI_Loadout_cs") then
	{
		CODI_Loadout_cs = false;
	};
	if (isNil "CODI_Loadout_va") then
	{
		CODI_Loadout_va = false;
	};
	if (isNil "CODI_Loadout_ss") then
	{
		CODI_Loadout_ss = false;
	};
	if (isNil "CODI_Loadout_para") then
	{
		CODI_Loadout_para = false;
	};
	if (isNil "CODI_Loadout_dive") then
	{
		CODI_Loadout_dive = false;
	};
	if (isNil "CODI_Loadout_equip") then
	{
		CODI_Loadout_equip = true;
	};
	[] call compile preprocessFileLineNumbers "\1st_Core\CSSA3\CSSA3_init.sqf";
	waitUntil{!isNull player};
	CODI_Loadout_Faction = player getVariable["CODI_Loadout_Faction", CODI_Loadout_Faction];
	CODI_Loadout_isSilenced = player getVariable["CODI_Loadout_isSilenced", CODI_Loadout_isSilenced];
	CODI_Loadout_hasNV = player getVariable["CODI_Loadout_hasNV", CODI_Loadout_hasNV];
	CODI_Loadout_StartEquipped = player getVariable["CODI_Loadout_StartEquipped", CODI_Loadout_StartEquipped];
	CODI_Loadout_SupplyDrop = player getVariable["CODI_Loadout_SupplyDrop", CODI_Loadout_SupplyDrop];
	CODI_Loadout_CustomLoadout = player getVariable["CODI_Loadout_CustomLoadout", CODI_Loadout_CustomLoadout];
	CODI_Loadout_cs = player getVariable["CODI_Loadout_cs", CODI_Loadout_cs];
	CODI_Loadout_va = player getVariable["CODI_Loadout_va", CODI_Loadout_va];
	CODI_Loadout_ss = player getVariable["CODI_Loadout_ss", CODI_Loadout_ss];
	CODI_Loadout_para = player getVariable["CODI_Loadout_para", CODI_Loadout_para];
	CODI_Loadout_dive = player getVariable["CODI_Loadout_dive", CODI_Loadout_dive];
	CODI_Loadout_equip = player getVariable["CODI_Loadout_equip", CODI_Loadout_equip];
	if (!CODI_Loadout_CustomLoadout) then
	{
		if (CODI_Loadout_StartEquipped) then
		{
			[] call CODI_Loadout_fnc_reset;
			[player getVariable["CODI_Loadout_Class", typeOf player]] call CODI_Loadout_fnc_loadout;
			[player, CODI_Loadout_Faction, CODI_Loadout_isSilenced, CODI_Loadout_hasNV,
				(toLower(typeOf player)) in [toLower "B_medic_F",toLower "O_medic_F",toLower "I_medic_F",toLower "B_recon_medic_F",toLower "O_recon_medic_F"],
				(toLower(typeOf player)) in [toLower "B_soldier_exp_F",toLower "B_recon_exp_F",toLower "B_diver_exp_F",toLower "O_soldier_exp_F",toLower "O_recon_exp_F",toLower "O_diver_exp_F",toLower "I_Soldier_exp_F",toLower "I_diver_exp_F"],
				(toLower(typeOf player)) in [toLower "O_Pilot_F",toLower "I_pilot_F",toLower "B_pilot_F"]
			] call CODI_Loadout_fnc_equip;
		}
		else
		{
		
			[] call CODI_Loadout_fnc_reset;
			["freizeit"] call CODI_Loadout_fnc_loadout;
			[player, CODI_Loadout_Faction, CODI_Loadout_isSilenced, CODI_Loadout_hasNV,
				(toLower(typeOf player)) in [toLower "B_medic_F",toLower "O_medic_F",toLower "I_medic_F",toLower "B_recon_medic_F",toLower "O_recon_medic_F"],
				(toLower(typeOf player)) in [toLower "B_soldier_exp_F",toLower "B_recon_exp_F",toLower "B_diver_exp_F",toLower "O_soldier_exp_F",toLower "O_recon_exp_F",toLower "O_diver_exp_F",toLower "I_Soldier_exp_F",toLower "I_diver_exp_F"],
				(toLower(typeOf player)) in [toLower "O_Pilot_F",toLower "I_pilot_F",toLower "B_pilot_F"]
			] call CODI_Loadout_fnc_equip;
		};
	};
	player addRating 99999999;
	player addMPEventHandler["MPRespawn", {
		player addRating 99999999;
		if (CODI_Loadout_StartEquipped) then
		{
			[] call CODI_Loadout_fnc_reset;
			[player getVariable["CODI_Loadout_Class", typeOf player]] call CODI_Loadout_fnc_loadout;
			[player, CODI_Loadout_Faction, CODI_Loadout_isSilenced, CODI_Loadout_hasNV,
				(toLower(typeOf player)) in [toLower "B_medic_F",toLower "O_medic_F",toLower "I_medic_F",toLower "B_recon_medic_F",toLower "O_recon_medic_F"],
				(toLower(typeOf player)) in [toLower "B_soldier_exp_F",toLower "B_recon_exp_F",toLower "B_diver_exp_F",toLower "O_soldier_exp_F",toLower "O_recon_exp_F",toLower "O_diver_exp_F",toLower "I_Soldier_exp_F",toLower "I_diver_exp_F"],
				(toLower(typeOf player)) in [toLower "O_Pilot_F",toLower "I_pilot_F",toLower "B_pilot_F"]
			] call CODI_Loadout_fnc_equip;
		}
		else
		{
			[] call CODI_Loadout_fnc_reset;
			["freizeit"] call CODI_Loadout_fnc_loadout;
			[player, CODI_Loadout_Faction, CODI_Loadout_isSilenced, CODI_Loadout_hasNV,
				(toLower(typeOf player)) in [toLower "B_medic_F",toLower "O_medic_F",toLower "I_medic_F",toLower "B_recon_medic_F",toLower "O_recon_medic_F"],
				(toLower(typeOf player)) in [toLower "B_soldier_exp_F",toLower "B_recon_exp_F",toLower "B_diver_exp_F",toLower "O_soldier_exp_F",toLower "O_recon_exp_F",toLower "O_diver_exp_F",toLower "I_Soldier_exp_F",toLower "I_diver_exp_F"],
				(toLower(typeOf player)) in [toLower "O_Pilot_F",toLower "I_pilot_F",toLower "B_pilot_F"]
			] call CODI_Loadout_fnc_equip;
		};
	}];
	if (CODI_Loadout_SupplyDrop) then
	{
		player addEventHandler ["Fired", {_this spawn Commander_fnc_supplyDrop;}];
	};
	["CODI_Loadout_AllInOne",0,{createDialog 'CODI_Loadout_EnableVA';},[],{(getPlayerUID player == '76561197961479795' || getPlayerUID player == '76561197961486247' || getPlayerUID player == '76561197996296785' || getPlayerUID player == '_SP_PLAYER_' || serverCommandAvailable '#kick')},"Enable VirtualArsenal for Person","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 10] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{CODI_Loadout_va = true; publicVariable "CODI_Loadout_va";},[],{!CODI_Loadout_va && (getPlayerUID player == '76561197961479795' || getPlayerUID player == '76561197961486247' || getPlayerUID player == '76561197996296785' || getPlayerUID player == '_SP_PLAYER_' || serverCommandAvailable '#kick')},"Enable VirtualArsenal","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 10] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{CODI_Loadout_va = false; publicVariable "CODI_Loadout_va";},[],{CODI_Loadout_va && (getPlayerUID player == '76561197961479795' || getPlayerUID player == '76561197961486247' || getPlayerUID player == '76561197996296785' || getPlayerUID player == '_SP_PLAYER_' || serverCommandAvailable '#kick')},"Disable VirtualArsenal","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 10] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{CODI_Loadout_cs = true; publicVariable "CODI_Loadout_cs";},[],{!CODI_Loadout_cs && (getPlayerUID player == '76561197961479795' || getPlayerUID player == '76561197961486247' || getPlayerUID player == '76561197996296785' || getPlayerUID player == '_SP_PLAYER_' || serverCommandAvailable '#kick')},"Enable ClassSelection","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 10] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{CODI_Loadout_cs = false; publicVariable "CODI_Loadout_cs";},[],{CODI_Loadout_cs && (getPlayerUID player == '76561197961479795' || getPlayerUID player == '76561197961486247' || getPlayerUID player == '76561197996296785' || getPlayerUID player == '_SP_PLAYER_' || serverCommandAvailable '#kick')},"Disable ClassSelection","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 10] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{CODI_Loadout_ss = true; publicVariable "CODI_Loadout_ss";},[],{!CODI_Loadout_ss && (getPlayerUID player == '76561197961479795' || getPlayerUID player == '76561197961486247' || getPlayerUID player == '76561197996296785' || getPlayerUID player == '_SP_PLAYER_' || serverCommandAvailable '#kick')},"Enable ScopeSelection","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 10] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{CODI_Loadout_ss = false; publicVariable "CODI_Loadout_ss";},[],{CODI_Loadout_ss && (getPlayerUID player == '76561197961479795' || getPlayerUID player == '76561197961486247' || getPlayerUID player == '76561197996296785' || getPlayerUID player == '_SP_PLAYER_' || serverCommandAvailable '#kick')},"Disable ScopeSelection","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 10] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{CODI_Loadout_equip = true; publicVariable "CODI_Loadout_equip";},[],{!CODI_Loadout_equip && (getPlayerUID player == '76561197961479795' || getPlayerUID player == '76561197961486247' || getPlayerUID player == '76561197996296785' || getPlayerUID player == '_SP_PLAYER_' || serverCommandAvailable '#kick')},"Enable Ausrüsten","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 10] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{CODI_Loadout_equip = false; publicVariable "CODI_Loadout_equip";},[],{CODI_Loadout_equip && (getPlayerUID player == '76561197961479795' || getPlayerUID player == '76561197961486247' || getPlayerUID player == '76561197996296785' || getPlayerUID player == '_SP_PLAYER_' || serverCommandAvailable '#kick')},"Disable Ausrüsten","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 10] call CODI_Loadout_fnc_interact;
	if (CODI_Loadout_para) then
	{
		["CODI_Loadout_AllInOne",0,{[player] spawn CODI_Loadout_fnc_para;},[],{true},"Fallschirm Nehmen","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 10] call CODI_Loadout_fnc_interact;
	};
	if (CODI_Loadout_dive) then
	{
		["CODI_Loadout_AllInOne",0,{[player] spawn CODI_Loadout_fnc_dive;},[],{true},"Taucherausrüstung Nehmen","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 10] call CODI_Loadout_fnc_interact;
	};
	["CODI_Loadout_AllInOne",0,{["forced"] spawn CSSA3_fnc_createSpectateDialog;},[],{true},"Zusehen","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 10] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{createdialog 'CODI_Loadout_Teleport';},[],{true},"Teleport","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 10] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{createdialog 'CODI_Loadout_ScopeSelector';},[],{CODI_Loadout_ss},"Scope Wählen","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 10] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{[player, CODI_Loadout_Faction] call CODI_Loadout_fnc_equipSilencer;},[],{true},"Schalldämpfer Nehmen","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 10] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{[player, CODI_Loadout_Faction] call CODI_Loadout_fnc_equipNV;},[],{true},"Nachtsicht Nehmen","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 10] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{['Open',true] spawn BIS_fnc_arsenal;},[],{CODI_Loadout_va || player getVariable["CODI_Loadout_va", CODI_Loadout_va]},"Virtual Arsenal","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 10] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{createdialog 'CODI_Loadout_ClassSelector';},[],{CODI_Loadout_cs},"Klasse Wählen","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 10] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{
		[] call CODI_Loadout_fnc_reset;
		[player getVariable["CODI_Loadout_Class", typeOf player]] call CODI_Loadout_fnc_loadout;
		[player, CODI_Loadout_Faction, CODI_Loadout_isSilenced, CODI_Loadout_hasNV,
			(toLower(typeOf player)) in [toLower "B_medic_F",toLower "O_medic_F",toLower "I_medic_F",toLower "B_recon_medic_F",toLower "O_recon_medic_F"],
			(toLower(typeOf player)) in [toLower "B_soldier_exp_F",toLower "B_recon_exp_F",toLower "B_diver_exp_F",toLower "O_soldier_exp_F",toLower "O_recon_exp_F",toLower "O_diver_exp_F",toLower "I_Soldier_exp_F",toLower "I_diver_exp_F"],
			(toLower(typeOf player)) in [toLower "O_Pilot_F",toLower "I_pilot_F",toLower "B_pilot_F"]
		] call CODI_Loadout_fnc_equip;
	},[],{CODI_Loadout_equip},"Ausrüsten","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 10] call CODI_Loadout_fnc_interact;
	
	TF_speak_volume_level = "whispering";
	TF_speak_volume_meters = 5;
	[parseText (format[localize "STR_voice_volume", localize "STR_voice_whispering"]), 5] call TFAR_fnc_showHint;
	["OnSpeakVolume", player, [player, TF_speak_volume_meters]] call TFAR_fnc_fireEventHandlers;
	
	[] execVM "\1st_Core\IgiLoad\IgiLoadInit.sqf";
	if (count playableUnits != 0) then
	{
		['Preload'] call BIS_fnc_arsenal;
	};
};