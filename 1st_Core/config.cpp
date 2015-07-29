class CfgPatches
{
	class 1st_Core
	{
		authors[] = {"Coding","Commander"};
		version = 0.1;
		units[] = {"CODI_Loadout_AllInOne"};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {};
		license = "CC-BY-NC-SA 4.0";
		licenseURL = "http://creativecommons.org/licenses/by-nc-sa/4.0/";
	};
};

#include "CODI\Dialogs.hpp"
#include "CODI\Loadout\Dialogs.hpp"

class Extended_PreInit_EventHandlers
{
    class ArsenalInit
	{
        clientInit = "[] execVM '\1st_Core\initClient.sqf';";
        init = "[] call compile preprocessFileLineNumbers '\1st_Core\init.sqf';";
    };
};

class CfgVehicles
{
	class B_supplyCrate_F;
	class CODI_Loadout_AllInOne : B_supplyCrate_F
	{
		displayName = "1st Ausrüstungskiste";
		author = "Coding";
		class eventHandlers 
		{
			init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Loadout\fnc_initAllInOne.sqf';";
		};
	};
};