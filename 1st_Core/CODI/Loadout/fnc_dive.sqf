private["_backpack","_items","_unit","_goggles"];

_unit = _this select 0;

_uniformItems = uniformItems _unit;
_vestItems = vestItems _unit;
_uniform = uniform _unit;
_vest = vest _unit;
_goggles = goggles _unit;
removeUniform _unit;
removeVest _unit;
removeGoggles _unit;
switch (side _unit) do
{
	case opfor:
	{
		_unit forceAddUniform "U_O_Wetsuit";
		_unit addVest "V_RebreatherIR";
		_unit addGoggles "G_O_Diving";
	};
	case blufor:
	{
		_unit forceAddUniform "U_B_Wetsuit";
		_unit addVest "V_RebreatherB";
		_unit addGoggles "G_B_Diving";
	};
	case independent:
	{
		_unit forceAddUniform "U_I_Wetsuit";
		_unit addVest "V_RebreatherIA";
		_unit addGoggles "G_I_Diving";
	};
};
while {vest _unit != ""} do
{
	sleep 10;
};
removeUniform _unit;
removeVest _unit;
removeGoggles _unit;
_unit forceAddUniform _uniform;
_unit addVest _vest;
_unit addGoggles _goggles;
{
	_unit addItemToUniform _x;
}
forEach _uniformItems;
{
	_unit addItemToVest _x;
}
forEach _vestItems;