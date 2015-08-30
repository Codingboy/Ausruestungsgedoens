private["_playerName"];
disableSerialization;
_playerName = lbText[2100, lbCurSel 2100];
{
	if (name _x == _playerName) then
	{
		_x setVariable["CODI_Loadout_va", true, true];
	};
}
forEach playableUnits;
closeDialog 0;