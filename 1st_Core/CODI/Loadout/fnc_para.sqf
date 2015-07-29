private["_backpack","_items","_unit"];

_unit = _this select 0;

_items = backpackItems _unit;
_backpack = backpack _unit;
removeBackpackGlobal _unit;
_unit addBackpackGlobal "B_Parachute";
if (isClass (configFile >> "CfgPatches" >> "ACE_Parachute")) then
{
	_unit linkItem "ACE_Altimeter";//TODO store old watch and restore it later
};
while {backpack _unit == "B_Parachute"} do
{
	sleep 10;
};
_unit addBackpackGlobal _backpack;
{
	_unit addItemToBackpack _x;
}
forEach _items;