_box = _this select 0;

if (isServer) then
{
	clearWeaponCargoGlobal _box;
	clearMagazineCargoGlobal _box;
	clearItemCargoGlobal _box;
	clearBackpackCargoGlobal _box;
};
if (hasInterface) then
{
	waitUntil {!isNull player};
	_box addAction["Ausrüsten", {
		[] call CODI_Loadout_fnc_reset;
		[player getVariable["CODI_Loadout_Class", typeOf player]] call CODI_Loadout_fnc_loadout;
		[player, 4, true, true, (toLower(typeOf player)) == (toLower "B_medic_F"), true, true] call CODI_Loadout_fnc_equip;
	}];
	[_box,0,{
		[] call CODI_Loadout_fnc_reset;
		[player getVariable["CODI_Loadout_Class", typeOf player]] call CODI_Loadout_fnc_loadout;
		[player, 4, true, true, (toLower(typeOf player)) == (toLower "B_medic_F"), true, true] call CODI_Loadout_fnc_equip;
	},[],{true},"Ausrüsten","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	[_box,0,{CODI_Loadout_va = true; publicVariable "CODI_Loadout_va";},[],{!CODI_Loadout_va && (getPlayerUID player == '76561197961486247' || getPlayerUID player == '76561197996296785' || getPlayerUID player == '_SP_PLAYER_' || serverCommandAvailable '#kick')},"Enable VA","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	[_box,0,{CODI_Loadout_va = false; publicVariable "CODI_Loadout_va";},[],{CODI_Loadout_va && (getPlayerUID player == '76561197961486247' || getPlayerUID player == '76561197996296785' || getPlayerUID player == '_SP_PLAYER_' || serverCommandAvailable '#kick')},"Disable VA","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	[_box,0,{CODI_Loadout_cs = true; publicVariable "CODI_Loadout_cs";},[],{!CODI_Loadout_cs && (getPlayerUID player == '76561197961486247' || getPlayerUID player == '76561197996296785' || getPlayerUID player == '_SP_PLAYER_' || serverCommandAvailable '#kick')},"Enable CS","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	[_box,0,{CODI_Loadout_cs = false; publicVariable "CODI_Loadout_cs";},[],{CODI_Loadout_cs && (getPlayerUID player == '76561197961486247' || getPlayerUID player == '76561197996296785' || getPlayerUID player == '_SP_PLAYER_' || serverCommandAvailable '#kick')},"Disable CS","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	[_box,0,{CODI_Loadout_ss = true; publicVariable "CODI_Loadout_ss";},[],{!CODI_Loadout_ss && (getPlayerUID player == '76561197961486247' || getPlayerUID player == '76561197996296785' || getPlayerUID player == '_SP_PLAYER_' || serverCommandAvailable '#kick')},"Enable SS","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	[_box,0,{CODI_Loadout_ss = false; publicVariable "CODI_Loadout_ss";},[],{CODI_Loadout_ss && (getPlayerUID player == '76561197961486247' || getPlayerUID player == '76561197996296785' || getPlayerUID player == '_SP_PLAYER_' || serverCommandAvailable '#kick')},"Disable SS","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	[_box,0,{createdialog 'CODI_Loadout_Teleport';},[],{true},"Teleport","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	[_box,0,{createdialog 'CODI_Loadout_ClassSelector';},[],{CODI_Loadout_cs},"Klasse Wählen","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	[_box,0,{createdialog 'CODI_Loadout_ScopeSelector';},[],{CODI_Loadout_ss},"Scope Wählen","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	[_box,0,{['Open',true] spawn BIS_fnc_arsenal;},[],{CODI_Loadout_va},"Virtual Arsenal","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
	//[_box,0,{["forced"] spawn CSSA3_fnc_createSpectateDialog;},[],{true},"Zusehen","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa", 5] call CODI_Loadout_fnc_interact;
};