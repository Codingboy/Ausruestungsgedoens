private["_unit","_side"];

_unit = param[0, player];
_side = param[1, 4];

if (CODI_Loadout_PistolSilencer select _side != "") then
{
	_unit addHandgunItem (CODI_Loadout_PistolSilencer select _side);
};
if (CODI_Loadout_LauncherSilencer select _side != "") then
{
	_unit addSecondaryWeaponItem (CODI_Loadout_LauncherSilencer select _side);
};
if (CODI_Loadout_RifleSilencer select _side != "") then
{
	_unit addPrimaryWeaponItem (CODI_Loadout_RifleSilencer select _side);
};