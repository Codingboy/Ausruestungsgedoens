private["_side","_class","_silenced","_medic","_exSpec","_pilot","_sideInt","_hasNV","_classText"];
_side = lbText[2100, lbCurSel 2100];
_classText = lbText[2101, lbCurSel 2101];
_class = "Rifleman";
{
	if (_classText == _x select 1) then
	{
		_class = _x select 0;
	};
}
forEach CODI_Loadout_Internal_ClassTextMap;
_silenced = cbChecked (CODI_Loadout_ClassSelector displayCtrl 2800);
_medic = cbChecked (CODI_Loadout_ClassSelector displayCtrl 2801);
_exSpec = cbChecked (CODI_Loadout_ClassSelector displayCtrl 2802);
_pilot = cbChecked (CODI_Loadout_ClassSelector displayCtrl 2803);
_hasNV = cbChecked (CODI_Loadout_ClassSelector displayCtrl 2804);
closeDialog 0;
_sideInt = 0;
switch (_side) do
{
	case "NATO":
	{
		_sideInt = 0;
	};
	case "CSAT":
	{
		_sideInt = 1;
	};
	case "AAF":
	{
		_sideInt = 2;
	};
	case "BW (flecktarn)":
	{
		_sideInt = 3;
	};
	case "BW (tropentarn)":
	{
		_sideInt = 4;
	};
	case "US (marpat wd)":
	{
		_sideInt = 5;
	};
	case "US (marpat d)":
	{
		_sideInt = 6;
	};
};
[] call CODI_Loadout_fnc_reset;
[_class] call CODI_Loadout_fnc_loadout;
[player, _sideInt, _silenced, _hasNV, _medic, _exSpec, _pilot] call CODI_Loadout_fnc_equip;