private["_box"];

_box = _this select 0;

if (isServer) then
{
	clearWeaponCargoGlobal _box;
	clearMagazineCargoGlobal _box;
	clearItemCargoGlobal _box;
	clearBackpackCargoGlobal _box;
	_box allowDamage false;
};