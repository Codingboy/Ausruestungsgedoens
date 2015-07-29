{
	if (name player != name _x) then
	{
		lbAdd[2100, name _x];
	};
}
forEach playableUnits;
lbSetCurSel[2100, 0];
CODI_Loadout_Teleporter = _this select 0;