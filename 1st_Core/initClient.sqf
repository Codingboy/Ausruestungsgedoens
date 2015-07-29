if (hasInterface) then
{
	['Preload'] call BIS_fnc_arsenal;
	waitUntil {!isNull player};
	[] call CODI_Loadout_fnc_reset;
	[player getVariable["CODI_Loadout_Class", typeOf player]] call CODI_Loadout_fnc_loadout;
	[player, 4, true, true, (toLower(typeOf player)) == (toLower "B_medic_F"), true, true] call CODI_Loadout_fnc_equip;
	player addRating 99999999;
	player addMPEventHandler["MPRespawn", {
		player addRating 99999999;
		[] call CODI_Loadout_fnc_reset;
		["Unarmed"] call CODI_Loadout_fnc_loadout;
		[player, 4, true, true, (toLower(typeOf player)) == (toLower "B_medic_F"), true, true] call CODI_Loadout_fnc_equip;
	}];
	player addEventHandler ["Fired", {_this spawn Commander_fnc_supplyDrop;}];
};