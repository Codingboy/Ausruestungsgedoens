_unit = _this select 0;
_weapon = _this select 1;
_ammo = _this select 4;
_projectile = _this select 6;
_side = 4;

if (_weapon != "Throw") exitWith{};
if (!(_ammo == "SmokeShellYellow" OR _ammo == "SmokeShellBlue")) exitWith{};

hint "Supply angefordert";
_markerPos = [0,0,0];
switch (side _unit) do
{
	case blufor:
	{
		_markerPos = getMarkerPos "respawn_west";
	};
	case opfor:
	{
		_markerPos = getMarkerPos "respawn_east";
	};
	case independent:
	{
		_markerPos = getMarkerPos "respawn_guerrila";
	};
	case civilian:
	{
		_markerPos = getMarkerPos "respawn_civilian";
	};
};

_heli = createVehicle ["B_Heli_Transport_03_unarmed_F", _markerPos, [], 0, "FLY"];
_group = createGroup independent;
_pilot = _group createUnit ["I_helipilot_F", _markerPos, [], 0, "FORM"];
_pilot moveInDriver _heli;
_pilot allowFleeing 0;
sleep 10;
_projectilePos = getPos _projectile;
_wp = (group _heli) addWaypoint [_projectilePos, 0];
_wp setWaypointCompletionRadius 1;
_wp1 = (group _heli) addWaypoint [_markerPos, 0];
_dis = 1000;
while {_dis > 250} do
{
	_dis = [(getPos _heli) select 0, (getPos _heli) select 1] distance [_projectilePos select 0, _projectilePos select 1];
	if (_dis > 500) then
	{
		sleep 1;
	}
	else
	{
		sleep 0.1;
	};
};
_prevDis = 1000;
while {_prevDis > _dis} do
{
	sleep 0.1;
	_prevDis = _dis;
	_dis = [(getPos _heli) select 0, (getPos _heli) select 1] distance [_projectilePos select 0, _projectilePos select 1];
};

_para = createVehicle ["B_Parachute_02_F", [0,0,250], [], 0, ""];
_para setPosATL (_heli modelToWorld[0,0,-10]);
_veh = createVehicle ["B_supplyCrate_F", [0,0,40], [], 0, ""];
_veh attachTo [_para,[0,0,0]];
_veh allowDamage false;
clearWeaponCargoGlobal _veh; 
clearMagazineCargoGlobal _veh;
clearItemCargoGlobal _veh;
clearBackpackCargoGlobal _veh;

if (_ammo == "SmokeShellYellow") then 
{
	{
		[] call CODI_Loadout_fnc_reset;
		[_x getVariable["CODI_Loadout_Class", typeOf _x]] call CODI_Loadout_fnc_loadout;
		{
			_var = _x select _side;
			{
				_veh addMagazineCargoGlobal _x;
			}
			forEach _var;
		}
		forEach [CODI_Loadout_UniformAmmo,CODI_Loadout_VestAmmo,CODI_Loadout_BackpackAmmo];
		{
			_veh addMagazineCargoGlobal [_x, 1];
		}
		forEach (CODI_Loadout_RifleAmmo select _side);
	}
	forEach (units(group _unit));
};
if (_ammo == "SmokeShellBlue") then 
{
	[] call CODI_Loadout_fnc_reset;
	["Medic"] call CODI_Loadout_fnc_loadout;
	{
		_veh addItemCargoGlobal _x;
	}
	forEach (CODI_Loadout_BackpackItems select _side);
};
 
 //hubschrauber löschen 
sleep 60;
{_heli deleteVehicleCrew _x;} forEach (crew _heli);
deleteVehicle _heli;