private["_class","_blufor","_opfor","_independent","_bwfleck","_bwtropen","_all","_usfleck","_ustropen"];

_blufor = 0;
_opfor = 1;
_independent = 2;
_bwfleck = 3;
_bwtropen = 4;
_usfleck = 5;
_ustropen = 6;
_all = [_blufor, _opfor, _independent, _bwfleck, _bwtropen, _usfleck, _ustropen];

//initialise variables
CODI_Loadout_Uniform = [];
CODI_Loadout_Vest = [];
CODI_Loadout_Backpack = [];
CODI_Loadout_Helmet = [];
CODI_Loadout_Goggles = [];
CODI_Loadout_NV = [];
CODI_Loadout_Binocular = [];
CODI_Loadout_Map = [];
CODI_Loadout_Radio = [];
CODI_Loadout_GPS = [];
CODI_Loadout_Watch = [];
CODI_Loadout_Compass = [];
CODI_Loadout_UniformItems = [];
CODI_Loadout_VestItems = [];
CODI_Loadout_BackpackItems = [];
CODI_Loadout_Rifle = [];
CODI_Loadout_Pistol = [];
CODI_Loadout_Launcher = [];
CODI_Loadout_RifleAmmo = [];
CODI_Loadout_PistolAmmo = [];
CODI_Loadout_LauncherAmmo = [];
CODI_Loadout_RifleOptic = [];
CODI_Loadout_RifleLaser = [];
CODI_Loadout_RifleBipod = [];
CODI_Loadout_RifleSilencer = [];
CODI_Loadout_PistolOptic = [];
CODI_Loadout_PistolLaser = [];
CODI_Loadout_PistolBipod = [];
CODI_Loadout_PistolSilencer = [];
CODI_Loadout_LauncherOptic = [];
CODI_Loadout_LauncherLaser = [];
CODI_Loadout_LauncherBipod = [];
CODI_Loadout_LauncherSilencer = [];
CODI_Loadout_UniformAmmo = [];
CODI_Loadout_VestAmmo = [];
CODI_Loadout_BackpackAmmo = [];
CODI_Loadout_BinocularAmmo = [];

{
	_i = _x;
	{
		_x set [_i, ""];
	}
	forEach [CODI_Loadout_Uniform,CODI_Loadout_Vest,CODI_Loadout_Backpack,CODI_Loadout_Helmet,CODI_Loadout_Goggles,CODI_Loadout_NV,CODI_Loadout_Binocular,CODI_Loadout_Map,CODI_Loadout_Radio,CODI_Loadout_GPS,CODI_Loadout_Watch,CODI_Loadout_Compass,CODI_Loadout_RifleSilencer,CODI_Loadout_RifleBipod,CODI_Loadout_RifleLaser,CODI_Loadout_RifleOptic,CODI_Loadout_Launcher,CODI_Loadout_Pistol,CODI_Loadout_Rifle,CODI_Loadout_PistolOptic,CODI_Loadout_PistolLaser,CODI_Loadout_PistolBipod,CODI_Loadout_PistolSilencer,CODI_Loadout_LauncherOptic,CODI_Loadout_LauncherLaser,CODI_Loadout_LauncherBipod,CODI_Loadout_LauncherSilencer];
	{
		_x set [_i, []];
	}
	forEach [CODI_Loadout_UniformItems,CODI_Loadout_VestItems,CODI_Loadout_BackpackItems,CODI_Loadout_UniformAmmo,CODI_Loadout_VestAmmo,CODI_Loadout_BackpackAmmo,CODI_Loadout_RifleAmmo,CODI_Loadout_PistolAmmo,CODI_Loadout_LauncherAmmo,CODI_Loadout_BinocularAmmo];
}
forEach _all;