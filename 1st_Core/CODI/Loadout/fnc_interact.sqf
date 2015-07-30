//[player,1,{hint "42";},[],{true},"Test","\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa"] call CODI_Loadout_fnc_interact;
private["_distance","_ace","_action","_img","_name","_condition","_arguments","_code","_actionType","_unit"];

_unit = _this select 0;
_actionType = _this select 1;
_code = _this select 2;
_arguments = _this select 3;
_condition = _this select 4;
_name = _this select 5;
_img = _this select 6;
_distance = _this select 7;

_action = [_name,_name,_img,_code,_condition,{},_arguments,[0,0,0],_distance] call ace_interact_menu_fnc_createAction;
_ace = "ACE_MainActions";
if (_actionType == 1) then
{
	_ace = "ACE_SelfActions";
};
if (_actionType == 0) then
{
	[_unit, _actionType, [_ace], _action] call ace_interact_menu_fnc_addActionToClass;
}
else
{
	[_unit, _actionType, [_ace], _action] call ace_interact_menu_fnc_addActionToObject;
};