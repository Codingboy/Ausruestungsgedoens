private["_scope"];

_scope = lbText[2100, lbCurSel 2100];
{
	if (_scope == (_x select 1)) then
	{
		player addPrimaryWeaponItem (_x select 0);
	};
}
forEach CODI_Loadout_ScopeSelector_scopes;
closeDialog 0;