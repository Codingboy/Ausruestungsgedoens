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

#include "CSSA3\CSSA3_header.hpp"

#include "CHVD\dialog.hpp"
class CfgFunctions
{
	#include "CHVD\CfgFunctions.hpp"
};

class Extended_PreInit_EventHandlers
{
    class ArsenalInit
	{
        init = "[] call compile preprocessFileLineNumbers '\1st_Core\preInit.sqf';";
    };
};
class Extended_PostInit_EventHandlers
{
    class ArsenalInit
	{
        init = "[] execVM '\1st_Core\postInit.sqf';";
    };
};

//class DefaultEventhandlers;
class Default_Extended_Eventhandlers;
class CfgVehicles
{
	class B_supplyCrate_F;
	class CODI_Loadout_AllInOne : B_supplyCrate_F
	{
		displayName = "1st Ausrüstungskiste";
		author = "Coding";
		class Eventhandlers : Default_Extended_Eventhandlers
		{
			init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Loadout\fnc_initAllInOne.sqf';";
		};
	};
	/*class B_Truck_01_mover_F;
	class B_Truck_01_ammo_F : B_Truck_01_mover_F
	{
		class Eventhandlers : Default_Extended_Eventhandlers
		{
			init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Support\fnc_initAmmo.sqf';";
		};
	};
	class B_Truck_01_fuel_F : B_Truck_01_mover_F
	{
		class Eventhandlers : Default_Extended_Eventhandlers
		{
			init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Support\fnc_initFuel.sqf';";
		};
	};
	class B_Truck_01_Repair_F : B_Truck_01_mover_F
	{
		class Eventhandlers : Default_Extended_Eventhandlers
		{
			init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Support\fnc_initRepair.sqf';";
		};
	};*/
};