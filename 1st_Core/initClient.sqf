if (hasInterface) then
{
	[] execVM "\1st_Core\IgiLoad\IgiLoadInit.sqf";
	[] call compile preprocessFileLineNumbers "\1st_Core\CSSA3\CSSA3_init.sqf";
	['Preload'] call BIS_fnc_arsenal;
	waitUntil {!isNull player};
	if (isNil "CODI_Loadout_Faction") then
	{
		CODI_Loadout_Faction = 4;
	};
	if (isNil "CODI_Loadout_StartEquipped") then
	{
		CODI_Loadout_StartEquipped = true;
	};
	if (isNil "CODI_Loadout_SupplyDrop") then
	{
		CODI_Loadout_SupplyDrop = true;
	};
	if (CODI_Loadout_StartEquipped) then
	{
		[] call CODI_Loadout_fnc_reset;
		[player getVariable["CODI_Loadout_Class", typeOf player]] call CODI_Loadout_fnc_loadout;
		[player, CODI_Loadout_Faction, true, true, (toLower(typeOf player)) in [toLower "B_medic_F",toLower "O_medic_F",toLower "I_medic_F"], true, true] call CODI_Loadout_fnc_equip;
	};
	player addRating 99999999;
	player addMPEventHandler["MPRespawn", {
		player addRating 99999999;
		if (CODI_Loadout_StartEquipped) then
		{
			[] call CODI_Loadout_fnc_reset;
			[player getVariable["CODI_Loadout_Class", typeOf player]] call CODI_Loadout_fnc_loadout;
			[player, CODI_Loadout_Faction, true, true, (toLower(typeOf player)) == (toLower "B_medic_F"), true, true] call CODI_Loadout_fnc_equip;
		};
	}];
	if (CODI_Loadout_SupplyDrop) then
	{
		player addEventHandler ["Fired", {_this spawn Commander_fnc_supplyDrop;}];
	};
	["CODI_Loadout_AllInOne",0,{
		[] call CODI_Loadout_fnc_reset;
		[player getVariable["CODI_Loadout_Class", typeOf player]] call CODI_Loadout_fnc_loadout;
		[player, CODI_Loadout_Faction, true, true, (toLower(typeOf player)) == (toLower "B_medic_F"), true, true] call CODI_Loadout_fnc_equip;
	},[],{true},"Ausrüsten","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{CODI_Loadout_va = true; publicVariable "CODI_Loadout_va";},[],{!CODI_Loadout_va && (getPlayerUID player == '76561197961486247' || getPlayerUID player == '76561197996296785' || getPlayerUID player == '_SP_PLAYER_' || serverCommandAvailable '#kick')},"Enable VA","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{CODI_Loadout_va = false; publicVariable "CODI_Loadout_va";},[],{CODI_Loadout_va && (getPlayerUID player == '76561197961486247' || getPlayerUID player == '76561197996296785' || getPlayerUID player == '_SP_PLAYER_' || serverCommandAvailable '#kick')},"Disable VA","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{CODI_Loadout_cs = true; publicVariable "CODI_Loadout_cs";},[],{!CODI_Loadout_cs && (getPlayerUID player == '76561197961486247' || getPlayerUID player == '76561197996296785' || getPlayerUID player == '_SP_PLAYER_' || serverCommandAvailable '#kick')},"Enable CS","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{CODI_Loadout_cs = false; publicVariable "CODI_Loadout_cs";},[],{CODI_Loadout_cs && (getPlayerUID player == '76561197961486247' || getPlayerUID player == '76561197996296785' || getPlayerUID player == '_SP_PLAYER_' || serverCommandAvailable '#kick')},"Disable CS","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{CODI_Loadout_ss = true; publicVariable "CODI_Loadout_ss";},[],{!CODI_Loadout_ss && (getPlayerUID player == '76561197961486247' || getPlayerUID player == '76561197996296785' || getPlayerUID player == '_SP_PLAYER_' || serverCommandAvailable '#kick')},"Enable SS","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{CODI_Loadout_ss = false; publicVariable "CODI_Loadout_ss";},[],{CODI_Loadout_ss && (getPlayerUID player == '76561197961486247' || getPlayerUID player == '76561197996296785' || getPlayerUID player == '_SP_PLAYER_' || serverCommandAvailable '#kick')},"Disable SS","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{createdialog 'CODI_Loadout_Teleport';},[],{true},"Teleport","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{createdialog 'CODI_Loadout_ClassSelector';},[],{CODI_Loadout_cs},"Klasse Wählen","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{createdialog 'CODI_Loadout_ScopeSelector';},[],{CODI_Loadout_ss},"Scope Wählen","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{['Open',true] spawn BIS_fnc_arsenal;},[],{CODI_Loadout_va},"Virtual Arsenal","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	["CODI_Loadout_AllInOne",0,{["forced"] spawn CSSA3_fnc_createSpectateDialog;},[],{true},"Zusehen","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	
	TF_speak_volume_level = "whispering";
	TF_speak_volume_meters = 5;
	[parseText (format[localize "STR_voice_volume", localize "STR_voice_whispering"]), 5] call TFAR_fnc_showHint;
	["OnSpeakVolume", player, [player, TF_speak_volume_meters]] call TFAR_fnc_fireEventHandlers;
};