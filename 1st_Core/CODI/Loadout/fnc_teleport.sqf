private["_playerName","_veh"];
disableSerialization;
_playerName = lbText[2100, lbCurSel 2100];
{
	if (name _x == _playerName) then
	{
		_veh = vehicle _x;
		if (_veh == _x) then
		{
			player setPosASL (getPosASL _x);
		}
		else
		{
			_ret = player moveInAny _veh;
			if (!_ret) then
			{
				if ((getPosATL _veh) select 2 < 5) then
				{
					player setPosASL (_veh modelToWorld [0, -10, 0]);
				}
				else
				{
					hint "Der Teleport zur Zielperson ist momentan nicht möglich.";
				};
			};
		};
	};
}
forEach playableUnits;
closeDialog 0;