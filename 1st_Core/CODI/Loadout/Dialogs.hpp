class CODI_Loadout_ClassSelector
{
	idd = -1;
	onLoad = "_this execVM '\1st_Core\CODI\Loadout\fnc_initClassSelector.sqf';";
	class controls
	{
/* #Koveji
$[
	1.063,
	["class",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[1000,"",[1,"Side",["0.408333 * safezoneW + safezoneX","0.313073 * safezoneH + safezoneY","0.0401042 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1001,"",[1,"Class",["0.408333 * safezoneW + safezoneX","0.34606 * safezoneH + safezoneY","0.0458333 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1002,"",[1,"Silenced",["0.408333 * safezoneW + safezoneX","0.379047 * safezoneH + safezoneY","0.0458333 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2100,"",[1,"",["0.459896 * safezoneW + safezoneX","0.313073 * safezoneH + safezoneY","0.120313 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2101,"",[1,"",["0.459896 * safezoneW + safezoneX","0.34606 * safezoneH + safezoneY","0.120313 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2800,"",[1,"",["0.459896 * safezoneW + safezoneX","0.379047 * safezoneH + safezoneY","0.0171875 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1003,"",[1,"Medic",["0.408333 * safezoneW + safezoneX","0.445021 * safezoneH + safezoneY","0.0458333 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1004,"",[1,"ExSpec",["0.408333 * safezoneW + safezoneX","0.478009 * safezoneH + safezoneY","0.0458333 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1005,"",[1,"Pilot",["0.408333 * safezoneW + safezoneX","0.510996 * safezoneH + safezoneY","0.0458333 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2801,"",[1,"",["0.459896 * safezoneW + safezoneX","0.445021 * safezoneH + safezoneY","0.0171875 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2802,"",[1,"",["0.459896 * safezoneW + safezoneX","0.478009 * safezoneH + safezoneY","0.0171875 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2803,"",[1,"",["0.459896 * safezoneW + safezoneX","0.510996 * safezoneH + safezoneY","0.0171875 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1600,"",[1,"Equip",["0.408333 * safezoneW + safezoneX","0.543983 * safezoneH + safezoneY","0.171875 * safezoneW","0.0329871 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2200,"",[1,"",["0.396875 * safezoneW + safezoneX","0.302078 * safezoneH + safezoneY","0.200521 * safezoneW","0.285889 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1006,"",[1,"hasNV",["0.408333 * safezoneW + safezoneX","0.412034 * safezoneH + safezoneY","0.0458333 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2804,"",[1,"",["0.459896 * safezoneW + safezoneX","0.412034 * safezoneH + safezoneY","0.0171875 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Coding, v1.063, #Xuzogo)
////////////////////////////////////////////////////////

class RscText_1000: CODIRscText
{
	idc = 1000;
	text = "Side"; //--- ToDo: Localize;
	x = 0.408333 * safezoneW + safezoneX;
	y = 0.313073 * safezoneH + safezoneY;
	w = 0.0401042 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class RscText_1001: CODIRscText
{
	idc = 1001;
	text = "Class"; //--- ToDo: Localize;
	x = 0.408333 * safezoneW + safezoneX;
	y = 0.34606 * safezoneH + safezoneY;
	w = 0.0458333 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class RscText_1002: CODIRscText
{
	idc = 1002;
	text = "Silenced"; //--- ToDo: Localize;
	x = 0.408333 * safezoneW + safezoneX;
	y = 0.412034 * safezoneH + safezoneY;
	w = 0.0458333 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class RscCombo_2100: CODIRscCombo
{
	idc = 2100;
	x = 0.459896 * safezoneW + safezoneX;
	y = 0.313073 * safezoneH + safezoneY;
	w = 0.120313 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class RscCombo_2101: CODIRscCombo
{
	idc = 2101;
	x = 0.459896 * safezoneW + safezoneX;
	y = 0.34606 * safezoneH + safezoneY;
	w = 0.120313 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class RscCheckbox_2800: CODIRscCheckbox
{
	idc = 2800;
	x = 0.459896 * safezoneW + safezoneX;
	y = 0.412034 * safezoneH + safezoneY;
	w = 0.0171875 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class RscText_1003: CODIRscText
{
	idc = 1003;
	text = "Medic"; //--- ToDo: Localize;
	x = 0.408333 * safezoneW + safezoneX;
	y = 0.445021 * safezoneH + safezoneY;
	w = 0.0458333 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class RscText_1004: CODIRscText
{
	idc = 1004;
	text = "ExSpec"; //--- ToDo: Localize;
	x = 0.408333 * safezoneW + safezoneX;
	y = 0.478009 * safezoneH + safezoneY;
	w = 0.0458333 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class RscText_1005: CODIRscText
{
	idc = 1005;
	text = "Pilot"; //--- ToDo: Localize;
	x = 0.408333 * safezoneW + safezoneX;
	y = 0.510996 * safezoneH + safezoneY;
	w = 0.0458333 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class RscCheckbox_2801: CODIRscCheckbox
{
	idc = 2801;
	x = 0.459896 * safezoneW + safezoneX;
	y = 0.445021 * safezoneH + safezoneY;
	w = 0.0171875 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class RscCheckbox_2802: CODIRscCheckbox
{
	idc = 2802;
	x = 0.459896 * safezoneW + safezoneX;
	y = 0.478009 * safezoneH + safezoneY;
	w = 0.0171875 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class RscCheckbox_2803: CODIRscCheckbox
{
	idc = 2803;
	x = 0.459896 * safezoneW + safezoneX;
	y = 0.510996 * safezoneH + safezoneY;
	w = 0.0171875 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class RscCheckbox_2804: CODIRscCheckbox
{
	idc = 2804;
	x = 0.459896 * safezoneW + safezoneX;
	y = 0.379047 * safezoneH + safezoneY;
	w = 0.0171875 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class RscText_1006: CODIRscText
{
	idc = 1006;
	text = "hasNV"; //--- ToDo: Localize;
	x = 0.408333 * safezoneW + safezoneX;
	y = 0.379047 * safezoneH + safezoneY;
	w = 0.0458333 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class RscButton_1600: CODIRscButton
{
	idc = 1600;
	text = "Equip"; //--- ToDo: Localize;
	x = 0.408333 * safezoneW + safezoneX;
	y = 0.543983 * safezoneH + safezoneY;
	w = 0.171875 * safezoneW;
	h = 0.0329871 * safezoneH;
	action = "call CODI_Loadout_fnc_loadoutSelector";
};
class IGUIBack_2200: CODIIGUIBack
{
	idc = 2200;
	x = 0.396875 * safezoneW + safezoneX;
	y = 0.291081 * safezoneH + safezoneY;
	w = 0.194792 * safezoneW;
	h = 0.30788 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

	};
};











class CODI_Loadout_Teleport
{
	idd = -1;
	onLoad = "_this execVM '\1st_Core\CODI\Loadout\fnc_initTeleport.sqf';";
	class controls
	{
/* #Tykexu
$[
	1.063,
	["asd",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[2100,"",[1,"",["0.419792 * safezoneW + safezoneX","0.445021 * safezoneH + safezoneY","0.160417 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1600,"",[1,"Teleport",["0.419792 * safezoneW + safezoneX","0.478009 * safezoneH + safezoneY","0.160417 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2200,"",[1,"",["0.414063 * safezoneW + safezoneX","0.434026 * safezoneH + safezoneY","0.171875 * safezoneW","0.07697 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Coding, v1.063, #Tykexu)
////////////////////////////////////////////////////////

class RscCombo_2100: CODIRscCombo
{
	idc = 2100;
	x = 0.419792 * safezoneW + safezoneX;
	y = 0.445021 * safezoneH + safezoneY;
	w = 0.160417 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class RscButton_1600: CODIRscButton
{
	idc = 1600;
	text = "Teleport"; //--- ToDo: Localize;
	x = 0.419792 * safezoneW + safezoneX;
	y = 0.478009 * safezoneH + safezoneY;
	w = 0.160417 * safezoneW;
	h = 0.0219914 * safezoneH;
	action = "call CODI_Loadout_fnc_teleport";
};
class IGUIBack_2200: CODIIGUIBack
{
	idc = 2200;
	x = 0.414063 * safezoneW + safezoneX;
	y = 0.434026 * safezoneH + safezoneY;
	w = 0.171875 * safezoneW;
	h = 0.07697 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
	};
};









class CODI_Loadout_ScopeSelector
{
	idd = -1;
	onLoad = "_this execVM '\1st_Core\CODI\Loadout\fnc_initScopeSelector.sqf';";
	class controls
	{
/* #Poqisi
$[
	1.063,
	["Scopes",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[1600,"OK",[1,"OK",["0.408333 * safezoneW + safezoneX","0.412034 * safezoneH + safezoneY","0.183333 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2100,"Scopes",[1,"",["0.408333 * safezoneW + safezoneX","0.379047 * safezoneH + safezoneY","0.183333 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2200,"",[1,"",["0.402604 * safezoneW + safezoneX","0.368051 * safezoneH + safezoneY","0.194792 * safezoneW","0.07697 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Coding, v1.063, #Poqisi)
////////////////////////////////////////////////////////

class OK: CODIRscButton
{
	idc = 1600;
	text = "OK"; //--- ToDo: Localize;
	x = 0.408333 * safezoneW + safezoneX;
	y = 0.412034 * safezoneH + safezoneY;
	w = 0.183333 * safezoneW;
	h = 0.0219914 * safezoneH;
	action = "call CODI_Loadout_fnc_equipScope";
};
class Scopes: CODIRscCombo
{
	idc = 2100;
	x = 0.408333 * safezoneW + safezoneX;
	y = 0.379047 * safezoneH + safezoneY;
	w = 0.183333 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class IGUIBack_2200: CODIIGUIBack
{
	idc = 2200;
	x = 0.402604 * safezoneW + safezoneX;
	y = 0.368051 * safezoneH + safezoneY;
	w = 0.194792 * safezoneW;
	h = 0.07697 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
	};
};









class CODI_Loadout_EnableVA
{
	idd = -1;
	onLoad = "_this execVM '\1st_Core\CODI\Loadout\fnc_initEnableVA.sqf';";
	class controls
	{
/* #Tykexu
$[
	1.063,
	["asd",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[2100,"",[1,"",["0.419792 * safezoneW + safezoneX","0.445021 * safezoneH + safezoneY","0.160417 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1600,"",[1,"Teleport",["0.419792 * safezoneW + safezoneX","0.478009 * safezoneH + safezoneY","0.160417 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2200,"",[1,"",["0.414063 * safezoneW + safezoneX","0.434026 * safezoneH + safezoneY","0.171875 * safezoneW","0.07697 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Coding, v1.063, #Tykexu)
////////////////////////////////////////////////////////

class RscCombo_2100: CODIRscCombo
{
	idc = 2100;
	x = 0.419792 * safezoneW + safezoneX;
	y = 0.445021 * safezoneH + safezoneY;
	w = 0.160417 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class RscButton_1600: CODIRscButton
{
	idc = 1600;
	text = "Enable VA for person"; //--- ToDo: Localize;
	x = 0.419792 * safezoneW + safezoneX;
	y = 0.478009 * safezoneH + safezoneY;
	w = 0.160417 * safezoneW;
	h = 0.0219914 * safezoneH;
	action = "call CODI_Loadout_fnc_enableVA";
};
class IGUIBack_2200: CODIIGUIBack
{
	idc = 2200;
	x = 0.414063 * safezoneW + safezoneX;
	y = 0.434026 * safezoneH + safezoneY;
	w = 0.171875 * safezoneW;
	h = 0.07697 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
	};
};