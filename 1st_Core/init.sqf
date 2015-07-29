//[] call compile preprocessFileLineNumbers "CSSA3\CSSA3_init.sqf";
KK_fnc_push =
{
	_this select 0 pushBack (_this select 1);
	_this select 0
};
CODI_Loadout_fnc_setUniform =
{
	private["_side","_uniform"];
	_side = param[0,0];
	_uniform = param[1, ""];
	CODI_Loadout_Uniform set [_side, _uniform];
};
CODI_Loadout_fnc_setVest =
{
	private["_side","_vest"];
	_side = param[0,0];
	_vest = param[1, ""];
	CODI_Loadout_Vest set [_side, _vest];
};
CODI_Loadout_fnc_setBackpack =
{
	private["_side","_backpack"];
	_side = param[0,0];
	_backpack = param[1, ""];
	CODI_Loadout_Backpack set [_side, _backpack];
};
CODI_Loadout_fnc_setHelmet =
{
	private["_side","_helmet"];
	_side = param[0,0];
	_helmet = param[1, ""];
	CODI_Loadout_Helmet set [_side, _helmet];
};
CODI_Loadout_fnc_setNV =
{
	private["_side","_nv"];
	_side = param[0,0];
	_nv = param[1, ""];
	CODI_Loadout_NV set [_side, _nv];
};
CODI_Loadout_fnc_setRadio =
{
	private["_side","_radio"];
	_side = param[0,0];
	_radio = param[1, ""];
	CODI_Loadout_Radio set [_side, _radio];
};
CODI_Loadout_fnc_setGPS =
{
	private["_side","_gps"];
	_side = param[0,0];
	_gps = param[1, ""];
	CODI_Loadout_GPS set [_side, _gps];
};
CODI_Loadout_fnc_setWatch =
{
	private["_side","_watch"];
	_side = param[0,0];
	_watch = param[1, ""];
	CODI_Loadout_Watch set [_side, _watch];
};
CODI_Loadout_fnc_setCompass =
{
	private["_side","_compass"];
	_side = param[0,0];
	_compass = param[1, ""];
	CODI_Loadout_Compass set [_side, _compass];
};
CODI_Loadout_fnc_setGoggles =
{
	private["_side","_goggles"];
	_side = param[0,0];
	_goggles = param[1, ""];
	CODI_Loadout_Goggles set [_side, _goggles];
};
CODI_Loadout_fnc_clearUniformItems =
{
	private["_side"];
	_side = param[0,0];
	CODI_Loadout_UniformItems set [_side, []];
};
CODI_Loadout_fnc_addUniformItem =
{
	private["_side","_num","_item"];
	_side = param[0,0];
	_item = param[1,""];
	_num = param[2,0];
	CODI_Loadout_UniformItems set [_side, [CODI_Loadout_UniformItems select _side, [_item, _num]] call KK_fnc_push];
};
CODI_Loadout_fnc_clearUniformAmmo =
{
	private["_side"];
	_side = param[0,0];
	CODI_Loadout_UniformAmmo set [_side, []];
};
CODI_Loadout_fnc_addUniformAmmo =
{
	private["_side","_num","_item"];
	_side = param[0,0];
	_item = param[1,""];
	_num = param[2,0];
	CODI_Loadout_UniformAmmo set [_side, [CODI_Loadout_UniformAmmo select _side, [_item, _num]] call KK_fnc_push];
};
CODI_Loadout_fnc_clearVestItems =
{
	private["_side"];
	_side = param[0,0];
	CODI_Loadout_VestItems set [_side, []];
};
CODI_Loadout_fnc_addVestItem =
{
	private["_side","_num","_item"];
	_side = param[0,0];
	_item = param[1,""];
	_num = param[2,0];
	CODI_Loadout_VestItems set [_side, [CODI_Loadout_VestItems select _side, [_item, _num]] call KK_fnc_push];
};
CODI_Loadout_fnc_clearVestAmmo =
{
	private["_side"];
	_side = param[0,0];
	CODI_Loadout_VestAmmo set [_side, []];
};
CODI_Loadout_fnc_addVestAmmo =
{
	private["_side","_num","_item"];
	_side = param[0,0];
	_item = param[1,""];
	_num = param[2,0];
	CODI_Loadout_VestAmmo set [_side, [CODI_Loadout_VestAmmo select _side, [_item, _num]] call KK_fnc_push];
};
CODI_Loadout_fnc_clearBackpackItems =
{
	private["_side"];
	_side = param[0,0];
	CODI_Loadout_BackpackItems set [_side, []];
};
CODI_Loadout_fnc_addBackpackItem =
{
	private["_side","_num","_item"];
	_side = param[0,0];
	_item = param[1,""];
	_num = param[2,0];
	CODI_Loadout_BackpackItems set [_side, [CODI_Loadout_BackpackItems select _side, [_item, _num]] call KK_fnc_push];
};
CODI_Loadout_fnc_clearBackpackAmmo =
{
	private["_side"];
	_side = param[0,0];
	CODI_Loadout_BackpackAmmo set [_side, []];
};
CODI_Loadout_fnc_addBackpackAmmo =
{
	private["_side","_num","_item"];
	_side = param[0,0];
	_item = param[1,""];
	_num = param[2,0];
	CODI_Loadout_BackpackAmmo set [_side, [CODI_Loadout_BackpackAmmo select _side, [_item, _num]] call KK_fnc_push];
};
CODI_Loadout_fnc_clearBinocularAmmo =
{
	private["_side"];
	_side = param[0,0];
	CODI_Loadout_BinocularAmmo set [_side, []];
};
CODI_Loadout_fnc_addBinocularAmmo =
{
	private["_side","_item"];
	_side = param[0,0];
	_item = param[1,""];
	CODI_Loadout_BinocularAmmo set [_side, [CODI_Loadout_BinocularAmmo select _side, _item] call KK_fnc_push];
};
CODI_Loadout_fnc_setRifle =
{
	private["_side","_rifle"];
	_side = param[0,0];
	_rifle = param[1, ""];
	CODI_Loadout_Rifle set [_side, _rifle];
};
CODI_Loadout_fnc_clearRifleAmmo =
{
	private["_side"];
	_side = param[0,0];
	CODI_Loadout_RifleAmmo set [_side, []];
};
CODI_Loadout_fnc_addRifleAmmo =
{
	private["_side","_rifleAmmo"];
	_side = param[0,0];
	_rifleAmmo = param[1, ""];
	CODI_Loadout_RifleAmmo set [_side, [CODI_Loadout_RifleAmmo select _side, _rifleAmmo] call KK_fnc_push];
};
CODI_Loadout_fnc_setRifleBipod =
{
	private["_side","_rifleBipod"];
	_side = param[0,0];
	_rifleBipod = param[1, ""];
	CODI_Loadout_RifleBipod set [_side, _rifleBipod];
};
CODI_Loadout_fnc_setRifleSilencer =
{
	private["_side","_rifleSilencer"];
	_side = param[0,0];
	_rifleSilencer = param[1, ""];
	CODI_Loadout_RifleSilencer set [_side, _rifleSilencer];
};
CODI_Loadout_fnc_setRifleOptic =
{
	private["_side","_rifleOptic"];
	_side = param[0,0];
	_rifleOptic = param[1, ""];
	CODI_Loadout_RifleOptic set [_side, _rifleOptic];
};
CODI_Loadout_fnc_setRifleLaser =
{
	private["_side","_rifleLaser"];
	_side = param[0,0];
	_rifleLaser = param[1, ""];
	CODI_Loadout_RifleLaser set [_side, _rifleLaser];
};
CODI_Loadout_fnc_setPistol =
{
	private["_side","_rifle"];
	_side = param[0,0];
	_rifle = param[1, ""];
	CODI_Loadout_Pistol set [_side, _rifle];
};
CODI_Loadout_fnc_clearPistolAmmo =
{
	private["_side"];
	_side = param[0,0];
	CODI_Loadout_PistolAmmo set [_side, []];
};
CODI_Loadout_fnc_addPistolAmmo =
{
	private["_side","_rifleAmmo"];
	_side = param[0,0];
	_rifleAmmo = param[1, ""];
	CODI_Loadout_PistolAmmo set [_side, [CODI_Loadout_PistolAmmo select _side, _rifleAmmo] call KK_fnc_push];
};
CODI_Loadout_fnc_setPistolBipod =
{
	private["_side","_rifleBipod"];
	_side = param[0,0];
	_rifleBipod = param[1, ""];
	CODI_Loadout_PistolBipod set [_side, _rifleBipod];
};
CODI_Loadout_fnc_setPistolSilencer =
{
	private["_side","_rifleSilencer"];
	_side = param[0,0];
	_rifleSilencer = param[1, ""];
	CODI_Loadout_PistolSilencer set [_side, _rifleSilencer];
};
CODI_Loadout_fnc_setPistolOptic =
{
	private["_side","_rifleOptic"];
	_side = param[0,0];
	_rifleOptic = param[1, ""];
	CODI_Loadout_PistolOptic set [_side, _rifleOptic];
};
CODI_Loadout_fnc_setPistolLaser =
{
	private["_side","_rifleLaser"];
	_side = param[0,0];
	_rifleLaser = param[1, ""];
	CODI_Loadout_PistolLaser set [_side, _rifleLaser];
};
CODI_Loadout_fnc_setLauncher =
{
	private["_side","_rifle"];
	_side = param[0,0];
	_rifle = param[1, ""];
	CODI_Loadout_Launcher set [_side, _rifle];
};
CODI_Loadout_fnc_clearLauncherAmmo =
{
	private["_side"];
	_side = param[0,0];
	CODI_Loadout_LauncherAmmo set [_side, []];
};
CODI_Loadout_fnc_addLauncherAmmo =
{
	private["_side","_rifleAmmo"];
	_side = param[0,0];
	_rifleAmmo = param[1, ""];
	CODI_Loadout_LauncherAmmo set [_side, [CODI_Loadout_LauncherAmmo select _side, _rifleAmmo] call KK_fnc_push];
};
CODI_Loadout_fnc_setLauncherBipod =
{
	private["_side","_rifleBipod"];
	_side = param[0,0];
	_rifleBipod = param[1, ""];
	CODI_Loadout_LauncherBipod set [_side, _rifleBipod];
};
CODI_Loadout_fnc_setLauncherSilencer =
{
	private["_side","_rifleSilencer"];
	_side = param[0,0];
	_rifleSilencer = param[1, ""];
	CODI_Loadout_LauncherSilencer set [_side, _rifleSilencer];
};
CODI_Loadout_fnc_setLauncherOptic =
{
	private["_side","_rifleOptic"];
	_side = param[0,0];
	_rifleOptic = param[1, ""];
	CODI_Loadout_LauncherOptic set [_side, _rifleOptic];
};
CODI_Loadout_fnc_setLauncherLaser =
{
	private["_side","_rifleLaser"];
	_side = param[0,0];
	_rifleLaser = param[1, ""];
	CODI_Loadout_LauncherLaser set [_side, _rifleLaser];
};
CODI_Loadout_fnc_setMap =
{
	private["_side","_map"];
	_side = param[0,0];
	_map = param[1, ""];
	CODI_Loadout_Map set [_side, _map];
};
CODI_Loadout_fnc_setBinocular =
{
	private["_side","_binocular"];
	_side = param[0,0];
	_binocular = param[1, ""];
	CODI_Loadout_Binocular set [_side, _binocular];
};
CODI_Loadout_fnc_initClassSelector = compile preprocessFileLineNumbers "\1st_Core\CODI\Loadout\fnc_initClassSelector.sqf";
CODI_Loadout_fnc_loadoutSelector = compile preprocessFileLineNumbers "\1st_Core\CODI\Loadout\fnc_loadoutSelector.sqf";
CODI_Loadout_fnc_interact = compile preprocessFileLineNumbers "\1st_Core\CODI\Loadout\fnc_interact.sqf";
CODI_Loadout_fnc_initTeleport = compile preprocessFileLineNumbers "\1st_Core\CODI\Loadout\fnc_initTeleport.sqf";
CODI_Loadout_fnc_teleport = compile preprocessFileLineNumbers "\1st_Core\CODI\Loadout\fnc_teleport.sqf";
CODI_Loadout_fnc_para = compile preprocessFileLineNumbers "\1st_Core\CODI\Loadout\fnc_para.sqf";
CODI_Loadout_fnc_dive = compile preprocessFileLineNumbers "\1st_Core\CODI\Loadout\fnc_dive.sqf";
CODI_Loadout_fnc_reset = compile preprocessFileLineNumbers "\1st_Core\CODI\Loadout\fnc_reset.sqf";
CODI_Loadout_fnc_loadout = compile preprocessFileLineNumbers "\1st_Core\CODI\Loadout\fnc_loadout.sqf";
CODI_Loadout_fnc_equip = compile preprocessFileLineNumbers "\1st_Core\CODI\Loadout\fnc_equip.sqf";
Commander_fnc_supplyDrop = compile preprocessFileLineNumbers "\1st_Core\Commander\supply_drop.sqf";
CODI_Loadout_fnc_initAllInOne = compile preprocessFileLineNumbers "\1st_Core\CODI\Loadout\fnc_initAllInOne.sqf";
CODI_Loadout_fnc_equipScope = compile preprocessFileLineNumbers "\1st_Core\CODI\Loadout\fnc_equipScope.sqf";

if (isServer) then
{
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
	publicVariable "CODI_Loadout_cs";
	publicVariable "CODI_Loadout_va";
	publicVariable "CODI_Loadout_ss";
};