private["_class","_blufor","_opfor","_independent","_bwfleck","_bwtropen","_all","_usfleck","_ustropen"];

_class = param [0, "Unarmed"];

_blufor = 0;
_opfor = 1;
_independent = 2;
_bwfleck = 3;
_bwtropen = 4;
_usfleck = 5;
_ustropen = 6;
_all = [_blufor, _opfor, _independent, _bwfleck, _bwtropen, _usfleck, _ustropen];

//set variables
switch (toLower _class) do
{
	case toLower "b_soldier_unarmed_f";
	case toLower "o_soldier_unarmed_f";
	case toLower "i_soldier_unarmed_f";
	case toLower "b_survivor_F";
	case toLower "o_survivor_F";
	case toLower "i_survivor_F";
	case toLower "Unarmed":
	{
		CODI_Loadout_Class = "Unarmed";
		[_blufor, "U_B_CombatUniform_mcam"] call CODI_Loadout_fnc_setUniform;
		[_opfor, "U_O_CombatUniform_ocamo"] call CODI_Loadout_fnc_setUniform;
		[_independent, "U_I_CombatUniform"] call CODI_Loadout_fnc_setUniform;
		if (isClass (configFile >> "CfgPatches" >> "BWA3_Units")) then
		{
			[_bwfleck, "BWA3_Uniform_Fleck"] call CODI_Loadout_fnc_setUniform;
			[_bwtropen, "BWA3_Uniform_Tropen"] call CODI_Loadout_fnc_setUniform;
			[_bwfleck, "BWA3_M92_Fleck"] call CODI_Loadout_fnc_setHelmet;
			[_bwtropen, "BWA3_M92_Tropen"] call CODI_Loadout_fnc_setHelmet;
			[_bwfleck, "BWA3_Vest_Rifleman1_Fleck"] call CODI_Loadout_fnc_setVest;
			[_bwtropen, "BWA3_Vest_Rifleman1_Tropen"] call CODI_Loadout_fnc_setVest;
		};
		if (isClass (configFile >> "CfgPatches" >> "German_feldbluse_patches")) then
		{
			[_bwfleck, "german_feldbluse_fleck_kampf"] call CODI_Loadout_fnc_setUniform;
			[_bwtropen, "german_feldbluse_tropen_kampf"] call CODI_Loadout_fnc_setUniform;
			[_bwfleck, "V_PlateCarrier1_blk"] call CODI_Loadout_fnc_setVest;
			[_bwtropen, "V_PlateCarrier1_blk"] call CODI_Loadout_fnc_setVest;
		};
		if (isClass (configFile >> "CfgPatches" >> "example_german_headgear_config")) then
		{
			[_bwfleck, "m92_fleck_h"] call CODI_Loadout_fnc_setHelmet;
			[_bwtropen, "m92_tropen_h"] call CODI_Loadout_fnc_setHelmet;
		};
		if (isClass (configFile >> "CfgPatches" >> "rhsusf_c_troops")) then
		{
			[_ustropen, "rhs_uniform_FROG01_d"] call CODI_Loadout_fnc_setUniform;
			[_ustropen, "rhsusf_mich_helmet_marpatd"] call CODI_Loadout_fnc_setHelmet;
			[_ustropen, "rhsusf_spc"] call CODI_Loadout_fnc_setVest;
			[_usfleck, "rhs_uniform_FROG01_wd"] call CODI_Loadout_fnc_setUniform;
			[_usfleck, "rhsusf_mich_helmet_marpatwd"] call CODI_Loadout_fnc_setHelmet;
			[_usfleck, "rhsusf_spc"] call CODI_Loadout_fnc_setVest;
		};
		[_blufor, "V_PlateCarrier1_blk"] call CODI_Loadout_fnc_setVest;
		[_opfor, "V_PlateCarrier1_blk"] call CODI_Loadout_fnc_setVest;
		[_independent, "V_PlateCarrierIAGL_dgtl"] call CODI_Loadout_fnc_setVest;
		[_blufor, "B_Carryall_mcamo"] call CODI_Loadout_fnc_setBackpack;
		[_opfor, "B_Carryall_ocamo"] call CODI_Loadout_fnc_setBackpack;
		[_independent, "B_Carryall_oli"] call CODI_Loadout_fnc_setBackpack;
		if (isClass (configFile >> "CfgPatches" >> "BW_Bags")) then
		{
			[_bwfleck, "seesack_fleck"] call CODI_Loadout_fnc_setBackpack;
			[_bwtropen, "seesack_tropen"] call CODI_Loadout_fnc_setBackpack;
			[_usfleck, "seesack_fleck"] call CODI_Loadout_fnc_setBackpack;
			[_ustropen, "seesack_tropen"] call CODI_Loadout_fnc_setBackpack;
		}
		else
		{
			[_bwfleck, "B_Carryall_oli"] call CODI_Loadout_fnc_setBackpack;
			[_bwtropen, "B_Carryall_mcamo"] call CODI_Loadout_fnc_setBackpack;
			[_usfleck, "B_Carryall_oli"] call CODI_Loadout_fnc_setBackpack;
			[_ustropen, "B_Carryall_mcamo"] call CODI_Loadout_fnc_setBackpack;
		};
		[_blufor, "H_HelmetSpecB"] call CODI_Loadout_fnc_setHelmet;
		[_opfor, "H_HelmetSpecO_ocamo"] call CODI_Loadout_fnc_setHelmet;
		[_independent, "H_HelmetIA"] call CODI_Loadout_fnc_setHelmet;
		[_blufor, "NVGoggles"] call CODI_Loadout_fnc_setNV;
		[_opfor, "NVGoggles_OPFOR"] call CODI_Loadout_fnc_setNV;
		[_independent, "NVGoggles_INDEP"] call CODI_Loadout_fnc_setNV;
		[_bwfleck, "NVGoggles_INDEP"] call CODI_Loadout_fnc_setNV;
		[_bwtropen, "NVGoggles"] call CODI_Loadout_fnc_setNV;
		[_usfleck, "NVGoggles_INDEP"] call CODI_Loadout_fnc_setNV;
		[_ustropen, "NVGoggles"] call CODI_Loadout_fnc_setNV;
		[_blufor, "tf_anprc152"] call CODI_Loadout_fnc_setRadio;
		[_opfor, "tf_fadak"] call CODI_Loadout_fnc_setRadio;
		[_independent, "tf_anprc148jem"] call CODI_Loadout_fnc_setRadio;
		[_bwfleck, "tf_anprc152"] call CODI_Loadout_fnc_setRadio;
		[_bwtropen, "tf_anprc152"] call CODI_Loadout_fnc_setRadio;
		[_usfleck, "tf_anprc152"] call CODI_Loadout_fnc_setRadio;
		[_ustropen, "tf_anprc152"] call CODI_Loadout_fnc_setRadio;
		{
			[_x, "ItemMap"] call CODI_Loadout_fnc_setMap;
			[_x, "Binocular"] call CODI_Loadout_fnc_setBinocular;
			[_x, "ItemWatch"] call CODI_Loadout_fnc_setWatch;
			[_x, "ItemCompass"] call CODI_Loadout_fnc_setCompass;
			[_x, "ItemGPS"] call CODI_Loadout_fnc_setGPS;
			if (isClass (configFile >> "CfgPatches" >> "ace_hearing")) then
			{
				[_x, "ACE_EarPlugs", 1] call CODI_Loadout_fnc_addUniformItem;
			};
		}
		forEach _all;
		if (isClass (configFile >> "CfgPatches" >> "FETT_FatTrack")) then
		{
			[_blufor, "b_itemGPS_FT"] call CODI_Loadout_fnc_setGPS;
			[_opfor, "o_itemGPS_FT"] call CODI_Loadout_fnc_setGPS;
			[_independent, "i_itemGPS_FT"] call CODI_Loadout_fnc_setGPS;
			[_bwfleck, "b_itemGPS_FT"] call CODI_Loadout_fnc_setGPS;
			[_bwtropen, "b_itemGPS_FT"] call CODI_Loadout_fnc_setGPS;
			[_usfleck, "b_itemGPS_FT"] call CODI_Loadout_fnc_setGPS;
			[_ustropen, "b_itemGPS_FT"] call CODI_Loadout_fnc_setGPS;
		};
		if (isClass (configFile >> "CfgPatches" >> "ace_medical")) then
		{
			{
				//[_x, "ACE_quikclot", 15] call CODI_Loadout_fnc_addUniformItem;
				[_x, "ACE_morphine", 5] call CODI_Loadout_fnc_addUniformItem;
				[_x, "ACE_epinephrine", 2] call CODI_Loadout_fnc_addUniformItem;
				[_x, "ACE_elasticBandage", 10] call CODI_Loadout_fnc_addUniformItem;
				[_x, "ACE_packingBandage", 5] call CODI_Loadout_fnc_addUniformItem;
				[_x, "ACE_tourniquet", 1] call CODI_Loadout_fnc_addUniformItem;
			}
			forEach _all;
		}
		else
		{
			{
				[_x, "FirstAidKit", 3] call CODI_Loadout_fnc_addUniformItem;
			}
			forEach _all;
		};
		{
			_faction = _x;
			{
				[_faction, _x select 0, _x select 1] call CODI_Loadout_fnc_addUniformItem;
			}
			forEach [["SmokeShellGreen",1],["Chemlight_green",1]];
			if (isClass (configFile >> "CfgPatches" >> "ace_grenades")) then
			{
				[_faction, "ACE_HandFlare_Green", 1] call CODI_Loadout_fnc_addUniformItem;
			};
			if (isClass (configFile >> "CfgPatches" >> "ace_captives")) then
			{
				[_faction, "ACE_CableTie", 3] call CODI_Loadout_fnc_addUniformItem;
			};
			if (isClass (configFile >> "CfgPatches" >> "ACE_MapTools")) then
			{
				[_faction, "ACE_MapTools", 1] call CODI_Loadout_fnc_addVestItem;
			};
		}
		forEach _all;
	};
	case toLower "Rifleman";
	case toLower "B_Soldier_F";
	case toLower "O_Soldier_F";
	case toLower "I_Soldier_F":
	{
		["Unarmed"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "Rifleman";
		{
			_faction = _x;
			[_faction, "HandGrenade", 2] call CODI_Loadout_fnc_addVestItem;
			if (isClass (configFile >> "CfgPatches" >> "SUP_flash")) then
			{
				[_faction, "SUPER_flash", 2] call CODI_Loadout_fnc_addVestItem;
			};
			[_x, "11Rnd_45ACP_Mag", 1] call CODI_Loadout_fnc_addBackpackAmmo;
			[_x, "SmokeShell", 2] call CODI_Loadout_fnc_addBackpackItem;
		}
		forEach _all;
		if (isClass (configFile >> "CfgPatches" >> "ace_ballistics")) then
		{
			[_independent, "30Rnd_556x45_Stanag_Tracer_Yellow", 5] call CODI_Loadout_fnc_addVestAmmo;
			[_independent, "ACE_30Rnd_556x45_Stanag_Mk318_mag", 4] call CODI_Loadout_fnc_addVestAmmo;
			//[_independent, "ACE_30Rnd_556x45_Stanag_Mk318_mag"] call CODI_Loadout_fnc_addRifleAmmo;
		}
		else
		{
			[_independent, "30Rnd_556x45_Stanag_Tracer_Yellow", 5] call CODI_Loadout_fnc_addVestAmmo;
			[_independent, "30Rnd_556x45_Stanag", 4] call CODI_Loadout_fnc_addVestAmmo;
			//[_independent, "30Rnd_556x45_Stanag"] call CODI_Loadout_fnc_addRifleAmmo;
		};
		if (isClass (configFile >> "CfgPatches" >> "rhsusf_c_weapons")) then
		{
			[_usfleck, "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 5] call CODI_Loadout_fnc_addVestAmmo;
			[_usfleck, "rhs_mag_30Rnd_556x45_Mk318_Stanag", 4] call CODI_Loadout_fnc_addVestAmmo;
			//[_usfleck, "rhs_mag_30Rnd_556x45_Mk318_Stanag"] call CODI_Loadout_fnc_addRifleAmmo;
			[_usfleck, "rhs_weap_m4a1_carryhandle"] call CODI_Loadout_fnc_setRifle;
			[_ustropen, "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 5] call CODI_Loadout_fnc_addVestAmmo;
			[_ustropen, "rhs_mag_30Rnd_556x45_Mk318_Stanag", 4] call CODI_Loadout_fnc_addVestAmmo;
			//[_ustropen, "rhs_mag_30Rnd_556x45_Mk318_Stanag"] call CODI_Loadout_fnc_addRifleAmmo;
			[_ustropen, "rhs_weap_m4a1_carryhandle"] call CODI_Loadout_fnc_setRifle;
		};
		[_blufor, "30Rnd_65x39_caseless_mag_Tracer", 5] call CODI_Loadout_fnc_addVestAmmo;
		[_blufor, "30Rnd_65x39_caseless_mag", 4] call CODI_Loadout_fnc_addVestAmmo;
		[_opfor, "30Rnd_65x39_caseless_green_mag_Tracer", 5] call CODI_Loadout_fnc_addVestAmmo;
		[_opfor, "30Rnd_65x39_caseless_green", 4] call CODI_Loadout_fnc_addVestAmmo;
		//[_blufor, "30Rnd_65x39_caseless_mag"] call CODI_Loadout_fnc_addRifleAmmo;
		//[_opfor, "30Rnd_65x39_caseless_green"] call CODI_Loadout_fnc_addRifleAmmo;
		[_blufor, "arifle_MX_F"] call CODI_Loadout_fnc_setRifle;
		[_opfor, "arifle_Katiba_F"] call CODI_Loadout_fnc_setRifle;
		[_independent, "arifle_Mk20_F"] call CODI_Loadout_fnc_setRifle;
		/*[_bwfleck, "hlc_20rnd_762x51_T_G3", 6] call CODI_Loadout_fnc_addVestAmmo;
		[_bwfleck, "hlc_20rnd_762x51_Mk316_G3", 6] call CODI_Loadout_fnc_addVestAmmo;
		[_bwtropen, "hlc_20rnd_762x51_T_G3", 6] call CODI_Loadout_fnc_addVestAmmo;
		[_bwtropen, "hlc_20rnd_762x51_Mk316_G3", 6] call CODI_Loadout_fnc_addVestAmmo;
		[_bwfleck, "hlc_20rnd_762x51_Mk316_G3"] call CODI_Loadout_fnc_addRifleAmmo;
		[_bwtropen, "hlc_20rnd_762x51_Mk316_G3"] call CODI_Loadout_fnc_addRifleAmmo;
		[_bwfleck, "hlc_rifle_g3ka4"] call CODI_Loadout_fnc_setRifle;
		[_bwtropen, "hlc_rifle_g3ka4"] call CODI_Loadout_fnc_setRifle;
		[_bwfleck, "muzzle_snds_B"] call CODI_Loadout_fnc_setRifleSilencer;
		[_bwtropen, "muzzle_snds_B"] call CODI_Loadout_fnc_setRifleSilencer;
		[_bwfleck, "bipod_01_F_blk"] call CODI_Loadout_fnc_setRifleBipod;
		[_bwtropen, "bipod_01_F_blk"] call CODI_Loadout_fnc_setRifleBipod;*/
		[_bwfleck, "BWA3_30Rnd_556x45_G36_Tracer", 5] call CODI_Loadout_fnc_addVestAmmo;
		[_bwfleck, "BWA3_30Rnd_556x45_G36", 4] call CODI_Loadout_fnc_addVestAmmo;
		[_bwtropen, "BWA3_30Rnd_556x45_G36_Tracer", 5] call CODI_Loadout_fnc_addVestAmmo;
		[_bwtropen, "BWA3_30Rnd_556x45_G36", 4] call CODI_Loadout_fnc_addVestAmmo;
		[_bwfleck, "BWA3_30Rnd_556x45_G36"] call CODI_Loadout_fnc_addRifleAmmo;
		[_bwtropen, "BWA3_30Rnd_556x45_G36"] call CODI_Loadout_fnc_addRifleAmmo;
		[_bwfleck, "BWA3_G36"] call CODI_Loadout_fnc_setRifle;
		[_bwtropen, "BWA3_G36"] call CODI_Loadout_fnc_setRifle;
		[_bwfleck, "BWA3_muzzle_snds_G36"] call CODI_Loadout_fnc_setRifleSilencer;
		[_bwtropen, "BWA3_muzzle_snds_G36"] call CODI_Loadout_fnc_setRifleSilencer;
		[_bwfleck, ""] call CODI_Loadout_fnc_setRifleBipod;
		[_bwtropen, ""] call CODI_Loadout_fnc_setRifleBipod;
		if (isClass (configFile >> "CfgPatches" >> "ace_optics")) then
		{
			[_blufor, "ACE_optic_Hamr_PIP"] call CODI_Loadout_fnc_setRifleOptic;
			[_opfor, "ACE_optic_Arco_PIP"] call CODI_Loadout_fnc_setRifleOptic;
			/*[_bwfleck, "ACE_optic_Hamr_PIP"] call CODI_Loadout_fnc_setRifleOptic;
			[_bwtropen, "ACE_optic_Hamr_PIP"] call CODI_Loadout_fnc_setRifleOptic;*/
			[_usfleck, "ACE_optic_Hamr_PIP"] call CODI_Loadout_fnc_setRifleOptic;
			[_ustropen, "ACE_optic_Hamr_PIP"] call CODI_Loadout_fnc_setRifleOptic;
		}
		else
		{
			[_blufor, "optic_Hamr"] call CODI_Loadout_fnc_setRifleOptic;
			[_opfor, "optic_Arco"] call CODI_Loadout_fnc_setRifleOptic;
			[_usfleck, "optic_Hamr"] call CODI_Loadout_fnc_setRifleOptic;
			[_ustropen, "optic_Hamr"] call CODI_Loadout_fnc_setRifleOptic;
		};
		[_bwfleck, "BWA3_optic_ZO4x30"] call CODI_Loadout_fnc_setRifleOptic;
		[_bwtropen, "BWA3_optic_ZO4x30"] call CODI_Loadout_fnc_setRifleOptic;
		[_independent, "optic_MRCO"] call CODI_Loadout_fnc_setRifleOptic;
		[_blufor, "muzzle_snds_H"] call CODI_Loadout_fnc_setRifleSilencer;
		[_opfor, "muzzle_snds_H"] call CODI_Loadout_fnc_setRifleSilencer;
		[_independent, "muzzle_snds_M"] call CODI_Loadout_fnc_setRifleSilencer;
		[_usfleck, "rhsusf_acc_nt4_black"] call CODI_Loadout_fnc_setRifleSilencer;
		[_ustropen, "rhsusf_acc_nt4_black"] call CODI_Loadout_fnc_setRifleSilencer;
		[_blufor, "bipod_01_F_snd"] call CODI_Loadout_fnc_setRifleBipod;
		//[_usfleck, "bipod_01_F_blk"] call CODI_Loadout_fnc_setRifleBipod;
		//[_ustropen, "bipod_01_F_blk"] call CODI_Loadout_fnc_setRifleBipod;
		{
			[_x, "acc_flashlight"] call CODI_Loadout_fnc_setRifleLaser;
			[_x, "hgun_Pistol_heavy_01_F"] call CODI_Loadout_fnc_setPistol;
			[_x, "optic_MRD"] call CODI_Loadout_fnc_setPistolOptic;
			[_x, "muzzle_snds_acp"] call CODI_Loadout_fnc_setPistolSilencer;
			[_x, "11Rnd_45ACP_Mag"] call CODI_Loadout_fnc_addPistolAmmo;
			if (_x in [_bwfleck,_bwtropen]) then
			{
				[_x, "BWA3_acc_VarioRay_irlaser"] call CODI_Loadout_fnc_setRifleLaser;
			};
			if (_x in [_usfleck,_ustropen]) then
			{
				[_x, "rhsusf_acc_anpeq15"] call CODI_Loadout_fnc_setRifleLaser;
			};
		}
		forEach _all;
	};
	case toLower "LMG";
	case toLower "B_soldier_AR_F";
	case toLower "O_Soldier_AR_F";
	case toLower "I_Soldier_AR_F":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "LMG";
		{
			[_x] call CODI_Loadout_fnc_clearVestAmmo;
			[_x] call CODI_Loadout_fnc_clearRifleAmmo;
			if (isClass (configFile >> "CfgPatches" >> "ace_overheating")) then
			{
				[_x, "ACE_SpareBarrel", 1] call CODI_Loadout_fnc_addBackpackItem;
			};
			[_x, "G_Combat"] call CODI_Loadout_fnc_setGoggles;
		}
		forEach _all;
		[_blufor, "arifle_MX_SW_F"] call CODI_Loadout_fnc_setRifle;
		[_opfor, "LMG_Mk200_F"] call CODI_Loadout_fnc_setRifle;
		[_independent, "LMG_Mk200_F"] call CODI_Loadout_fnc_setRifle;
		[_bwfleck, "BWA3_MG4"] call CODI_Loadout_fnc_setRifle;
		[_bwtropen, "BWA3_MG4"] call CODI_Loadout_fnc_setRifle;
		[_usfleck, "rhs_weap_m249_pip_S"] call CODI_Loadout_fnc_setRifle;
		[_ustropen, "rhs_weap_m249_pip_S"] call CODI_Loadout_fnc_setRifle;
		[_opfor, "bipod_01_F_blk"] call CODI_Loadout_fnc_setRifleBipod;
		[_independent, "bipod_01_F_blk"] call CODI_Loadout_fnc_setRifleBipod;
		[_blufor, "100Rnd_65x39_caseless_mag_Tracer", 9] call CODI_Loadout_fnc_addBackpackAmmo;
		[_opfor, "200Rnd_65x39_cased_Box_Tracer", 4] call CODI_Loadout_fnc_addBackpackAmmo;
		[_independent, "200Rnd_65x39_cased_Box_Tracer", 4] call CODI_Loadout_fnc_addBackpackAmmo;
		[_bwfleck, "BWA3_200Rnd_556x45", 4] call CODI_Loadout_fnc_addBackpackAmmo;
		[_bwtropen, "BWA3_200Rnd_556x45", 4] call CODI_Loadout_fnc_addBackpackAmmo;
		[_usfleck, "rhs_200rnd_556x45_T_SAW", 4] call CODI_Loadout_fnc_addBackpackAmmo;
		[_ustropen, "rhs_200rnd_556x45_T_SAW", 4] call CODI_Loadout_fnc_addBackpackAmmo;
		[_blufor, "100Rnd_65x39_caseless_mag_Tracer"] call CODI_Loadout_fnc_addRifleAmmo;
		[_opfor, "200Rnd_65x39_cased_Box_Tracer"] call CODI_Loadout_fnc_addRifleAmmo;
		[_independent, "200Rnd_65x39_cased_Box_Tracer"] call CODI_Loadout_fnc_addRifleAmmo;
		[_bwfleck, "BWA3_200Rnd_556x45"] call CODI_Loadout_fnc_addRifleAmmo;
		[_bwtropen, "BWA3_200Rnd_556x45"] call CODI_Loadout_fnc_addRifleAmmo;
		[_usfleck, "rhs_200rnd_556x45_T_SAW"] call CODI_Loadout_fnc_addRifleAmmo;
		[_ustropen, "rhs_200rnd_556x45_T_SAW"] call CODI_Loadout_fnc_addRifleAmmo;
		[_opfor, "muzzle_snds_H_MG"] call CODI_Loadout_fnc_setRifleSilencer;
		[_independent, "muzzle_snds_H_MG"] call CODI_Loadout_fnc_setRifleSilencer;
		[_usfleck, ""] call CODI_Loadout_fnc_setRifleSilencer;
		[_ustropen, ""] call CODI_Loadout_fnc_setRifleSilencer;
	};
	case toLower "B_soldier_AAR_F";
	case toLower "AsLMG":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "AsLMG";
		[_blufor, "100Rnd_65x39_caseless_mag_Tracer", 10] call CODI_Loadout_fnc_addBackpackAmmo;
		[_opfor, "200Rnd_65x39_cased_Box_Tracer", 5] call CODI_Loadout_fnc_addBackpackAmmo;
		[_independent, "200Rnd_65x39_cased_Box_Tracer", 5] call CODI_Loadout_fnc_addBackpackAmmo;
		[_bwfleck, "BWA3_200Rnd_556x45", 5] call CODI_Loadout_fnc_addBackpackAmmo;
		[_bwtropen, "BWA3_200Rnd_556x45", 5] call CODI_Loadout_fnc_addBackpackAmmo;
		[_usfleck, "rhs_200rnd_556x45_T_SAW", 5] call CODI_Loadout_fnc_addBackpackAmmo;
		[_ustropen, "rhs_200rnd_556x45_T_SAW", 5] call CODI_Loadout_fnc_addBackpackAmmo;
	};
	case toLower "MMG":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "MMG";
		{
			[_x] call CODI_Loadout_fnc_clearRifleAmmo;
			[_x] call CODI_Loadout_fnc_clearVestAmmo;
			if (isClass (configFile >> "CfgPatches" >> "ace_overheating")) then
			{
				[_x, "ACE_SpareBarrel", 1] call CODI_Loadout_fnc_addBackpackItem;
			};
			[_x, "G_Combat"] call CODI_Loadout_fnc_setGoggles;
			[_x, ""] call CODI_Loadout_fnc_setRifleSilencer;
			[_x, ""] call CODI_Loadout_fnc_setRifleBipod;
			if (_x in [_blufor,_opfor,_independent]) then
			{
				[_x, "LMG_Zafir_F"] call CODI_Loadout_fnc_setRifle;
				[_x, "150Rnd_762x54_Box_Tracer"] call CODI_Loadout_fnc_addRifleAmmo;
				[_x, "150Rnd_762x54_Box_Tracer", 4] call CODI_Loadout_fnc_addBackpackAmmo;
			};
			if (_x in [_bwfleck,_bwtropen]) then
			{
				[_x, "BWA3_MG5"] call CODI_Loadout_fnc_setRifle;
				[_x, "BWA3_120Rnd_762x51"] call CODI_Loadout_fnc_addRifleAmmo;
				[_x, "BWA3_120Rnd_762x51", 4] call CODI_Loadout_fnc_addBackpackAmmo;
			};
			if (_x in [_usfleck,_ustropen]) then
			{
				[_x, "hlc_lmg_M60E4"] call CODI_Loadout_fnc_setRifle;
				[_x, "hlc_100Rnd_762x51_T_M60E4"] call CODI_Loadout_fnc_addRifleAmmo;
				[_x, "hlc_100Rnd_762x51_T_M60E4", 4] call CODI_Loadout_fnc_addBackpackAmmo;
			};
		}
		forEach _all;
	};
	case toLower "AsMMG":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "AsMMG";
		{
			if (_x in [_usfleck,_ustropen]) then
			{
				[_x, "rhsusf_100Rnd_762x51_m80a1epr", 5] call CODI_Loadout_fnc_addBackpackAmmo;
			};
			if (_x in [_blufor,_opfor,_independent]) then
			{
				[_x, "150Rnd_762x54_Box_Tracer", 5] call CODI_Loadout_fnc_addBackpackAmmo;
			};
			if (_x in [_bwfleck,_bwtropen]) then
			{
				[_x, "BWA3_120Rnd_762x51", 5] call CODI_Loadout_fnc_addBackpackAmmo;
			};
		}
		forEach _all;
	};
	case toLower "HMG";
	case toLower "B_HeavyGunner_F";
	case toLower "O_HeavyGunner_F":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "HMG";
		[_blufor, "MMG_02_sand_F"] call CODI_Loadout_fnc_setRifle;
		[_opfor, "MMG_02_black_F"] call CODI_Loadout_fnc_setRifle;
		[_independent, "MMG_02_black_F"] call CODI_Loadout_fnc_setRifle;
		[_bwfleck, "MMG_02_black_F"] call CODI_Loadout_fnc_setRifle;
		[_bwtropen, "MMG_02_sand_F"] call CODI_Loadout_fnc_setRifle;
		[_usfleck, "MMG_02_black_F"] call CODI_Loadout_fnc_setRifle;
		[_ustropen, "MMG_02_black_F"] call CODI_Loadout_fnc_setRifle;
		[_blufor, "bipod_01_F_snd"] call CODI_Loadout_fnc_setRifleBipod;
		[_opfor, "bipod_01_F_blk"] call CODI_Loadout_fnc_setRifleBipod;
		[_independent, "bipod_01_F_blk"] call CODI_Loadout_fnc_setRifleBipod;
		[_bwfleck, "bipod_01_F_blk"] call CODI_Loadout_fnc_setRifleBipod;
		[_bwtropen, "bipod_01_F_snd"] call CODI_Loadout_fnc_setRifleBipod;
		[_usfleck, "bipod_01_F_blk"] call CODI_Loadout_fnc_setRifleBipod;
		[_ustropen, "bipod_01_F_blk"] call CODI_Loadout_fnc_setRifleBipod;
		{
			[_x] call CODI_Loadout_fnc_clearRifleAmmo;
			[_x] call CODI_Loadout_fnc_clearVestAmmo;
			[_x, "130Rnd_338_Mag"] call CODI_Loadout_fnc_addRifleAmmo;
			[_x, "130Rnd_338_Mag", 4] call CODI_Loadout_fnc_addBackpackAmmo;
			if (isClass (configFile >> "CfgPatches" >> "ace_overheating")) then
			{
				[_x, "ACE_SpareBarrel", 1] call CODI_Loadout_fnc_addBackpackItem;
			};
			[_x, "G_Combat"] call CODI_Loadout_fnc_setGoggles;
			[_x, ""] call CODI_Loadout_fnc_setRifleSilencer;
		}
		forEach _all;
	};
	case toLower "AsHMG":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "AsHMG";
		{
			[_x, "130Rnd_338_Mag", 5] call CODI_Loadout_fnc_addBackpackAmmo;
		}
		forEach _all;
	};
	case toLower "B_medic_F";
	case toLower "O_medic_F";
	case toLower "I_medic_F";
	case toLower "CFR":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "CFR";
		if (isClass (configFile >> "CfgPatches" >> "BW_Bags")) then
		{
			[_bwfleck, "seesack_fleck_m"] call CODI_Loadout_fnc_setBackpack;
			[_bwtropen, "seesack_tropen_m"] call CODI_Loadout_fnc_setBackpack;
			[_usfleck, "seesack_fleck_m"] call CODI_Loadout_fnc_setBackpack;
			[_ustropen, "seesack_tropen_m"] call CODI_Loadout_fnc_setBackpack;
		};
		{
			if (isClass (configFile >> "CfgPatches" >> "ace_medical")) then
			{
				[_x, "ACE_morphine", 10] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_epinephrine", 10] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_packingBandage", 15] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_elasticBandage", 15] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_basicBandage", 5] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_atropine", 8] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_salineIV", 0] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_salineIV_500", 6] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_salineIV_250", 6] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_surgicalKit", 0] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_personalAidKit", 1] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_tourniquet", 5] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_quikclot", 5] call CODI_Loadout_fnc_addBackpackItem;
			}
			else
			{
				[_x, "FirstAidKit", 15] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "Medikit", 1] call CODI_Loadout_fnc_addBackpackItem;
			};
		}
		forEach _all;
	};
	case toLower "Medic":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "Medic";
		if (isClass (configFile >> "CfgPatches" >> "BW_Bags")) then
		{
			[_bwfleck, "seesack_fleck_m"] call CODI_Loadout_fnc_setBackpack;
			[_bwtropen, "seesack_tropen_m"] call CODI_Loadout_fnc_setBackpack;
			[_usfleck, "seesack_fleck_m"] call CODI_Loadout_fnc_setBackpack;
			[_ustropen, "seesack_tropen_m"] call CODI_Loadout_fnc_setBackpack;
		};
		{
			if (isClass (configFile >> "CfgPatches" >> "ace_medical")) then
			{
				/*[_x, "ACE_morphine", 18] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_epinephrine", 18] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_packingBandage", 16] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_elasticBandage", 19] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_basicBandage", 14] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_atropine", 9] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_salineIV", 10] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_surgicalKit", 1] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_personalAidKit", 1] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_tourniquet", 4] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_quikclot", 14] call CODI_Loadout_fnc_addBackpackItem;*/
				[_x, "ACE_morphine", 15] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_epinephrine", 15] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_packingBandage", 18] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_elasticBandage", 18] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_basicBandage", 10] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_atropine", 8] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_salineIV", 5] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_salineIV_500", 6] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_salineIV_250", 6] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_surgicalKit", 1] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_personalAidKit", 1] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_tourniquet", 5] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_quikclot", 10] call CODI_Loadout_fnc_addBackpackItem;
			}
			else
			{
				[_x, "FirstAidKit", 15] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "Medikit", 1] call CODI_Loadout_fnc_addBackpackItem;
			};
		}
		forEach _all;
	};
	case toLower "DM";
	case toLower "B_soldier_M_F";
	case toLower "O_soldier_M_F";
	case toLower "I_soldier_M_F":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "DM";
		{
			[_x] call CODI_Loadout_fnc_clearVestAmmo;
			[_x] call CODI_Loadout_fnc_clearRifleAmmo;
			if (isClass (configFile >> "CfgPatches" >> "ace_ballistics")) then
			{
				[_x, "ACE_20Rnd_762x51_Mk319_Mod_0_Mag"] call CODI_Loadout_fnc_addRifleAmmo;
				[_x, "ACE_20Rnd_762x51_Mk319_Mod_0_Mag", 4] call CODI_Loadout_fnc_addVestAmmo;
				[_x, "ACE_20Rnd_762x51_Mag_Tracer", 4] call CODI_Loadout_fnc_addVestAmmo;
			}
			else
			{
				[_x, "20Rnd_762x51_Mag"] call CODI_Loadout_fnc_addRifleAmmo;
				[_x, "20Rnd_762x51_Mag", 8] call CODI_Loadout_fnc_addVestAmmo;
			};
			[_x, "muzzle_snds_B"] call CODI_Loadout_fnc_setRifleSilencer;
			if (isClass (configFile >> "CfgPatches" >> "ace_rangecard")) then
			{
				[_x, "ACE_RangeCard" ,1] call CODI_Loadout_fnc_addVestItem;
			};
			if (isClass (configFile >> "CfgPatches" >> "ace_yardage450")) then
			{
				[_x, "ACE_Yardage450"] call CODI_Loadout_fnc_setBinocular;
			}
			else
			{
				[_x, "Rangefinder"] call CODI_Loadout_fnc_setBinocular;
			};
			if (isClass (configFile >> "CfgPatches" >> "ace_tacticalladder")) then
			{
				//[_x, "ACE_TacticalLadder_Pack"] call CODI_Loadout_fnc_setBackpack;
			};
		}
		forEach _all;
		[_blufor, "bipod_01_F_snd"] call CODI_Loadout_fnc_setRifleBipod;
		[_opfor, "bipod_01_F_blk"] call CODI_Loadout_fnc_setRifleBipod;
		[_independent, "bipod_01_F_blk"] call CODI_Loadout_fnc_setRifleBipod;
		[_bwfleck, "bipod_01_F_blk"] call CODI_Loadout_fnc_setRifleBipod;
		[_bwtropen, "bipod_01_F_snd"] call CODI_Loadout_fnc_setRifleBipod;
		[_usfleck, "bipod_01_F_blk"] call CODI_Loadout_fnc_setRifleBipod;
		[_ustropen, "bipod_01_F_snd"] call CODI_Loadout_fnc_setRifleBipod;
		if (332350 in (getDLCs 1)) then
		{
			[_blufor, "srifle_DMR_03_tan_F"] call CODI_Loadout_fnc_setRifle;
			[_opfor, "srifle_DMR_03_F"] call CODI_Loadout_fnc_setRifle;
			[_independent, "srifle_DMR_03_F"] call CODI_Loadout_fnc_setRifle;
			[_bwfleck, "srifle_DMR_03_F"] call CODI_Loadout_fnc_setRifle;
			[_bwtropen, "srifle_DMR_03_tan_F"] call CODI_Loadout_fnc_setRifle;
			[_usfleck, "srifle_DMR_03_F"] call CODI_Loadout_fnc_setRifle;
			[_ustropen, "srifle_DMR_03_tan_F"] call CODI_Loadout_fnc_setRifle;
			[_blufor, "optic_AMS_snd"] call CODI_Loadout_fnc_setRifleOptic;
			[_opfor, "optic_AMS"] call CODI_Loadout_fnc_setRifleOptic;
			[_independent, "optic_AMS"] call CODI_Loadout_fnc_setRifleOptic;
			[_bwfleck, "optic_AMS"] call CODI_Loadout_fnc_setRifleOptic;
			[_bwtropen, "optic_AMS_snd"] call CODI_Loadout_fnc_setRifleOptic;
			[_usfleck, "optic_AMS"] call CODI_Loadout_fnc_setRifleOptic;
			[_ustropen, "optic_AMS_snd"] call CODI_Loadout_fnc_setRifleOptic;
		}
		else
		{
			{
				[_x, "srifle_EBR_F"] call CODI_Loadout_fnc_setRifle;
				[_x, "optic_SOS"] call CODI_Loadout_fnc_setRifleOptic;
			}
			forEach _all;
		};
		if (isClass (configFile >> "CfgPatches" >> "hlcweapons_g3")) then
		{
			[_bwfleck, "hlc_rifle_g3ka4"] call CODI_Loadout_fnc_setRifle;
			[_bwtropen, "hlc_rifle_g3ka4"] call CODI_Loadout_fnc_setRifle;
			[_bwfleck] call CODI_Loadout_fnc_clearVestAmmo;
			[_bwfleck] call CODI_Loadout_fnc_clearRifleAmmo;
			[_bwtropen] call CODI_Loadout_fnc_clearVestAmmo;
			[_bwtropen] call CODI_Loadout_fnc_clearRifleAmmo;
			[_bwfleck, "hlc_20rnd_762x51_Mk316_G3"] call CODI_Loadout_fnc_addRifleAmmo;
			[_bwtropen, "hlc_20rnd_762x51_Mk316_G3"] call CODI_Loadout_fnc_addRifleAmmo;
			[_bwfleck, "hlc_20rnd_762x51_Mk316_G3", 6] call CODI_Loadout_fnc_addVestAmmo;
			[_bwtropen, "hlc_20rnd_762x51_Mk316_G3", 6] call CODI_Loadout_fnc_addVestAmmo;
			[_bwfleck, "hlc_20rnd_762x51_T_G3", 6] call CODI_Loadout_fnc_addVestAmmo;
			[_bwtropen, "hlc_20rnd_762x51_T_G3", 6] call CODI_Loadout_fnc_addVestAmmo;
		};
	};
	case toLower "Gren";
	case toLower "B_Soldier_GL_F";
	case toLower "O_Soldier_GL_F";
	case toLower "I_Soldier_GL_F":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "Gren";
		[_blufor, "arifle_MX_GL_F"] call CODI_Loadout_fnc_setRifle;
		[_opfor, "arifle_Katiba_GL_F"] call CODI_Loadout_fnc_setRifle;
		[_independent, "arifle_Mk20_GL_F"] call CODI_Loadout_fnc_setRifle;
		[_usfleck, "rhs_weap_m4a1_m320"] call CODI_Loadout_fnc_setRifle;
		[_ustropen, "rhs_weap_m4a1_m320"] call CODI_Loadout_fnc_setRifle;
		/*if (isClass (configFile >> "CfgPatches" >> "hlcweapons_g3")) then
		{
			[_bwfleck, "HLC_Rifle_g3ka4_GL"] call CODI_Loadout_fnc_setRifle;
			[_bwtropen, "HLC_Rifle_g3ka4_GL"] call CODI_Loadout_fnc_setRifle;
		}
		else
		{*/
			[_bwfleck, "BWA3_G36_AG"] call CODI_Loadout_fnc_setRifle;
			[_bwtropen, "BWA3_G36_AG"] call CODI_Loadout_fnc_setRifle;
		//};
		{
			[_x, "1Rnd_HE_Grenade_shell", 19] call CODI_Loadout_fnc_addBackpackAmmo;
			[_x, "1Rnd_HE_Grenade_shell"] call CODI_Loadout_fnc_addRifleAmmo;
			if (isClass (configFile >> "CfgPatches" >> "ace_yardage450")) then
			{
				[_x, "ACE_Yardage450"] call CODI_Loadout_fnc_setBinocular;
			}
			else
			{
				[_x, "Rangefinder"] call CODI_Loadout_fnc_setBinocular;
			};
		}
		forEach [_blufor,_independent,_opfor,_bwfleck,_bwtropen];
		{
			[_x, "rhs_mag_M441_HE", 29] call CODI_Loadout_fnc_addBackpackAmmo;
			[_x, "rhs_mag_M441_HE"] call CODI_Loadout_fnc_addRifleAmmo;
			if (isClass (configFile >> "CfgPatches" >> "ace_yardage450")) then
			{
				[_x, "ACE_Yardage450"] call CODI_Loadout_fnc_setBinocular;
			}
			else
			{
				[_x, "Rangefinder"] call CODI_Loadout_fnc_setBinocular;
			};
		}
		forEach [_usfleck,_ustropen];
		[_blufor, ""] call CODI_Loadout_fnc_setRifleBipod;
		[_bwfleck, ""] call CODI_Loadout_fnc_setRifleBipod;
		[_bwtropen, ""] call CODI_Loadout_fnc_setRifleBipod;
		[_usfleck, ""] call CODI_Loadout_fnc_setRifleBipod;
		[_ustropen, ""] call CODI_Loadout_fnc_setRifleBipod;
	};
	case toLower "FTL";
	case toLower "B_Soldier_TL_F";
	case toLower "O_Soldier_TL_F";
	case toLower "I_Soldier_TL_F":
	{
		["Gren"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "FTL";
		{
			[_x, "SmokeShellGreen", 10] call CODI_Loadout_fnc_addBackpackItem;
			if (isClass (configFile >> "CfgPatches" >> "ace_grenades")) then
			{
				[_x, "ACE_HandFlare_Green", 10] call CODI_Loadout_fnc_addBackpackItem;
			};
			if (isClass (configFile >> "CfgPatches" >> "ace_huntir")) then
			{
				[_x, "ACE_HuntIR_monitor", 1] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_HuntIR_M203", 5] call CODI_Loadout_fnc_addBackpackAmmo;
			};
			[_x, "SmokeShellYellow", 1] call CODI_Loadout_fnc_addBackpackItem;
			if (isClass (configFile >> "CfgPatches" >> "ace_dagr")) then
			{
				[_x, "ACE_DAGR", 1] call CODI_Loadout_fnc_addVestItem;
			};
			if (isClass (configFile >> "CfgPatches" >> "ACE_microDAGR")) then
			{
				[_x, "ACE_microDAGR", 1] call CODI_Loadout_fnc_addVestItem;
			};
		}
		forEach _all;
		if (isClass (configFile >> "CfgPatches" >> "ace_vehiclelock")) then
		{
			//[_blufor, "ACE_key_lockpick", 1] call CODI_Loadout_fnc_addUniformItem;
			//[_opfor, "ACE_key_lockpick", 1] call CODI_Loadout_fnc_addUniformItem;
			//[_independent, "ACE_key_lockpick", 1] call CODI_Loadout_fnc_addUniformItem;
			//[_bwfleck, "ACE_key_lockpick", 1] call CODI_Loadout_fnc_addUniformItem;
			//[_bwtropen, "ACE_key_lockpick", 1] call CODI_Loadout_fnc_addUniformItem;
			//[_usfleck, "ACE_key_lockpick", 1] call CODI_Loadout_fnc_addUniformItem;
			//[_ustropen, "ACE_key_lockpick", 1] call CODI_Loadout_fnc_addUniformItem;
			[_blufor, "ACE_key_west", 1] call CODI_Loadout_fnc_addUniformItem;
			[_opfor, "ACE_key_east", 1] call CODI_Loadout_fnc_addUniformItem;
			[_independent, "ACE_key_indp", 1] call CODI_Loadout_fnc_addUniformItem;
			[_bwfleck, "ACE_key_west", 1] call CODI_Loadout_fnc_addUniformItem;
			[_bwtropen, "ACE_key_west", 1] call CODI_Loadout_fnc_addUniformItem;
			[_usfleck, "ACE_key_west", 1] call CODI_Loadout_fnc_addUniformItem;
			[_ustropen, "ACE_key_west", 1] call CODI_Loadout_fnc_addUniformItem;
		};
	};
	case toLower "AT";
	case toLower "B_soldier_AT_F";
	case toLower "O_soldier_AT_F";
	case toLower "I_soldier_AT_F":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "AT";
		{
			[_x] call CODI_Loadout_fnc_clearLauncherAmmo;
		}
		forEach _all;
		[_blufor, "launch_B_Titan_short_F"] call CODI_Loadout_fnc_setLauncher;
		[_opfor, "launch_O_Titan_short_F"] call CODI_Loadout_fnc_setLauncher;
		[_independent, "launch_I_Titan_short_F"] call CODI_Loadout_fnc_setLauncher;
		[_bwfleck, "launch_I_Titan_short_F"] call CODI_Loadout_fnc_setLauncher;
		[_bwtropen, "launch_B_Titan_short_F"] call CODI_Loadout_fnc_setLauncher;
		[_usfleck, "launch_I_Titan_short_F"] call CODI_Loadout_fnc_setLauncher;
		[_ustropen, "launch_B_Titan_short_F"] call CODI_Loadout_fnc_setLauncher;
		{
			[_x, "Titan_AT", 1] call CODI_Loadout_fnc_addBackpackAmmo;
			[_x, "Titan_AT"] call CODI_Loadout_fnc_addLauncherAmmo;
		}
		forEach _all;
	};
	case toLower "AsAT";
	case toLower "B_soldier_AAT_F";
	case toLower "O_soldier_AAT_F";
	case toLower "I_soldier_AAT_F":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "AsAT";
		{
			[_x, "Titan_AT", 2] call CODI_Loadout_fnc_addBackpackAmmo;
		}
		forEach _all;
	};
	case toLower "AA";
	case toLower "B_soldier_AA_F";
	case toLower "O_soldier_AA_F";
	case toLower "I_soldier_AA_F":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "AA";
		{
			[_x] call CODI_Loadout_fnc_clearLauncherAmmo;
		}
		forEach _all;
		[_blufor, "launch_B_Titan_F"] call CODI_Loadout_fnc_setLauncher;
		[_opfor, "launch_O_Titan_F"] call CODI_Loadout_fnc_setLauncher;
		[_independent, "launch_I_Titan_F"] call CODI_Loadout_fnc_setLauncher;
		[_bwfleck, "launch_I_Titan_F"] call CODI_Loadout_fnc_setLauncher;
		[_bwtropen, "launch_B_Titan_F"] call CODI_Loadout_fnc_setLauncher;
		[_usfleck, "launch_I_Titan_F"] call CODI_Loadout_fnc_setLauncher;
		[_ustropen, "launch_B_Titan_F"] call CODI_Loadout_fnc_setLauncher;
		{
			[_x, "Titan_AA", 1] call CODI_Loadout_fnc_addBackpackAmmo;
			[_x, "Titan_AA"] call CODI_Loadout_fnc_addLauncherAmmo;
		}
		forEach _all;
	};
	case toLower "AsAA";
	case toLower "B_soldier_AAA_F";
	case toLower "O_soldier_AAA_F";
	case toLower "I_soldier_AAA_F":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "AsAA";
		{
			[_x, "Titan_AA", 2] call CODI_Loadout_fnc_addBackpackAmmo;
		}
		forEach _all;
	};
	case toLower "LAT";
	case toLower "B_soldier_LAT_F";
	case toLower "O_soldier_LAT_F";
	case toLower "I_soldier_LAT_F":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "LAT";
		{
			[_x] call CODI_Loadout_fnc_clearLauncherAmmo;
			[_x, "launch_RPG32_F"] call CODI_Loadout_fnc_setLauncher;
			[_x, "RPG32_HE_F", 1] call CODI_Loadout_fnc_addBackpackAmmo;
			[_x, "RPG32_F", 2] call CODI_Loadout_fnc_addBackpackAmmo;
			[_x, "RPG32_HE_F"] call CODI_Loadout_fnc_addLauncherAmmo;
			if (isClass (configFile >> "CfgPatches" >> "ace_yardage450")) then
			{
				[_x, "ACE_Yardage450"] call CODI_Loadout_fnc_setBinocular;
			}
			else
			{
				[_x, "Rangefinder"] call CODI_Loadout_fnc_setBinocular;
			};
		}
		forEach _all;
	};
	case toLower "UAV";
	case toLower "B_soldier_UAV_F";
	case toLower "O_soldier_UAV_F";
	case toLower "I_soldier_UAV_F":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "UAV";
		[_blufor, "B_UAV_01_backpack_F"] call CODI_Loadout_fnc_setBackpack;
		[_opfor, "O_UAV_01_backpack_F"] call CODI_Loadout_fnc_setBackpack;
		[_independent, "I_UAV_01_backpack_F"] call CODI_Loadout_fnc_setBackpack;
		[_bwfleck, "B_UAV_01_backpack_F"] call CODI_Loadout_fnc_setBackpack;
		[_bwtropen, "B_UAV_01_backpack_F"] call CODI_Loadout_fnc_setBackpack;
		[_usfleck, "B_UAV_01_backpack_F"] call CODI_Loadout_fnc_setBackpack;
		[_ustropen, "B_UAV_01_backpack_F"] call CODI_Loadout_fnc_setBackpack;
		[_blufor, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_opfor, "O_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_independent, "I_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_bwfleck, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_bwtropen, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_usfleck, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_ustropen, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		if (isClass (configFile >> "CfgPatches" >> "FETT_FatTrack")) then
		{
			[_blufor, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
			[_opfor, "o_itemGPS_FT"] call CODI_Loadout_fnc_addVestItem;
			[_independent, "i_itemGPS_FT"] call CODI_Loadout_fnc_addVestItem;
			[_bwfleck, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
			[_bwtropen, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
			[_usfleck, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
			[_ustropen, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
		};
	};
	case toLower "Eng";
	case toLower "B_engineer_F";
	case toLower "O_engineer_F";
	case toLower "I_engineer_F";
	case toLower "B_soldier_repair_F";
	case toLower "O_soldier_repair_F";
	case toLower "I_soldier_repair_F":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "Eng";
		{
			[_x, "ToolKit", 1] call CODI_Loadout_fnc_addBackpackItem;
			if (isClass (configFile >> "CfgPatches" >> "ace_logistics_wirecutter")) then
			{
				[_x, "ACE_wirecutter", 1] call CODI_Loadout_fnc_addBackpackItem;
			};
		}
		forEach _all;
	};
	case toLower "ExSpec";
	case toLower "B_soldier_exp_F";
	case toLower "O_soldier_exp_F";
	case toLower "I_soldier_exp_F":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "ExSpec";
		{
			if (isClass (configFile >> "CfgPatches" >> "ace_explosives")) then
			{
				[_x, "ACE_M26_Clacker", 1] call CODI_Loadout_fnc_addBackpackItem;
				[_x, "ACE_DefusalKit", 1] call CODI_Loadout_fnc_addBackpackItem;
			};
			[_x, "SatchelCharge_Remote_Mag", 1] call CODI_Loadout_fnc_addBackpackItem;
			[_x, "DemoCharge_Remote_Mag", 2] call CODI_Loadout_fnc_addBackpackItem;
			[_x, "MineDetector", 1] call CODI_Loadout_fnc_addBackpackItem;
		}
		forEach _all;
	};
	case toLower "SL";
	case toLower "B_Soldier_SL_F";
	case toLower "O_Soldier_SL_F";
	case toLower "I_Soldier_SL_F":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "SL";
		[_blufor, "tf_rt1523g_big"] call CODI_Loadout_fnc_setBackpack;
		[_opfor, "tf_mr3000"] call CODI_Loadout_fnc_setBackpack;
		[_independent, "tf_anprc155"] call CODI_Loadout_fnc_setBackpack;
		[_bwfleck, "tf_rt1523g_big_bwmod"] call CODI_Loadout_fnc_setBackpack;
		[_bwtropen, "tf_rt1523g_big_bwmod_tropen"] call CODI_Loadout_fnc_setBackpack;
		[_usfleck, "tf_rt1523g_big_bwmod"] call CODI_Loadout_fnc_setBackpack;
		[_ustropen, "tf_rt1523g_big_bwmod_tropen"] call CODI_Loadout_fnc_setBackpack;
		if (isClass (configFile >> "CfgPatches" >> "ace_vehiclelock")) then
		{
			//[_blufor, "ACE_key_lockpick", 1] call CODI_Loadout_fnc_addUniformItem;
			//[_opfor, "ACE_key_lockpick", 1] call CODI_Loadout_fnc_addUniformItem;
			//[_independent, "ACE_key_lockpick", 1] call CODI_Loadout_fnc_addUniformItem;
			//[_bwfleck, "ACE_key_lockpick", 1] call CODI_Loadout_fnc_addUniformItem;
			//[_bwtropen, "ACE_key_lockpick", 1] call CODI_Loadout_fnc_addUniformItem;
			//[_usfleck, "ACE_key_lockpick", 1] call CODI_Loadout_fnc_addUniformItem;
			//[_ustropen, "ACE_key_lockpick", 1] call CODI_Loadout_fnc_addUniformItem;
			[_blufor, "ACE_key_west", 1] call CODI_Loadout_fnc_addUniformItem;
			[_opfor, "ACE_key_east", 1] call CODI_Loadout_fnc_addUniformItem;
			[_independent, "ACE_key_indp", 1] call CODI_Loadout_fnc_addUniformItem;
			[_bwfleck, "ACE_key_west", 1] call CODI_Loadout_fnc_addUniformItem;
			[_bwtropen, "ACE_key_west", 1] call CODI_Loadout_fnc_addUniformItem;
			[_usfleck, "ACE_key_west", 1] call CODI_Loadout_fnc_addUniformItem;
			[_ustropen, "ACE_key_west", 1] call CODI_Loadout_fnc_addUniformItem;
		};
		{
			[_x, "SmokeShellBlue", 1] call CODI_Loadout_fnc_addBackpackItem;
			[_x, "SmokeShellYellow", 1] call CODI_Loadout_fnc_addBackpackItem;
			if (isClass (configFile >> "CfgPatches" >> "ace_dagr")) then
			{
				[_x, "ACE_DAGR", 1] call CODI_Loadout_fnc_addVestItem;
			};
			if (isClass (configFile >> "CfgPatches" >> "ACE_microDAGR")) then
			{
				[_x, "ACE_microDAGR", 1] call CODI_Loadout_fnc_addVestItem;
			};
			if (isClass (configFile >> "CfgPatches" >> "ace_yardage450")) then
			{
				[_x, "ACE_Yardage450"] call CODI_Loadout_fnc_setBinocular;
			}
			else
			{
				[_x, "Rangefinder"] call CODI_Loadout_fnc_setBinocular;
			};
		}
		forEach _all;
		if (isClass (configFile >> "CfgPatches" >> "FETT_FatTrack")) then
		{
			[_blufor, "b_itemLAPTOP_FT"] call CODI_Loadout_fnc_setGPS;
			[_opfor, "o_itemLAPTOP_FT"] call CODI_Loadout_fnc_setGPS;
			[_independent, "i_itemLAPTOP_FT"] call CODI_Loadout_fnc_setGPS;
			[_bwfleck, "b_itemLAPTOP_FT"] call CODI_Loadout_fnc_setGPS;
			[_bwtropen, "b_itemLAPTOP_FT"] call CODI_Loadout_fnc_setGPS;
			[_usfleck, "b_itemLAPTOP_FT"] call CODI_Loadout_fnc_setGPS;
			[_ustropen, "b_itemLAPTOP_FT"] call CODI_Loadout_fnc_setGPS;
		};
	};
	case toLower "Sniper";
	case toLower "B_sniper_F";
	case toLower "O_sniper_F";
	case toLower "I_sniper_F":
	{
		["Unarmed"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "Sniper";
		if (332350 in (getDLCs 1)) then
		{
			[_blufor, "U_B_FullGhillie_lsh"] call CODI_Loadout_fnc_setUniform;
			[_opfor, "U_O_FullGhillie_lsh"] call CODI_Loadout_fnc_setUniform;
			[_independent, "U_I_FullGhillie_lsh"] call CODI_Loadout_fnc_setUniform;
			[_bwfleck, "U_I_FullGhillie_lsh"] call CODI_Loadout_fnc_setUniform;
			[_bwtropen, "U_B_FullGhillie_ard"] call CODI_Loadout_fnc_setUniform;
			[_usfleck, "U_I_FullGhillie_lsh"] call CODI_Loadout_fnc_setUniform;
			[_ustropen, "U_B_FullGhillie_ard"] call CODI_Loadout_fnc_setUniform;
		}
		else
		{
			[_blufor, "U_B_GhillieSuit"] call CODI_Loadout_fnc_setUniform;
			[_opfor, "U_O_GhillieSuit"] call CODI_Loadout_fnc_setUniform;
			[_independent, "U_I_GhillieSuit"] call CODI_Loadout_fnc_setUniform;
			[_bwfleck, "BWA3_Uniform_Ghillie_Fleck"] call CODI_Loadout_fnc_setUniform;
			[_bwtropen, "BWA3_Uniform_Ghillie_Tropen"] call CODI_Loadout_fnc_setUniform;
			[_usfleck, "U_B_GhillieSuit"] call CODI_Loadout_fnc_setUniform;
			[_ustropen, "U_B_GhillieSuit"] call CODI_Loadout_fnc_setUniform;
		};
		[_blufor, "srifle_LRR_F"] call CODI_Loadout_fnc_setRifle;
		[_opfor, "srifle_GM6_camo_F"] call CODI_Loadout_fnc_setRifle;
		[_independent, "srifle_LRR_F"] call CODI_Loadout_fnc_setRifle;
		[_bwfleck, "hlc_rifle_awmagnum_FDE"] call CODI_Loadout_fnc_setRifle;
		[_bwtropen, "hlc_rifle_awmagnum_FDE"] call CODI_Loadout_fnc_setRifle;
		[_usfleck, "srifle_LRR_F"] call CODI_Loadout_fnc_setRifle;
		[_ustropen, "srifle_LRR_F"] call CODI_Loadout_fnc_setRifle;
		[_blufor, "7Rnd_408_Mag"] call CODI_Loadout_fnc_addRifleAmmo;
		[_independent, "7Rnd_408_Mag"] call CODI_Loadout_fnc_addRifleAmmo;
		[_bwfleck, "hlc_5rnd_300WM_mk248_AWM"] call CODI_Loadout_fnc_addRifleAmmo;
		[_bwtropen, "hlc_5rnd_300WM_mk248_AWM"] call CODI_Loadout_fnc_addRifleAmmo;
		[_usfleck, "7Rnd_408_Mag"] call CODI_Loadout_fnc_addRifleAmmo;
		[_ustropen, "7Rnd_408_Mag"] call CODI_Loadout_fnc_addRifleAmmo;
		[_blufor, "7Rnd_408_Mag", 4] call CODI_Loadout_fnc_addVestAmmo;
		[_independent, "7Rnd_408_Mag", 4] call CODI_Loadout_fnc_addVestAmmo;
		[_bwfleck, "hlc_5rnd_300WM_mk248_AWM", 6] call CODI_Loadout_fnc_addVestAmmo;
		[_bwtropen, "hlc_5rnd_300WM_mk248_AWM", 6] call CODI_Loadout_fnc_addVestAmmo;
		[_usfleck, "7Rnd_408_Mag", 4] call CODI_Loadout_fnc_addVestAmmo;
		[_ustropen, "7Rnd_408_Mag", 4] call CODI_Loadout_fnc_addVestAmmo;
		if (isClass (configFile >> "CfgPatches" >> "ace_ballistics")) then
		{
			[_opfor, "ACE_5Rnd_127x99_AMAX_Mag"] call CODI_Loadout_fnc_addRifleAmmo;
			[_opfor, "ACE_5Rnd_127x99_AMAX_Mag", 6] call CODI_Loadout_fnc_addVestAmmo;
		}
		else
		{
			[_opfor, "5Rnd_127x108_Mag"] call CODI_Loadout_fnc_addRifleAmmo;
			[_opfor, "5Rnd_127x108_Mag", 6] call CODI_Loadout_fnc_addVestAmmo;
		};
		{
			if (isClass (configFile >> "CfgPatches" >> "ace_mx2a")) then
			{
				[_x, "ACE_MX2A"] call CODI_Loadout_fnc_setBinocular;
			};
			[_x, "optic_LRPS"] call CODI_Loadout_fnc_setRifleOptic;
			if (isClass (configFile >> "CfgPatches" >> "ace_rangecard")) then
			{
				[_x, "ACE_RangeCard", 1] call CODI_Loadout_fnc_addVestItem;
			};
			[_x, "hgun_Pistol_heavy_01_F"] call CODI_Loadout_fnc_setPistol;
			[_x, "11Rnd_45ACP_Mag"] call CODI_Loadout_fnc_addPistolAmmo;
			[_x, "11Rnd_45ACP_Mag", 4] call CODI_Loadout_fnc_addVestAmmo;
			[_x, "optic_MRD"] call CODI_Loadout_fnc_setPistolOptic;
			[_x, "muzzle_snds_acp"] call CODI_Loadout_fnc_setPistolSilencer;
			if (isClass (configFile >> "CfgPatches" >> "ace_hearing")) then
			{
				[_x, "ACE_EarPlugs", 1] call CODI_Loadout_fnc_addUniformItem;
			};
		}
		forEach _all;
		[_blufor, "tf_rt1523g_big"] call CODI_Loadout_fnc_setBackpack;
		[_opfor, "tf_mr3000"] call CODI_Loadout_fnc_setBackpack;
		[_independent, "tf_anprc155"] call CODI_Loadout_fnc_setBackpack;
		[_bwfleck, "tf_rt1523g_big_bwmod"] call CODI_Loadout_fnc_setBackpack;
		[_bwtropen, "tf_rt1523g_big_bwmod_tropen"] call CODI_Loadout_fnc_setBackpack;
		[_usfleck, "tf_rt1523g_big_bwmod"] call CODI_Loadout_fnc_setBackpack;
		[_ustropen, "tf_rt1523g_big_bwmod_tropen"] call CODI_Loadout_fnc_setBackpack;
		if (isClass (configFile >> "CfgPatches" >> "FETT_FatTrack")) then
		{
			[_blufor, "b_itemLAPTOP_FT"] call CODI_Loadout_fnc_setGPS;
			[_opfor, "o_itemLAPTOP_FT"] call CODI_Loadout_fnc_setGPS;
			[_independent, "i_itemLAPTOP_FT"] call CODI_Loadout_fnc_setGPS;
			[_bwfleck, "b_itemLAPTOP_FT"] call CODI_Loadout_fnc_setGPS;
			[_bwtropen, "b_itemLAPTOP_FT"] call CODI_Loadout_fnc_setGPS;
			[_usfleck, "b_itemLAPTOP_FT"] call CODI_Loadout_fnc_setGPS;
			[_ustropen, "b_itemLAPTOP_FT"] call CODI_Loadout_fnc_setGPS;
		};
	};
	case toLower "Spotter";
	case toLower "B_spotter_F";
	case toLower "O_spotter_F";
	case toLower "I_spotter_F":
	{
		["Unarmed"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "Spotter";
		if (332350 in (getDLCs 1)) then
		{
			[_blufor, "U_B_FullGhillie_lsh"] call CODI_Loadout_fnc_setUniform;
			[_opfor, "U_O_FullGhillie_lsh"] call CODI_Loadout_fnc_setUniform;
			[_independent, "U_I_FullGhillie_lsh"] call CODI_Loadout_fnc_setUniform;
			[_bwfleck, "U_I_FullGhillie_lsh"] call CODI_Loadout_fnc_setUniform;
			[_bwtropen, "U_B_FullGhillie_ard"] call CODI_Loadout_fnc_setUniform;
			[_usfleck, "U_I_FullGhillie_lsh"] call CODI_Loadout_fnc_setUniform;
			[_ustropen, "U_B_FullGhillie_ard"] call CODI_Loadout_fnc_setUniform;
		}
		else
		{
			[_blufor, "U_B_GhillieSuit"] call CODI_Loadout_fnc_setUniform;
			[_opfor, "U_O_GhillieSuit"] call CODI_Loadout_fnc_setUniform;
			[_independent, "U_I_GhillieSuit"] call CODI_Loadout_fnc_setUniform;
			[_bwfleck, "BWA3_Uniform_Ghillie_Fleck"] call CODI_Loadout_fnc_setUniform;
			[_bwtropen, "BWA3_Uniform_Ghillie_Tropen"] call CODI_Loadout_fnc_setUniform;
			[_usfleck, "U_B_GhillieSuit"] call CODI_Loadout_fnc_setUniform;
			[_ustropen, "U_B_GhillieSuit"] call CODI_Loadout_fnc_setUniform;
		};
		{
			if (isClass (configFile >> "CfgPatches" >> "ace_rangecard")) then
			{
				[_x, "ACE_RangeCard", 1] call CODI_Loadout_fnc_addVestItem;
			};
			if (332350 in (getDLCs 1)) then
			{
				[_x, "optic_AMS"] call CODI_Loadout_fnc_setRifleOptic;
			}
			else
			{
				[_x, "optic_SOS"] call CODI_Loadout_fnc_setRifleOptic;
			};
			[_x] call CODI_Loadout_fnc_clearRifleAmmo;
			[_x] call CODI_Loadout_fnc_clearVestAmmo;
			if (isClass (configFile >> "CfgPatches" >> "ace_ballistics")) then
			{
				[_x, "ACE_20Rnd_762x51_Mk319_Mod_0_Mag"] call CODI_Loadout_fnc_addRifleAmmo;
				[_x, "ACE_20Rnd_762x51_Mk319_Mod_0_Mag", 4] call CODI_Loadout_fnc_addVestAmmo;
				[_x, "ACE_20Rnd_762x51_Mag_SD", 4] call CODI_Loadout_fnc_addVestAmmo;
			}
			else
			{
				[_x, "20Rnd_762x51_Mag"] call CODI_Loadout_fnc_addRifleAmmo;
				[_x, "20Rnd_762x51_Mag", 8] call CODI_Loadout_fnc_addVestAmmo;
			};
			[_x, "bipod_01_F_blk"] call CODI_Loadout_fnc_setRifleBipod;
			[_x, "muzzle_snds_B"] call CODI_Loadout_fnc_setRifleSilencer;
			if (isClass (configFile >> "CfgPatches" >> "ace_vector")) then
			{
				[_x, "ACE_Vector"] call CODI_Loadout_fnc_setBinocular;
			}
			else
			{
				[_x, "Rangefinder"] call CODI_Loadout_fnc_setBinocular;
			};
			if (isClass (configFile >> "CfgPatches" >> "ace_advanced_ballistics")) then
			{
				if (isClass (configFile >> "CfgPatches" >> "ace_atragmx")) then
				{
					[_x, "ACE_ATragMX", 1] call CODI_Loadout_fnc_addVestItem;
				};
				if (isClass (configFile >> "CfgPatches" >> "ace_kestrel4500")) then
				{
					[_x, "ACE_Kestrel4500", 1] call CODI_Loadout_fnc_addVestItem;
				};
			};
			if (isClass (configFile >> "CfgPatches" >> "ace_hearing")) then
			{
				[_x, "ACE_EarPlugs", 1] call CODI_Loadout_fnc_addUniformItem;
			};
		}
		forEach _all;
		if (332350 in (getDLCs 1)) then
		{
			[_blufor, "srifle_DMR_03_tan_F"] call CODI_Loadout_fnc_setRifle;
			[_opfor, "srifle_DMR_03_F"] call CODI_Loadout_fnc_setRifle;
			[_independent, "srifle_DMR_03_F"] call CODI_Loadout_fnc_setRifle;
			[_bwfleck, "srifle_DMR_03_F"] call CODI_Loadout_fnc_setRifle;
			[_bwtropen, "srifle_DMR_03_tan_F"] call CODI_Loadout_fnc_setRifle;
			[_usfleck, "srifle_DMR_03_F"] call CODI_Loadout_fnc_setRifle;
			[_ustropen, "srifle_DMR_03_tan_F"] call CODI_Loadout_fnc_setRifle;
			[_blufor, "B_Static_Designator_01_weapon_F"] call CODI_Loadout_fnc_setBackpack;
			[_opfor, "O_Static_Designator_02_weapon_F"] call CODI_Loadout_fnc_setBackpack;
			[_bwfleck, "B_Static_Designator_01_weapon_F"] call CODI_Loadout_fnc_setBackpack;
			[_bwtropen, "B_Static_Designator_01_weapon_F"] call CODI_Loadout_fnc_setBackpack;
			[_usfleck, "B_Static_Designator_01_weapon_F"] call CODI_Loadout_fnc_setBackpack;
			[_ustropen, "B_Static_Designator_01_weapon_F"] call CODI_Loadout_fnc_setBackpack;
			[_blufor, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
			[_opfor, "O_UavTerminal"] call CODI_Loadout_fnc_setGPS;
			[_bwfleck, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
			[_bwtropen, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
			[_usfleck, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
			[_ustropen, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
			if (isClass (configFile >> "CfgPatches" >> "FETT_FatTrack")) then
			{
				[_blufor, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
				[_opfor, "o_itemGPS_FT"] call CODI_Loadout_fnc_addVestItem;
				[_bwfleck, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
				[_bwtropen, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
				[_usfleck, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
				[_ustropen, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
			};
		}
		else
		{
			{
				[_blufor, "srifle_EBR_F"] call CODI_Loadout_fnc_setRifle;
			}
			forEach _all;
		};
	};
	case toLower "AsAHMG";
	case toLower "AsAGMG";
	case toLower "B_support_AMG_F";
	case toLower "O_support_AMG_F";
	case toLower "I_support_AMG_F":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "AsAHMG";
		[_blufor, "B_HMG_01_support_F"] call CODI_Loadout_fnc_setBackpack;
		[_opfor, "O_HMG_01_support_F"] call CODI_Loadout_fnc_setBackpack;
		[_independent, "I_HMG_01_support_F"] call CODI_Loadout_fnc_setBackpack;
		[_bwfleck, "B_HMG_01_support_F"] call CODI_Loadout_fnc_setBackpack;
		[_bwtropen, "B_HMG_01_support_F"] call CODI_Loadout_fnc_setBackpack;
		[_usfleck, "B_HMG_01_support_F"] call CODI_Loadout_fnc_setBackpack;
		[_ustropen, "B_HMG_01_support_F"] call CODI_Loadout_fnc_setBackpack;
		[_blufor, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_opfor, "O_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_independent, "I_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_bwfleck, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_bwtropen, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_usfleck, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_ustropen, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		if (isClass (configFile >> "CfgPatches" >> "FETT_FatTrack")) then
		{
			[_blufor, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
			[_opfor, "o_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
			[_independent, "i_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
			[_bwfleck, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
			[_bwtropen, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
			[_usfleck, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
			[_ustropen, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
		};
	};
	case toLower "AsMortar";
	case toLower "B_support_AMort_F";
	case toLower "O_support_AMort_F";
	case toLower "I_support_AMort_F":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "AsMortar";
		[_blufor, "B_Mortar_01_support_F"] call CODI_Loadout_fnc_setBackpack;
		[_opfor, "O_Mortar_01_support_F"] call CODI_Loadout_fnc_setBackpack;
		[_independent, "I_Mortar_01_support_F"] call CODI_Loadout_fnc_setBackpack;
		[_bwfleck, "B_Mortar_01_support_F"] call CODI_Loadout_fnc_setBackpack;
		[_bwtropen, "B_Mortar_01_support_F"] call CODI_Loadout_fnc_setBackpack;
		[_usfleck, "B_Mortar_01_support_F"] call CODI_Loadout_fnc_setBackpack;
		[_ustropen, "B_Mortar_01_support_F"] call CODI_Loadout_fnc_setBackpack;
	};
	case toLower "AGMG";
	case toLower "B_support_GMG_F";
	case toLower "O_support_GMG_F";
	case toLower "I_support_GMG_F":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "AGMG";
		[_blufor, "B_GMG_01_A_weapon_F"] call CODI_Loadout_fnc_setBackpack;
		[_opfor, "O_GMG_01_A_weapon_F"] call CODI_Loadout_fnc_setBackpack;
		[_independent, "I_GMG_01_A_weapon_F"] call CODI_Loadout_fnc_setBackpack;
		[_bwfleck, "B_GMG_01_A_weapon_F"] call CODI_Loadout_fnc_setBackpack;
		[_bwtropen, "B_GMG_01_A_weapon_F"] call CODI_Loadout_fnc_setBackpack;
		[_usfleck, "B_GMG_01_A_weapon_F"] call CODI_Loadout_fnc_setBackpack;
		[_ustropen, "B_GMG_01_A_weapon_F"] call CODI_Loadout_fnc_setBackpack;
		[_blufor, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_opfor, "O_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_independent, "I_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_bwfleck, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_bwtropen, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_usfleck, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_ustropen, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		if (isClass (configFile >> "CfgPatches" >> "FETT_FatTrack")) then
		{
			[_blufor, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
			[_opfor, "o_itemGPS_FT"] call CODI_Loadout_fnc_addVestItem;
			[_independent, "i_itemGPS_FT"] call CODI_Loadout_fnc_addVestItem;
			[_bwfleck, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
			[_bwtropen, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
			[_usfleck, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
			[_ustropen, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
		};
	};
	case toLower "AHMG";
	case toLower "B_support_MG_F";
	case toLower "O_support_MG_F";
	case toLower "I_support_MG_F":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "AHMG";
		[_blufor, "B_HMG_01_A_weapon_F"] call CODI_Loadout_fnc_setBackpack;
		[_opfor, "O_HMG_01_A_weapon_F"] call CODI_Loadout_fnc_setBackpack;
		[_independent, "I_HMG_01_A_weapon_F"] call CODI_Loadout_fnc_setBackpack;
		[_bwfleck, "B_HMG_01_A_weapon_F"] call CODI_Loadout_fnc_setBackpack;
		[_bwtropen, "B_HMG_01_A_weapon_F"] call CODI_Loadout_fnc_setBackpack;
		[_usfleck, "B_HMG_01_A_weapon_F"] call CODI_Loadout_fnc_setBackpack;
		[_ustropen, "B_HMG_01_A_weapon_F"] call CODI_Loadout_fnc_setBackpack;
		[_blufor, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_opfor, "O_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_independent, "I_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_bwfleck, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_bwtropen, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_usfleck, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		[_ustropen, "B_UavTerminal"] call CODI_Loadout_fnc_setGPS;
		if (isClass (configFile >> "CfgPatches" >> "FETT_FatTrack")) then
		{
			[_blufor, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
			[_opfor, "o_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
			[_independent, "i_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
			[_bwfleck, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
			[_bwtropen, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
			[_usfleck, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
			[_ustropen, "b_itemGPS_FT", 1] call CODI_Loadout_fnc_addVestItem;
		};
	};
	case toLower "Mortar";
	case toLower "B_support_Mort_F";
	case toLower "O_support_Mort_F";
	case toLower "I_support_Mort_F":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "Mortar";
		[_blufor, "B_Mortar_01_weapon_F"] call CODI_Loadout_fnc_setBackpack;
		[_opfor, "O_Mortar_01_weapon_F"] call CODI_Loadout_fnc_setBackpack;
		[_independent, "I_Mortar_01_weapon_F"] call CODI_Loadout_fnc_setBackpack;
		[_bwfleck, "B_Mortar_01_weapon_F"] call CODI_Loadout_fnc_setBackpack;
		[_bwtropen, "B_Mortar_01_weapon_F"] call CODI_Loadout_fnc_setBackpack;
		[_usfleck, "B_Mortar_01_weapon_F"] call CODI_Loadout_fnc_setBackpack;
		[_ustropen, "B_Mortar_01_weapon_F"] call CODI_Loadout_fnc_setBackpack;
	};
	case toLower "FAC";
	case toLower "JTAC":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "FAC";
		[_blufor, "Laserdesignator"] call CODI_Loadout_fnc_setBinocular;
		[_opfor, "Laserdesignator_02"] call CODI_Loadout_fnc_setBinocular;
		[_independent, "Laserdesignator_03"] call CODI_Loadout_fnc_setBinocular;
		[_bwfleck, "Laserdesignator"] call CODI_Loadout_fnc_setBinocular;
		[_bwtropen, "Laserdesignator"] call CODI_Loadout_fnc_setBinocular;
		[_usfleck, "Laserdesignator"] call CODI_Loadout_fnc_setBinocular;
		[_ustropen, "Laserdesignator"] call CODI_Loadout_fnc_setBinocular;
		{
			[_x, "Laserbatteries"] call CODI_Loadout_fnc_addBinocularAmmo;
		}
		forEach _all;
		[_blufor, "tf_rt1523g_big"] call CODI_Loadout_fnc_setBackpack;
		[_opfor, "tf_mr3000"] call CODI_Loadout_fnc_setBackpack;
		[_independent, "tf_anprc155"] call CODI_Loadout_fnc_setBackpack;
		[_bwfleck, "tf_rt1523g_big_bwmod"] call CODI_Loadout_fnc_setBackpack;
		[_bwtropen, "tf_rt1523g_big_bwmod_tropen"] call CODI_Loadout_fnc_setBackpack;
		[_usfleck, "tf_rt1523g_big_bwmod"] call CODI_Loadout_fnc_setBackpack;
		[_ustropen, "tf_rt1523g_big_bwmod_tropen"] call CODI_Loadout_fnc_setBackpack;
	};
	case toLower "Para";
	case toLower "B_soldier_PG_F";
	case toLower "O_soldier_PG_F";
	case toLower "I_soldier_PG_F":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "Para";
		{
			[_x, "B_Parachute"] call CODI_Loadout_fnc_setBackpack;
			if (isClass (configFile >> "CfgPatches" >> "ACE_Parachute")) then
			{
				[_x, "ACE_Altimeter"] call CODI_Loadout_fnc_setWatch;
			};
		}
		forEach _all;
	};
	case toLower "PL";
	case toLower "B_officer_F";
	case toLower "O_officer_F";
	case toLower "I_officer_F":
	{
		["Unarmed"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "PL";
		[_blufor, "tf_rt1523g_big"] call CODI_Loadout_fnc_setBackpack;
		[_opfor, "tf_mr3000"] call CODI_Loadout_fnc_setBackpack;
		[_independent, "tf_anprc155"] call CODI_Loadout_fnc_setBackpack;
		[_bwfleck, "tf_rt1523g_big_bwmod"] call CODI_Loadout_fnc_setBackpack;
		[_bwtropen, "tf_rt1523g_big_bwmod_tropen"] call CODI_Loadout_fnc_setBackpack;
		[_usfleck, "tf_rt1523g_big_bwmod"] call CODI_Loadout_fnc_setBackpack;
		[_ustropen, "tf_rt1523g_big_bwmod_tropen"] call CODI_Loadout_fnc_setBackpack;
		{
			[_x, ""] call CODI_Loadout_fnc_setNV;
			[_x, "hgun_Pistol_heavy_02_F"] call CODI_Loadout_fnc_setPistol;
			[_x, "optic_Yorris"] call CODI_Loadout_fnc_setPistolOptic;
			[_x, "6Rnd_45ACP_Cylinder", 4] call CODI_Loadout_fnc_addVestAmmo;
			[_x, "6Rnd_45ACP_Cylinder"] call CODI_Loadout_fnc_addPistolAmmo;
		}
		forEach _all;
		[_blufor, "H_Beret_02"] call CODI_Loadout_fnc_setHelmet;
		[_independent, "H_Beret_blk"] call CODI_Loadout_fnc_setHelmet;
		[_independent, "U_I_OfficerUniform"] call CODI_Loadout_fnc_setUniform;
		[_opfor, "H_Beret_blk"] call CODI_Loadout_fnc_setHelmet;
		[_opfor, "U_O_OfficerUniform_ocamo"] call CODI_Loadout_fnc_setUniform;
		[_bwfleck, "H_Beret_02"] call CODI_Loadout_fnc_setHelmet;
		[_bwtropen, "H_Beret_02"] call CODI_Loadout_fnc_setHelmet;
		[_usfleck, "H_Beret_02"] call CODI_Loadout_fnc_setHelmet;
		[_ustropen, "H_Beret_02"] call CODI_Loadout_fnc_setHelmet;
		{
			[_x, "SmokeShellBlue", 4] call CODI_Loadout_fnc_addBackpackItem;
			[_x, "SmokeShellYellow", 1] call CODI_Loadout_fnc_addBackpackItem;
		}
		forEach _all;
		if (isClass (configFile >> "CfgPatches" >> "FETT_FatTrack")) then
		{
			[_blufor, "b_itemLAPTOP_FT"] call CODI_Loadout_fnc_setGPS;
			[_opfor, "o_itemLAPTOP_FT"] call CODI_Loadout_fnc_setGPS;
			[_independent, "i_itemLAPTOP_FT"] call CODI_Loadout_fnc_setGPS;
			[_bwfleck, "b_itemLAPTOP_FT"] call CODI_Loadout_fnc_setGPS;
			[_bwtropen, "b_itemLAPTOP_FT"] call CODI_Loadout_fnc_setGPS;
			[_usfleck, "b_itemLAPTOP_FT"] call CODI_Loadout_fnc_setGPS;
			[_ustropen, "b_itemLAPTOP_FT"] call CODI_Loadout_fnc_setGPS;
		};
		if (isClass (configFile >> "CfgPatches" >> "ace_vehiclelock")) then
		{
			//[_blufor, "ACE_key_lockpick", 1] call CODI_Loadout_fnc_addUniformItem;
			//[_opfor, "ACE_key_lockpick", 1] call CODI_Loadout_fnc_addUniformItem;
			//[_independent, "ACE_key_lockpick", 1] call CODI_Loadout_fnc_addUniformItem;
			//[_bwfleck, "ACE_key_lockpick", 1] call CODI_Loadout_fnc_addUniformItem;
			//[_bwtropen, "ACE_key_lockpick", 1] call CODI_Loadout_fnc_addUniformItem;
			//[_usfleck, "ACE_key_lockpick", 1] call CODI_Loadout_fnc_addUniformItem;
			//[_ustropen, "ACE_key_lockpick", 1] call CODI_Loadout_fnc_addUniformItem;
			[_blufor, "ACE_key_west", 1] call CODI_Loadout_fnc_addUniformItem;
			[_opfor, "ACE_key_east", 1] call CODI_Loadout_fnc_addUniformItem;
			[_independent, "ACE_key_indp", 1] call CODI_Loadout_fnc_addUniformItem;
			[_bwfleck, "ACE_key_west", 1] call CODI_Loadout_fnc_addUniformItem;
			[_bwtropen, "ACE_key_west", 1] call CODI_Loadout_fnc_addUniformItem;
			[_usfleck, "ACE_key_west", 1] call CODI_Loadout_fnc_addUniformItem;
			[_ustropen, "ACE_key_west", 1] call CODI_Loadout_fnc_addUniformItem;
		};
	};
	case toLower "Pilot";
	case toLower "B_Pilot_F";
	case toLower "O_Pilot_F";
	case toLower "I_Pilot_F":
	{
		["Unarmed"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "Pilot";
		{
			[_x, "B_Parachute"] call CODI_Loadout_fnc_setBackpack;
			[_x, "V_PlateCarrier1_blk"] call CODI_Loadout_fnc_setVest;
			if (isClass (configFile >> "CfgPatches" >> "hlcweapons_mp5")) then
			{
				[_x, "hlc_smg_mp5a3"] call CODI_Loadout_fnc_setRifle;
				[_x, "muzzle_snds_L"] call CODI_Loadout_fnc_setRifleSilencer;
				[_x, "hlc_30Rnd_9x19_GD_MP5"] call CODI_Loadout_fnc_addRifleAmmo;
				[_x, "hlc_30Rnd_9x19_GD_MP5", 4] call CODI_Loadout_fnc_addVestAmmo;
			}
			else
			{
				[_x, "SMG_01_Holo_F"] call CODI_Loadout_fnc_setRifle;
				[_x, "optic_Holosight_smg"] call CODI_Loadout_fnc_setRifleOptic;
				[_x, "muzzle_snds_acp"] call CODI_Loadout_fnc_setRifleSilencer;
				[_x, "30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow"] call CODI_Loadout_fnc_addRifleAmmo;
				[_x, "30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow", 4] call CODI_Loadout_fnc_addVestAmmo;
			};
			[_x, "hgun_Pistol_heavy_01_F"] call CODI_Loadout_fnc_setPistol;
			[_x, "11Rnd_45ACP_Mag"] call CODI_Loadout_fnc_addPistolAmmo;
			[_x, "11Rnd_45ACP_Mag", 1] call CODI_Loadout_fnc_addVestAmmo;
			[_x, "optic_MRD"] call CODI_Loadout_fnc_setPistolOptic;
			[_x, "muzzle_snds_acp"] call CODI_Loadout_fnc_setPistolSilencer;
		}
		forEach _all;
		[_blufor, "H_PilotHelmetFighter_B"] call CODI_Loadout_fnc_setHelmet;
		[_blufor, "U_B_pilotCoveralls"] call CODI_Loadout_fnc_setUniform;
		[_opfor, "H_PilotHelmetFighter_O"] call CODI_Loadout_fnc_setHelmet;
		[_opfor, "U_O_PilotCoveralls"] call CODI_Loadout_fnc_setUniform;
		[_independent, "H_PilotHelmetFighter_I"] call CODI_Loadout_fnc_setHelmet;
		[_independent, "U_I_pilotCoveralls"] call CODI_Loadout_fnc_setUniform;
		[_bwfleck, "H_PilotHelmetFighter_B"] call CODI_Loadout_fnc_setHelmet;
		[_bwfleck, "U_B_pilotCoveralls"] call CODI_Loadout_fnc_setUniform;
		[_bwtropen, "H_PilotHelmetFighter_B"] call CODI_Loadout_fnc_setHelmet;
		[_bwtropen, "U_B_pilotCoveralls"] call CODI_Loadout_fnc_setUniform;
		[_usfleck, "H_PilotHelmetFighter_B"] call CODI_Loadout_fnc_setHelmet;
		[_usfleck, "U_B_pilotCoveralls"] call CODI_Loadout_fnc_setUniform;
		[_ustropen, "H_PilotHelmetFighter_B"] call CODI_Loadout_fnc_setHelmet;
		[_ustropen, "U_B_pilotCoveralls"] call CODI_Loadout_fnc_setUniform;
	};
	case toLower "Helipilot";
	case toLower "B_Helipilot_F";
	case toLower "O_Helipilot_F";
	case toLower "I_Helipilot_F":
	{
		["Unarmed"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "Helipilot";
		{
			[_x, "ToolKit"] call CODI_Loadout_fnc_addBackpackItem;
			[_x, "V_PlateCarrier1_blk"] call CODI_Loadout_fnc_setVest;
			[_x, ""] call CODI_Loadout_fnc_setBackpack;
			if (isClass (configFile >> "CfgPatches" >> "hlcweapons_mp5")) then
			{
				[_x, "hlc_smg_mp5a3"] call CODI_Loadout_fnc_setRifle;
				[_x, "muzzle_snds_L"] call CODI_Loadout_fnc_setRifleSilencer;
				[_x, "hlc_30Rnd_9x19_GD_MP5"] call CODI_Loadout_fnc_addRifleAmmo;
				[_x, "hlc_30Rnd_9x19_GD_MP5", 4] call CODI_Loadout_fnc_addVestAmmo;
			}
			else
			{
				[_x, "SMG_01_Holo_F"] call CODI_Loadout_fnc_setRifle;
				[_x, "optic_Holosight_smg"] call CODI_Loadout_fnc_setRifleOptic;
				[_x, "muzzle_snds_acp"] call CODI_Loadout_fnc_setRifleSilencer;
				[_x, "30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow"] call CODI_Loadout_fnc_addRifleAmmo;
				[_x, "30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow", 4] call CODI_Loadout_fnc_addVestAmmo;
			};
			[_x, "hgun_Pistol_heavy_01_F"] call CODI_Loadout_fnc_setPistol;
			[_x, "11Rnd_45ACP_Mag"] call CODI_Loadout_fnc_addPistolAmmo;
			[_x, "11Rnd_45ACP_Mag", 1] call CODI_Loadout_fnc_addVestAmmo;
			[_x, "optic_MRD"] call CODI_Loadout_fnc_setPistolOptic;
			[_x, "muzzle_snds_acp"] call CODI_Loadout_fnc_setPistolSilencer;
		}
		forEach _all;
		[_blufor, "H_PilotHelmetHeli_B"] call CODI_Loadout_fnc_setHelmet;
		[_blufor, "U_B_HeliPilotCoveralls"] call CODI_Loadout_fnc_setUniform;
		[_opfor, "H_PilotHelmetHeli_O"] call CODI_Loadout_fnc_setHelmet;
		[_independent, "H_PilotHelmetHeli_I"] call CODI_Loadout_fnc_setHelmet;
		[_independent, "U_I_HeliPilotCoveralls"] call CODI_Loadout_fnc_setUniform;
		[_bwfleck, "H_PilotHelmetHeli_B"] call CODI_Loadout_fnc_setHelmet;
		[_bwfleck, "U_B_HeliPilotCoveralls"] call CODI_Loadout_fnc_setUniform;
		[_bwtropen, "H_PilotHelmetHeli_B"] call CODI_Loadout_fnc_setHelmet;
		[_bwtropen, "U_B_HeliPilotCoveralls"] call CODI_Loadout_fnc_setUniform;
		[_usfleck, "H_PilotHelmetHeli_B"] call CODI_Loadout_fnc_setHelmet;
		[_usfleck, "U_B_HeliPilotCoveralls"] call CODI_Loadout_fnc_setUniform;
		[_ustropen, "H_PilotHelmetHeli_B"] call CODI_Loadout_fnc_setHelmet;
		[_ustropen, "U_B_HeliPilotCoveralls"] call CODI_Loadout_fnc_setUniform;
	};
	case toLower "Helicrew";
	case toLower "B_helicrew_F";
	case toLower "O_helicrew_F";
	case toLower "I_helicrew_F":
	{
		["Unarmed"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "Helicrew";
		{
			[_x, "ToolKit"] call CODI_Loadout_fnc_addBackpackItem;
			[_x, ""] call CODI_Loadout_fnc_setBackpack;
			if (isClass (configFile >> "CfgPatches" >> "hlcweapons_mp5")) then
			{
				[_x, "hlc_smg_mp5a3"] call CODI_Loadout_fnc_setRifle;
				[_x, "muzzle_snds_L"] call CODI_Loadout_fnc_setRifleSilencer;
				[_x, "hlc_30Rnd_9x19_GD_MP5"] call CODI_Loadout_fnc_addRifleAmmo;
				[_x, "hlc_30Rnd_9x19_GD_MP5", 4] call CODI_Loadout_fnc_addVestAmmo;
			}
			else
			{
				[_x, "SMG_01_Holo_F"] call CODI_Loadout_fnc_setRifle;
				[_x, "optic_Holosight_smg"] call CODI_Loadout_fnc_setRifleOptic;
				[_x, "muzzle_snds_acp"] call CODI_Loadout_fnc_setRifleSilencer;
				[_x, "30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow"] call CODI_Loadout_fnc_addRifleAmmo;
				[_x, "30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow", 4] call CODI_Loadout_fnc_addVestAmmo;
			};
			[_x, "hgun_Pistol_heavy_01_F"] call CODI_Loadout_fnc_setPistol;
			[_x, "11Rnd_45ACP_Mag"] call CODI_Loadout_fnc_addPistolAmmo;
			[_x, "11Rnd_45ACP_Mag", 1] call CODI_Loadout_fnc_addVestAmmo;
			[_x, "optic_MRD"] call CODI_Loadout_fnc_setPistolOptic;
			[_x, "muzzle_snds_acp"] call CODI_Loadout_fnc_setPistolSilencer;
		}
		forEach _all;
		[_blufor, "H_CrewHelmetHeli_B"] call CODI_Loadout_fnc_setHelmet;
		[_blufor, "U_B_HeliPilotCoveralls"] call CODI_Loadout_fnc_setUniform;
		[_opfor, "H_CrewHelmetHeli_O"] call CODI_Loadout_fnc_setHelmet;
		[_independent, "H_CrewHelmetHeli_I"] call CODI_Loadout_fnc_setHelmet;
		[_independent, "U_I_HeliPilotCoveralls"] call CODI_Loadout_fnc_setUniform;
		[_bwfleck, "H_CrewHelmetHeli_B"] call CODI_Loadout_fnc_setHelmet;
		[_bwfleck, "U_B_HeliPilotCoveralls"] call CODI_Loadout_fnc_setUniform;
		[_bwtropen, "H_CrewHelmetHeli_B"] call CODI_Loadout_fnc_setHelmet;
		[_bwtropen, "U_B_HeliPilotCoveralls"] call CODI_Loadout_fnc_setUniform;
		[_usfleck, "H_CrewHelmetHeli_B"] call CODI_Loadout_fnc_setHelmet;
		[_usfleck, "U_B_HeliPilotCoveralls"] call CODI_Loadout_fnc_setUniform;
		[_ustropen, "H_CrewHelmetHeli_B"] call CODI_Loadout_fnc_setHelmet;
		[_ustropen, "U_B_HeliPilotCoveralls"] call CODI_Loadout_fnc_setUniform;
	};
	case toLower "Crew";
	case toLower "B_crew_F";
	case toLower "O_crew_F";
	case toLower "I_crew_F":
	{
		["Unarmed"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "Crew";
		{
			[_x, "ToolKit"] call CODI_Loadout_fnc_addBackpackItem;
			[_x, ""] call CODI_Loadout_fnc_setBackpack;
			if (isClass (configFile >> "CfgPatches" >> "hlcweapons_mp5")) then
			{
				[_x, "hlc_smg_mp5a3"] call CODI_Loadout_fnc_setRifle;
				[_x, "muzzle_snds_L"] call CODI_Loadout_fnc_setRifleSilencer;
				[_x, "hlc_30Rnd_9x19_GD_MP5"] call CODI_Loadout_fnc_addRifleAmmo;
				[_x, "hlc_30Rnd_9x19_GD_MP5", 4] call CODI_Loadout_fnc_addVestAmmo;
			}
			else
			{
				[_x, "SMG_01_Holo_F"] call CODI_Loadout_fnc_setRifle;
				[_x, "optic_Holosight_smg"] call CODI_Loadout_fnc_setRifleOptic;
				[_x, "muzzle_snds_acp"] call CODI_Loadout_fnc_setRifleSilencer;
				[_x, "30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow"] call CODI_Loadout_fnc_addRifleAmmo;
				[_x, "30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow", 4] call CODI_Loadout_fnc_addVestAmmo;
			};
			[_x, "hgun_Pistol_heavy_01_F"] call CODI_Loadout_fnc_setPistol;
			[_x, "11Rnd_45ACP_Mag"] call CODI_Loadout_fnc_addPistolAmmo;
			[_x, "11Rnd_45ACP_Mag", 1] call CODI_Loadout_fnc_addVestAmmo;
			[_x, "optic_MRD"] call CODI_Loadout_fnc_setPistolOptic;
			[_x, "muzzle_snds_acp"] call CODI_Loadout_fnc_setPistolSilencer;
		}
		forEach _all;
		[_bwfleck, "BWA3_Uniform_Crew_Fleck"] call CODI_Loadout_fnc_setUniform;
		[_bwtropen, "BWA3_Uniform_Crew_Tropen"] call CODI_Loadout_fnc_setUniform;
		[_blufor, "H_HelmetCrew_B"] call CODI_Loadout_fnc_setHelmet;
		[_opfor, "H_HelmetCrew_O"] call CODI_Loadout_fnc_setHelmet;
		[_independent, "H_HelmetCrew_I"] call CODI_Loadout_fnc_setHelmet;
		[_bwfleck, "BWA3_CrewmanKSK_Fleck_Headset"] call CODI_Loadout_fnc_setHelmet;
		[_bwtropen, "BWA3_CrewmanKSK_Tropen_Headset"] call CODI_Loadout_fnc_setHelmet;
		[_usfleck, "H_HelmetCrew_B"] call CODI_Loadout_fnc_setHelmet;
		[_ustropen, "H_HelmetCrew_B"] call CODI_Loadout_fnc_setHelmet;
	};
	case toLower "Light";
	case toLower "B_Soldier_lite_F";
	case toLower "O_Soldier_lite_F";
	case toLower "I_Soldier_lite_F":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "Light";
		{
			[_x, ""] call CODI_Loadout_fnc_setBackpack;
			[_x, ""] call CODI_Loadout_fnc_setRifleBipod;
			[_x, ""] call CODI_Loadout_fnc_setRifleLaser;
			[_x] call CODI_Loadout_fnc_clearVestAmmo;
			[_x] call CODI_Loadout_fnc_clearRifleAmmo;
			if (isClass (configFile >> "CfgPatches" >> "hlcweapons_mp5")) then
			{
				[_x, "hlc_smg_mp510"] call CODI_Loadout_fnc_setRifle;
				[_x, "optic_Holosight_smg"] call CODI_Loadout_fnc_setRifleOptic;
				[_x, "hlc_muzzle_Agendasix10mm"] call CODI_Loadout_fnc_setRifleSilencer;
				[_x, "hlc_30Rnd_10mm_JHP_MP5"] call CODI_Loadout_fnc_addRifleAmmo;
				[_x, "hlc_30Rnd_10mm_JHP_MP5", 9] call CODI_Loadout_fnc_addVestAmmo;
			}
			else
			{
				[_x, "SMG_01_Holo_F"] call CODI_Loadout_fnc_setRifle;
				[_x, "optic_Holosight_smg"] call CODI_Loadout_fnc_setRifleOptic;
				[_x, "muzzle_snds_acp"] call CODI_Loadout_fnc_setRifleSilencer;
				[_x, "30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow"] call CODI_Loadout_fnc_addRifleAmmo;
				[_x, "30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow", 4] call CODI_Loadout_fnc_addVestAmmo;
			};
		}
		forEach _all;
	};
	case toLower "SS";
	case toLower "B_Sharpshooter_F";
	case toLower "O_Sharpshooter_F":
	{
		["Rifleman"] call CODI_Loadout_fnc_loadout;
		CODI_Loadout_Class = "SS";
		{
			[_x, ""] call CODI_Loadout_fnc_setBackpack;
			[_x, ""] call CODI_Loadout_fnc_clearBackpackAmmo;
			[_x, ""] call CODI_Loadout_fnc_clearVestAmmo;
			[_x, ""] call CODI_Loadout_fnc_clearRifleAmmo;
			[_x, "bipod_01_F_blk"] call CODI_Loadout_fnc_setRifleBipod;
			[_x, ""] call CODI_Loadout_fnc_setRifleLaser;
			[_x, "optic_KHS_blk"] call CODI_Loadout_fnc_setRifleOptic;
			[_x, "muzzle_snds_338_black"] call CODI_Loadout_fnc_setRifleSilencer;
			[_x, "srifle_DMR_02_F"] call CODI_Loadout_fnc_setRifle;
			[_x, "hlc_muzzle_Tundra"] call CODI_Loadout_fnc_setPistolSilencer;
			[_x, "hlc_smg_mp5k"] call CODI_Loadout_fnc_setPistol;
			[_x, "hlc_30Rnd_9x19_GD_MP5"] call CODI_Loadout_fnc_addPistolAmmo;
			[_x, "hlc_30Rnd_9x19_GD_MP5", 3] call CODI_Loadout_fnc_addVestAmmo;
			if (isClass (configFile >> "CfgPatches" >> "ace_vector")) then
			{
				[_x, "ACE_Vector"] call CODI_Loadout_fnc_setBinocular;
			}
			else
			{
				[_x, "Rangefinder"] call CODI_Loadout_fnc_setBinocular;
			};
			if (isClass (configFile >> "CfgPatches" >> "ace_advanced_ballistics")) then
			{
				if (isClass (configFile >> "CfgPatches" >> "ace_atragmx")) then
				{
					[_x, "ACE_ATragMX", 1] call CODI_Loadout_fnc_addVestItem;
				};
				if (isClass (configFile >> "CfgPatches" >> "ace_kestrel4500")) then
				{
					[_x, "ACE_Kestrel4500", 1] call CODI_Loadout_fnc_addVestItem;
				};
			};
			if (isClass (configFile >> "CfgPatches" >> "ace_ballistics")) then
			{
				[_x, "ACE_10Rnd_338_300gr_HPBT_Mag"] call CODI_Loadout_fnc_addRifleAmmo;
				[_x, "ACE_10Rnd_338_300gr_HPBT_Mag", 4] call CODI_Loadout_fnc_addVestAmmo;
			}
			else
			{
				[_x, "10Rnd_338_Mag"] call CODI_Loadout_fnc_addRifleAmmo;
				[_x, "10Rnd_338_Mag", 4] call CODI_Loadout_fnc_addVestAmmo;
			};
		}
		forEach _all;
		{
			[_x, "bipod_01_F_snd"] call CODI_Loadout_fnc_setRifleBipod;
			[_x, "optic_KHS_tan"] call CODI_Loadout_fnc_setRifleOptic;
			[_x, "muzzle_snds_338_sand"] call CODI_Loadout_fnc_setRifleSilencer;
			[_x, "srifle_DMR_02_sniper_F"] call CODI_Loadout_fnc_setRifle;
		}
		forEach [_ustropen,_bwtropen];
	};
	case toLower "freizeit":
	{
		_uniforms = ["U_BG_Guerilla2_1","U_BG_Guerilla2_3","U_BG_Guerilla2_2"];
		_helmets = ["H_Cap_blk","H_Cap_oli","H_Cap_tan"];
		{
			[_x, _uniforms select (floor(random(count _uniforms)))] call CODI_Loadout_fnc_setUniform;
			[_x, _helmets select (floor(random(count _helmets)))] call CODI_Loadout_fnc_setHelmet;
			[_x, "ACE_Banana", 1] call CODI_Loadout_fnc_addUniformItem;
			[_x, "Chemlight_green", 2] call CODI_Loadout_fnc_addUniformItem;
			[_x, "Chemlight_blue", 2] call CODI_Loadout_fnc_addUniformItem;
			[_x, "Chemlight_yellow", 2] call CODI_Loadout_fnc_addUniformItem;
			[_x, "Chemlight_red", 2] call CODI_Loadout_fnc_addUniformItem;
			[_x, "ACE_HandFlare_White", 2] call CODI_Loadout_fnc_addUniformItem;
			[_x, "ItemMap"] call CODI_Loadout_fnc_setMap;
			[_x, "Binocular"] call CODI_Loadout_fnc_setBinocular;
			[_x, "ItemWatch"] call CODI_Loadout_fnc_setWatch;
			[_x, "ItemCompass"] call CODI_Loadout_fnc_setCompass;
			[_x, "ItemGPS"] call CODI_Loadout_fnc_setGPS;
		}
		forEach _all;
	};
};