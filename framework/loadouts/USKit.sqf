private ["_type", "_unit"];

	_type = _this select 0;
	_unit = _this select 1;
	
	if (!(local _unit)) exitwith {}; // Todella tärkeä. Estää skriptin pyörimisen ei locaaleilla uniteilla
	
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemRadio";
	_unit linkItem "tf_microdagr";
	_unit linkItem "NVGoggles_INDEP";
	//_unit addItem "NVGoggles";
	//_unit linkItem "ItemGPS"; 	


if (isServer) then {
	if (_unit isKindof "Man") then {
	_unit setVariable ["plank_class", _type, true];
	};
};

_Optic = ["rhsusf_acc_eotech_552","rhsusf_acc_compm4"] call BIS_fnc_selectRandom;

switch (_type) do
 	{ 
		//#1
		 case "PL":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "Ace_Morphine";
			_unit addItemToUniform "ace_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addItemToUniform "16Rnd_9x21_Mag";
			
			_unit addVest "rhsusf_iotv_ocp_Squadleader";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
			for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			
			_unit addBackpack "tf_rt1523g_rhs";
			_unit addItemToBackpack "ACE_HandFlare_White";
			_unit addItemToBackpack "ACE_HandFlare_Red";
			_unit addItemToBackpack "ACE_HandFlare_Green";
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			
			_unit addHeadgear "rhsusf_ach_helmet_M81";
			
			_unit addWeapon "rhs_weap_hk416d145";
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
			
			_unit addWeapon "hgun_P07_F";
			_unit addWeapon "ace_Vector";
			
			_unit linkItem "ItemGPS";
			_unit addPrimaryWeaponItem _Optic;
		}; 
		//#2
		 case "SL":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "Ace_Morphine";
			_unit addItemToUniform "ace_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addItemToUniform "16Rnd_9x21_Mag";
			
			_unit addVest "rhsusf_iotv_ocp_Squadleader";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
			for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			
			_unit addBackpack "tf_rt1523g_rhs";
			_unit addItemToBackpack "ACE_HandFlare_White";
			_unit addItemToBackpack "ACE_HandFlare_Red";
			_unit addItemToBackpack "ACE_HandFlare_Green";
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			
			_unit addHeadgear "rhsusf_ach_helmet_M81";
			_unit addWeapon "rhs_weap_hk416d145";
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
			_unit addWeapon "hgun_P07_F";
			_unit addWeapon "ace_Vector";
			_unit linkItem "ItemGPS";
			_unit addPrimaryWeaponItem _Optic;
		}; 
		//#3
		 case "UAV":
		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "Ace_Morphine";
			_unit addItemToUniform "ace_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addItemToUniform "16Rnd_9x21_Mag";
			
			_unit addVest "rhsusf_iotv_ocp_Squadleader";
			_unit addItemToVest "ACE_UAVBattery";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			
			_unit addBackpack "B_UAV_01_backpack_F";
			
			_unit addHeadgear "rhsusf_ach_helmet_M81";
			_unit addWeapon "rhs_weap_hk416d145";
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
			_unit addWeapon "hgun_P07_F";
			_unit addWeapon "ace_Vector";
			_unit linkItem "B_UavTerminal";
			_unit addPrimaryWeaponItem _Optic;
		};
		//#4
		 case "MEDIC":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "Ace_Morphine";
			_unit addItemToUniform "ace_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			
			_unit addVest "rhsusf_iotv_ocp_Medic";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
			for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_bloodIV";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_fieldDressing";};
			for "_i" from 1 to 18 do {_unit addItemToBackpack "ACE_elasticBandage";};
			for "_i" from 1 to 11 do {_unit addItemToBackpack "ACE_quikclot";};
			for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_tourniquet";};
			for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_packingBandage";};
			for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_epinephrine";};
			for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_morphine";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_fieldDressing";};
			for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_personalAidKit";};
			_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
			
			_unit addHeadgear "rhsusf_ach_helmet_ocp";
			_unit addWeapon "rhs_weap_hk416d145";
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
			_unit addPrimaryWeaponItem _Optic;
		}; 
		//#5
		 case "TL":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "Ace_Morphine";
			_unit addItemToUniform "ace_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			
			_unit addVest "rhsusf_iotv_ocp_Teamleader";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_M397_HET";};
			for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_M441_HE";};
			for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_M433_HEDP";};
			
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			_unit addItemToBackpack "ACE_HandFlare_White";
			_unit addItemToBackpack "ACE_HandFlare_Red";
			_unit addItemToBackpack "ACE_HandFlare_Green";
			for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
			
			_unit addHeadgear "rhsusf_ach_helmet_ocp";
			_unit addWeapon "rhs_weap_hk416d145_m320";
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
			_unit addWeapon "ace_Vector";
			_unit addPrimaryWeaponItem _Optic;
		}; 
		//#6
		 case "RIFLE":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "Ace_Morphine";
			_unit addItemToUniform "ace_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			
			_unit addVest "rhsusf_iotv_ocp_Rifleman";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			_unit addItemToBackpack "ACE_HandFlare_White";
			_unit addItemToBackpack "ACE_HandFlare_Red";
			_unit addItemToBackpack "ACE_HandFlare_Green";
			for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";};
			
			_unit addHeadgear "rhsusf_ach_helmet_ocp";
			_unit addWeapon "rhs_weap_hk416d145";
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
			_unit addWeapon "rhs_weap_M136";
			_unit addPrimaryWeaponItem _Optic;
		}; 
		//#7
		 case "AR":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "Ace_Morphine";
			_unit addItemToUniform "ace_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "rhsusf_100Rnd_556x45_soft_pouch";
			for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
			
			_unit addVest "rhsusf_iotv_ocp_SAW";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_100Rnd_556x45_soft_pouch";};
			
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			_unit addItemToBackpack "ACE_HandFlare_White";
			_unit addItemToBackpack "ACE_HandFlare_Red";
			_unit addItemToBackpack "ACE_HandFlare_Green";
			for "_i" from 1 to 2 do {_unit addItemToBackpack "16Rnd_9x21_Mag";};
			for "_i" from 1 to 4 do {_unit addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";};
			
			_unit addHeadgear "rhsusf_ach_helmet_ocp";
			_unit addWeapon "rhs_weap_m249_pip_s";
			//_unit addPrimaryWeaponItem "rhsusf_acc_ELCAN";
			_unit addWeapon "hgun_P07_F";
			_unit addPrimaryWeaponItem _Optic;
		}; 
		//#8
		 case "GREN":
		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "Ace_Morphine";
			_unit addItemToUniform "ace_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			
			_unit addVest "rhsusf_iotv_ocp_Grenadier";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_M397_HET";};
			for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_M441_HE";};
			for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_M433_HEDP";};
			
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			_unit addItemToBackpack "ACE_HandFlare_White";
			_unit addItemToBackpack "ACE_HandFlare_Red";
			_unit addItemToBackpack "ACE_HandFlare_Green";
			for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
			_unit addItemToBackpack "rhs_m136_mag";
			
			_unit addHeadgear "rhsusf_ach_helmet_ocp";
			_unit addWeapon "rhs_weap_hk416d145_m320";
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
			_unit addWeapon "rhs_weap_M136";
			_unit addPrimaryWeaponItem _Optic;
		}; 
		//#9
		 case "DM":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "Ace_Morphine";
			_unit addItemToUniform "ace_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 3 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
			
			_unit addVest "rhsusf_iotv_ocp_Rifleman";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
			_unit addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";
			
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			_unit addItemToBackpack "ACE_HandFlare_White";
			_unit addItemToBackpack "ACE_HandFlare_Red";
			_unit addItemToBackpack "ACE_HandFlare_Green";
			for "_i" from 1 to 7 do {_unit addItemToBackpack "rhsusf_20Rnd_762x51_m118_special_Mag";};
			
			_unit addHeadgear "rhs_Booniehat_ocp";
			_unit addWeapon "rhs_weap_m14ebrri";
			_unit addPrimaryWeaponItem "ACE_optic_Hamr_PIP";
			_unit addWeapon "hgun_P07_F";
		}; 
		//#10
		 case "CREWCOM":
		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			_unit addItemToUniform "ACE_Clacker";
			_unit addItemToUniform "ACE_DefusalKit";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "Ace_Morphine";
			_unit addItemToUniform "ace_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			
			_unit addVest "rhsusf_iotv_ocp_Rifleman";
			for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			
			_unit addBackpack "tf_rt1523g_rhs";
			
			_unit addHeadgear "rhsusf_cvc_ess";
			_unit addWeapon "rhs_weap_hk416d145";
			_unit addWeapon "ACE_Vector";
			_unit addPrimaryWeaponItem _Optic;
		};
		//#11		
		case "CREW":
		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			_unit addItemToUniform "ACE_Clacker";
			_unit addItemToUniform "ACE_DefusalKit";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "Ace_Morphine";
			_unit addItemToUniform "ace_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			
			_unit addVest "rhsusf_iotv_ocp_Rifleman";
			for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			
			_unit addHeadgear "rhsusf_cvc_ess";
			_unit addWeapon "rhs_weap_hk416d145";
			_unit addPrimaryWeaponItem _Optic;
		};
		//#12		
		case "RECON_Marksman":
 		{
			_unit forceAddUniform "U_O_Wetsuit";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "Ace_Morphine";
			_unit addItemToUniform "ace_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhsusf_20Rnd_762x51_m118_special_Mag";};
			
			_unit addVest "V_RebreatherB";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";};
			for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_M433_HEDP";};
			_unit addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";
			
			_unit addBackpack "B_Bergen_blk";
			_unit addItemToBackpack "ACE_HandFlare_White";
			_unit addItemToBackpack "ACE_HandFlare_Red";
			_unit addItemToBackpack "ACE_HandFlare_Green";
			for "_i" from 1 to 8 do {_unit addItemToBackpack "rhsusf_20Rnd_762x51_m118_special_Mag";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_20Rnd_762x51_m118_special_Mag";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_20Rnd_762x51_m118_special_Mag";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
			
			_unit addHeadgear "rhsusf_ach_helmet_ocp";
			_unit addWeapon "rhs_weap_m14ebrri";
			_unit addPrimaryWeaponItem "acc_pointer_IR";
			_unit addPrimaryWeaponItem "ACE_optic_Hamr_PIP";
			_unit addPrimaryWeaponItem "muzzle_snds_B";
			_unit addWeapon "ace_Vector";
			_unit linkItem "G_O_Diving";
		}; 
		//#13
		case "RECON_Sniper":
 		{
			_unit forceAddUniform "U_O_Wetsuit";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "Ace_Morphine";
			_unit addItemToUniform "ace_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhsusf_5Rnd_300winmag_xm2010";};
			
			_unit addVest "V_RebreatherB";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_5Rnd_300winmag_xm2010";};
			for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_M433_HEDP";};
			_unit addItemToVest "rhsusf_5Rnd_300winmag_xm2010";
			_unit addBackpack "B_Bergen_blk";
			_unit addItemToBackpack "ACE_HandFlare_White";
			_unit addItemToBackpack "ACE_HandFlare_Red";
			_unit addItemToBackpack "ACE_HandFlare_Green";
			_unit addItemToBackpack "optic_Arco";
			for "_i" from 1 to 8 do {_unit addItemToBackpack "rhsusf_5Rnd_300winmag_xm2010";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_5Rnd_300winmag_xm2010";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_5Rnd_300winmag_xm2010";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
			
			_unit addHeadgear "rhsusf_ach_helmet_ocp";
			_unit addWeapon "rhs_weap_XM2010_d";
			_unit addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4_2";
			_unit addPrimaryWeaponItem "rhsusf_acc_M2010S";
			_unit addWeapon "ace_Vector";
			_unit linkItem "G_O_Diving";
		}; 
		//#14
		case "RECON_AR":
 		{
			_unit forceAddUniform "U_O_Wetsuit";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "Ace_Morphine";
			_unit addItemToUniform "ace_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "rhsusf_100Rnd_556x45_soft_pouch";
			for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
			
			_unit addVest "V_RebreatherB";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_100Rnd_556x45_soft_pouch";};
			
			_unit addBackpack "B_Bergen_blk";
			_unit addItemToBackpack "ACE_HandFlare_White";
			_unit addItemToBackpack "ACE_HandFlare_Red";
			_unit addItemToBackpack "ACE_HandFlare_Green";
			for "_i" from 1 to 2 do {_unit addItemToBackpack "16Rnd_9x21_Mag";};
			for "_i" from 1 to 4 do {_unit addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";};
			
			_unit addHeadgear "rhsusf_ach_helmet_ocp";
			_unit addWeapon "rhs_weap_m249_pip_s";
			_unit addPrimaryWeaponItem "rhsusf_acc_ELCAN";
			_unit addPrimaryWeaponItem "acc_pointer_IR";
			_unit addWeapon "hgun_P07_F";
			_unit addWeapon "ace_Vector";
			_unit linkItem "G_O_Diving";
		};  
		//#15 
		case "MEDIC_RECON":
 		{
			_unit forceAddUniform "U_O_Wetsuit";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "Ace_Morphine";
			_unit addItemToUniform "ace_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			
			_unit addVest "V_RebreatherB";
			
			_unit addBackpack "B_Bergen_blk";
			for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_bloodIV_500";};
			for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_epinephrine";};
			for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_morphine";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_fieldDressing";};
			for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
			
			_unit addHeadgear "rhsusf_ach_helmet_ocp";
			_unit addWeapon "rhs_weap_hk416d145";
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
			_unit addPrimaryWeaponItem "acc_pointer_IR";
			_unit addWeapon "ace_Vector";
			_unit linkItem "G_O_Diving";
		}; 
		//#16
		case "TL_RECON":
 		{
			_unit forceAddUniform "U_O_Wetsuit";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "Ace_Morphine";
			_unit addItemToUniform "ace_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			
			_unit addVest "V_RebreatherB";	
			
			_unit addBackpack "B_Bergen_blk";
			_unit addItemToBackpack "ACE_HandFlare_White";
			_unit addItemToBackpack "ACE_HandFlare_Red";
			_unit addItemToBackpack "ACE_HandFlare_Green";
			for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
			for "_i" from 1 to 15 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
			
			_unit addHeadgear "rhsusf_ach_helmet_ocp";
			_unit addWeapon "rhs_weap_hk416d145_m320";
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
			_unit addPrimaryWeaponItem "rhsusf_acc_rotex5_grey";
			_unit addWeapon "ace_Vector";
			_unit linkItem "G_O_Diving";
			_unit linkItem "ItemGPS";
		}; 
		//#17 
		case "SL_RECON":
 		{
			_unit forceAddUniform "U_O_Wetsuit";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "Ace_Morphine";
			_unit addItemToUniform "ace_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addItemToUniform "16Rnd_9x21_Mag";
			
			_unit addVest "V_RebreatherB";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
			for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			
			_unit addBackpack "tf_rt1523g_rhs";
			
			_unit addHeadgear "rhsusf_ach_helmet_M81";
			_unit addWeapon "rhs_weap_hk416d145";
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
			_unit addPrimaryWeaponItem "acc_pointer_IR";
			_unit addPrimaryWeaponItem "rhsusf_acc_rotex5_grey";
			_unit addWeapon "hgun_P07_F";
			_unit addWeapon "ace_Vector";
			_unit linkItem "G_O_Diving";
		}; 
		//#18
		case "box":
 		{
		clearItemCargoGlobal _unit;
		clearMagazineCargoGlobal _unit; 
		clearWeaponCargoGlobal _unit;   
		clearbackpackCargoGlobal _unit; 

		_unit setVariable ["AFI_vehicle_gear","west",true];
		
		_unit addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",50]; 
        _unit addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",15];
		_unit addMagazineCargoGlobal ["rhs_fim92_mag", 6];		
		_unit addMagazineCargoGlobal ["rhs_mag_M433_HEDP",15]; 

		_unit addWeaponCargoGlobal ["rhs_weap_M136",8]; 
		_unit addWeaponCargoGlobal ["rhs_weap_fim92", 1];
		_unit addWeaponCargoGlobal ["rhs_weap_M136_HEDP", 4];
		
		_unit addItemCargoGlobal ["DemoCharge_Remote_Mag",8];
		_unit addItemCargoGlobal ["SatchelCharge_Remote_Mag",4];
		_unit addItemCargoGlobal ["ACE_Clacker",4];  
		_unit addItemCargoGlobal ["HandGrenade",20];   
		_unit addItemCargoGlobal ["ACE_fieldDressing",10];
		_unit addItemCargoGlobal ["ACE_tourniquet",10];
		_unit addItemCargoGlobal ["ACE_packingBandage",15];
		_unit addItemCargoGlobal ["ACE_morphine",10];
		_unit addItemCargoGlobal ["ACE_elasticBandage",10];
		_unit addItemCargoGlobal ["ACE_quikclot",10];
		_unit addItemCargoGlobal ["ACE_personalAidKit",2];
		_unit addItemCargoGlobal ["ACE_epinephrine",10];
		_unit addItemCargoGlobal ["ACE_bodyBag",10];
		_unit addItemCargoGlobal ["ACE_bloodIV",6];
		_unit addItemCargoGlobal ["SLAMDirectionalMine_Wire_Mag",5];
		_unit addItemCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",5];
		_unit addItemCargoGlobal ["ATMine_Range_Mag",5];
		_unit addItemCargoGlobal ["ACE_EntrenchingTool",3];
		
		_unit addbackpackCargoGlobal ["RHS_M2_Gun_Bag",1]; 
		_unit addbackpackCargoGlobal ["RHS_M2_Tripod_Bag",1]; 
		};
		//#19
		case "vehicle":
		{
		_unit setVariable ["AFI_vehicle_gear","west",true];
		clearItemCargoGlobal _unit;
		clearMagazineCargoGlobal _unit; 
		clearWeaponCargoGlobal _unit;   
		clearbackpackCargoGlobal _unit; 
		_unit disableTIEquipment true;
	};
};
 	//FOR EVERYONE
			_unit addItemTobackpack "ACE_morphine";
			_unit addItemTobackpack "ACE_quikclot";
			_unit addItemTobackpack "ACE_quikclot";
			for "_i" from 1 to 2 do {_unit addItemTobackpack "ACE_tourniquet";};
			for "_i" from 1 to 4 do {_unit addItemTobackpack "ACE_packingBandage";};
			_unit addItemToVest "ACE_Flashlight_MX991";
