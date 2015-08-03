private["_unit","_side"];

_unit = param[0, player];
_side = param[1, 4];

if (CODI_Loadout_NV select _side != "") then
{
	_unit linkItem (CODI_Loadout_NV select _side);
};