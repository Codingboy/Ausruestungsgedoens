private["_playerName"];
_playerName = lbText[2100, lbCurSel 2100];
{
	if (name _x == _playerName) then
	{
		player setPos (getPos _x);
	};
}
forEach playableUnits;
closeDialog 0;