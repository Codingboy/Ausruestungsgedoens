private["_veh"];

_veh = _this select 0;

if (isServer) then
{
	while {alive _veh} do
	{
		_veh setAmmoCargo 1;
		sleep (10*60);
	};
};