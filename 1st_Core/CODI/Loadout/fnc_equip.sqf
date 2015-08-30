private["_unit","_side","_isSilenced","_hasNV","_isMedic","_isPilot","_isExSpec"];

_unit = param [0, player];
_side = param [1, 3];
_isSilenced = param [2, true];
_hasNV = param [3, true];
_isMedic = param [4, false];
_isExSpec = param [5, false];
_isPilot = param [6, false];

if (getPlayerUID player == "76561197996296785") then
{
	if (isClass (configFile >> "CfgPatches" >> "ace_hearing")) then
	{
		_unit setVariable ["ACE_hasEarPlugsIn", true, true];
	};
};

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

if (CODI_Loadout_Uniform select _side != "") then
{
	_unit forceAddUniform (CODI_Loadout_Uniform select _side);
};
if (CODI_Loadout_Vest select _side != "") then
{
	_unit addVest (CODI_Loadout_Vest select _side);
};
if (CODI_Loadout_Backpack select _side != "") then
{
	_unit addBackpack (CODI_Loadout_Backpack select _side);
};
if (CODI_Loadout_Rifle select _side != "") then
{
	if (count(CODI_Loadout_RifleAmmo select _side) != 0) then
	{
		{
			_unit addMagazine _x;
		}
		forEach (CODI_Loadout_RifleAmmo select _side);
	};
	_unit addWeapon (CODI_Loadout_Rifle select _side);
	if (CODI_Loadout_RifleOptic select _side != "") then
	{
		_unit addPrimaryWeaponItem (CODI_Loadout_RifleOptic select _side);
	};
	if (CODI_Loadout_RifleLaser select _side != "") then
	{
		_unit addPrimaryWeaponItem (CODI_Loadout_RifleLaser select _side);
	};
	if (CODI_Loadout_RifleBipod select _side != "") then
	{
		_unit addPrimaryWeaponItem (CODI_Loadout_RifleBipod select _side);
	};
	if (_isSilenced) then
	{
		if (CODI_Loadout_RifleSilencer select _side != "") then
		{
			_unit addPrimaryWeaponItem (CODI_Loadout_RifleSilencer select _side);
		};
	};
};
if (CODI_Loadout_Pistol select _side != "") then
{
	if (count(CODI_Loadout_PistolAmmo select _side) != 0) then
	{
		{
			_unit addMagazine _x;
		}
		forEach (CODI_Loadout_PistolAmmo select _side);
	};
	_unit addWeapon (CODI_Loadout_Pistol select _side);
	if (isClass (configFile >> "CfgPatches" >> "ace_safemode")) then
	{
		[_unit, currentWeapon _unit, currentMuzzle _unit] call ACE_SafeMode_fnc_lockSafety;
	};
	if (CODI_Loadout_PistolOptic select _side != "") then
	{
		_unit addHandgunItem (CODI_Loadout_PistolOptic select _side);
	};
	if (CODI_Loadout_PistolLaser select _side != "") then
	{
		_unit addHandgunItem (CODI_Loadout_PistolLaser select _side);
	};
	if (CODI_Loadout_PistolBipod select _side != "") then
	{
		_unit addHandgunItem (CODI_Loadout_PistolBipod select _side);
	};
	if (_isSilenced) then
	{
		if (CODI_Loadout_PistolSilencer select _side != "") then
		{
			_unit addHandgunItem (CODI_Loadout_PistolSilencer select _side);
		};
	};
};
if (CODI_Loadout_Launcher select _side != "") then
{
	_unit addWeapon (CODI_Loadout_Launcher select _side);
	if (count(CODI_Loadout_LauncherAmmo select _side) != 0) then
	{
		{
			_unit addSecondaryWeaponItem _x;
		}
		forEach (CODI_Loadout_LauncherAmmo select _side);
	};
	if (isClass (configFile >> "CfgPatches" >> "ace_safemode")) then
	{
		[_unit, currentWeapon _unit, currentMuzzle _unit] call ACE_SafeMode_fnc_lockSafety;
	};
	if (CODI_Loadout_LauncherOptic select _side != "") then
	{
		_unit addSecondaryWeaponItem (CODI_Loadout_LauncherOptic select _side);
	};
	if (CODI_Loadout_LauncherLaser select _side != "") then
	{
		_unit addSecondaryWeaponItem (CODI_Loadout_LauncherLaser select _side);
	};
	if (CODI_Loadout_LauncherBipod select _side != "") then
	{
		_unit addSecondaryWeaponItem (CODI_Loadout_LauncherBipod select _side);
	};
	if (_isSilenced) then
	{
		if (CODI_Loadout_LauncherSilencer select _side != "") then
		{
			_unit addSecondaryWeaponItem (CODI_Loadout_LauncherSilencer select _side);
		};
	};
};
if (CODI_Loadout_Helmet select _side != "") then
{
	_unit addHeadgear (CODI_Loadout_Helmet select _side);
};
if (CODI_Loadout_Goggles select _side != "") then
{
	_unit addGoggles (CODI_Loadout_Goggles select _side);
};
if (_hasNV) then
{
	if (CODI_Loadout_NV select _side != "") then
	{
		_unit linkItem (CODI_Loadout_NV select _side);
	};
};
if (CODI_Loadout_Binocular select _side != "") then
{
	if (count(CODI_Loadout_BinocularAmmo select _side) != 0) then
	{
		{
			_unit addMagazine _x;
		}
		forEach (CODI_Loadout_BinocularAmmo select _side);
	};
	_unit addWeapon (CODI_Loadout_Binocular select _side);
};
if (CODI_Loadout_Map select _side != "") then
{
	_unit linkItem (CODI_Loadout_Map select _side);
};
if (CODI_Loadout_Radio select _side != "") then
{
	_unit linkItem (CODI_Loadout_Radio select _side);
};
if (CODI_Loadout_GPS select _side != "") then
{
	_unit linkItem (CODI_Loadout_GPS select _side);
};
if (CODI_Loadout_Watch select _side != "") then
{
	_unit linkItem (CODI_Loadout_Watch select _side);
};
if (CODI_Loadout_Compass select _side != "") then
{
	_unit linkItem (CODI_Loadout_Compass select _side);
};

if (CODI_Loadout_Uniform select _side != "") then
{
	if (count(CODI_Loadout_UniformItems select _side) != 0) then
	{
		{
			_item = _x select 0;
			_numItems = _x select 1;
			for "_i" from 1 to _numItems do
			{
				_unit addItemToUniform _item;
			};
		}
		forEach (CODI_Loadout_UniformItems select _side);
	};
	if (count(CODI_Loadout_UniformAmmo select _side) != 0) then
	{
		{
			_item = _x select 0;
			_numItems = _x select 1;
			for "_i" from 1 to _numItems do
			{
				_unit addItemToUniform _item;
			};
		}
		forEach (CODI_Loadout_UniformAmmo select _side);
	};
};
if (CODI_Loadout_Vest select _side != "") then
{
	if (count(CODI_Loadout_VestItems select _side) != 0) then
	{
		{
			_item = _x select 0;
			_numItems = _x select 1;
			for "_i" from 1 to _numItems do
			{
				_unit addItemToVest _item;
			};
		}
		forEach (CODI_Loadout_VestItems select _side);
	};
	if (count(CODI_Loadout_VestAmmo select _side) != 0) then
	{
		{
			_item = _x select 0;
			_numItems = _x select 1;
			for "_i" from 1 to _numItems do
			{
				_unit addItemToVest _item;
			};
		}
		forEach (CODI_Loadout_VestAmmo select _side);
	};
};
if (CODI_Loadout_Backpack select _side != "") then
{
	if (count(CODI_Loadout_BackpackItems select _side) != 0) then
	{
		{
			_item = _x select 0;
			_numItems = _x select 1;
			for "_i" from 1 to _numItems do
			{
				_unit addItemToBackpack _item;
			};
		}
		forEach (CODI_Loadout_BackpackItems select _side);
	};
	if (count(CODI_Loadout_BackpackAmmo select _side) != 0) then
	{
		{
			_item = _x select 0;
			_numItems = _x select 1;
			for "_i" from 1 to _numItems do
			{
				_unit addItemToBackpack _item;
			};
		}
		forEach (CODI_Loadout_BackpackAmmo select _side);
	};
};
if (isClass (configFile >> "CfgPatches" >> "ace_medical")) then
{
	if (_isMedic) then
	{
		_unit setVariable ["ACE_Medical_medicClass", 1, true];
	}
	else
	{
		_unit setVariable ["ACE_Medical_medicClass", 0, true];
	};
};
if (isClass (configFile >> "CfgPatches" >> "ace_medical")) then
{
	if (_isExSpec) then
	{
		_unit setVariable ["ACE_isEOD", true, true];
	}
	else
	{
		_unit setVariable ["ACE_isEOD", false, true];
	};
};
if (isClass (configFile >> "CfgPatches" >> "ace_gforces")) then
{
	if (_isPilot) then
	{
		_unit setVariable ["ACE_GForceCoef", 0.55, true];
	}
	else
	{
		_unit setVariable ["ACE_GForceCoef", 1.0, true];
	};
};
if (isClass (configFile >> "CfgPatches" >> "ace_safemode")) then
{
	[_unit, currentWeapon _unit, currentMuzzle _unit] call ACE_SafeMode_fnc_unlockSafety;
	[_unit, currentWeapon _unit, currentMuzzle _unit] call ACE_SafeMode_fnc_lockSafety;
};