private ["_type", "_unit"];

// ["SL", this] call compile preprocessFileLineNumbers "usakit.sqf";
// valmiit classit:
// PL, platoon leader - joukkueenjohtaja
// SL, squad leader - ryhm‰njohtaja
// TL, team leader - partionjohtaja
// AR, automatic rifleman - konekiv‰‰rimies
// RIFLE, rifleman - kiv‰‰rimies
// RIFLEAT, rifleman at - kiv‰‰rimies kertasingolla
// DM, designated marksman - tukiampuja
// MG, machine gunner - konekiv‰‰rimies (raskas)
// MGa, assistant machine gunner - kk-pari
// AT, anti-tank maaws - pst-mies
// ATa, maaws assistant - pst-pari
// FO, forward observer - tulenjohtaja
// RTO, radio telephone operator - radisti
// CREWL, crew leader - vaununjohtaja
// CREW, crewman - vaunumies
// MEDIC, l‰‰kint‰mies

_type = _this select 0;
_unit = _this select 1;

if (!(local _unit)) exitwith {}; // Todella t‰rke‰. Est‰‰ skriptin pyˆrimisen ei locaaleilla uniteilla

tf_no_auto_long_range_radio = true;

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
_unit linkItem "tf_microdagr";
_unit linkItem "ItemRadio";
_unit linkItem "rhsusf_ANPVS_15"; // nvg

_camo = 2; // 1 = UCP, 2 = OCP

switch (_type) do { 
	case "PL":
	{
		switch (_camo) do {
			case 1: {
				_unit forceAddUniform "rhs_uniform_cu_ucp";
				_unit addVest "rhsusf_iotv_ocp_Squadleader";
				_unit addHeadgear "rhsusf_ach_helmet_ESS_ucp";
			};
			case 2: {
				_unit forceAddUniform "rhs_uniform_cu_ocp";
				_unit addVest "rhsusf_iotv_ocp_Squadleader";
				_unit addHeadgear "rhsusf_ach_helmet_ESS_ocp";
			};
		};
		_unit addBackpack "tf_rt1523g_rhs";
		_unit addItemToUniform "ACE_IR_Strobe_Item";
		for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
		for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m18_yellow";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m18_red";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m18_green";};
		_unit addItemToBackpack "B_IR_Grenade";
		_unit addWeapon "rhs_weap_m4a1_carryhandle";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
		_unit addWeapon "Rangefinder";
		_unit linkItem "ItemGPS";
	}; 

	case "SL":
	{
		switch (_camo) do {
			case 1: {
				_unit forceAddUniform "rhs_uniform_cu_ucp";
				_unit addVest "rhsusf_iotv_ocp_Squadleader";
				_unit addHeadgear "rhsusf_ach_helmet_ESS_ucp";
			};
			case 2: {
				_unit forceAddUniform "rhs_uniform_cu_ocp";
				_unit addVest "rhsusf_iotv_ocp_Squadleader";
				_unit addHeadgear "rhsusf_ach_helmet_ESS_ocp";
			};
		};
		_unit addBackpack "tf_rt1523g_rhs";
		_unit addItemToUniform "ACE_IR_Strobe_Item";
		for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 10 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m18_red";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m18_green";};
		for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		_unit addWeapon "rhs_weap_m4a1_carryhandle";
		_unit addWeapon "ACE_Vector";
		_unit linkItem "ItemGPS";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
	}; 

	case "TL":
	{
		switch (_camo) do {
			case 1: {
				_unit forceAddUniform "rhs_uniform_cu_ucp";
				_unit addVest "rhsusf_iotv_ocp_Squadleader";
				_unit addHeadgear "rhsusf_ach_helmet_ESS_ucp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ucp";
			};
			case 2: {
				_unit forceAddUniform "rhs_uniform_cu_ocp";
				_unit addVest "rhsusf_iotv_ocp_Squadleader";
				_unit addHeadgear "rhsusf_ach_helmet_ESS_ocp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			};
		};
		for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 10 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
		_unit addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";
		for "_i" from 1 to 5 do {this addItemToBackpack "rhs_mag_M441_HE";};
		for "_i" from 1 to 3 do {this addItemToBackpack "rhs_mag_M585_white";};
		for "_i" from 1 to 3 do {this addItemToBackpack "rhs_mag_m661_green";};
		for "_i" from 1 to 3 do {this addItemToBackpack "rhs_mag_m662_red";};
		for "_i" from 1 to 3 do {this addItemToBackpack "rhs_mag_m714_White";};
		for "_i" from 1 to 3 do {this addItemToBackpack "rhs_mag_m715_Green";};
		for "_i" from 1 to 3 do {this addItemToBackpack "rhs_mag_m713_Red";};
		for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		_unit addWeapon "rhs_weap_m4a1_carryhandle_m203";
		_unit addWeapon "Binocular";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
	}; 

	case "FO":
	{
		switch (_camo) do {
			case 1: {
				_unit forceAddUniform "rhs_uniform_cu_ucp";
				_unit addVest "rhsusf_iotv_ocp_Squadleader";
				_unit addHeadgear "rhsusf_ach_helmet_ESS_ucp";
			};
			case 2: {
				_unit forceAddUniform "rhs_uniform_cu_ocp";
				_unit addVest "rhsusf_iotv_ocp_Squadleader";
				_unit addHeadgear "rhsusf_ach_helmet_ESS_ocp";
			};
		};
		_unit addBackpack "tf_rt1523g_rhs";
		_unit addItemToUniform "Laserbatteries";
		for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
		for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m18_yellow";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m18_red";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m18_green";};
		_unit addItemToBackpack "B_IR_Grenade";
		_unit addWeapon "rhs_weap_m4a1_carryhandle";
		_unit addWeapon "Laserdesignator";
	}; 

	case "RTO":
	{
		switch (_camo) do {
			case 1: {
				_unit forceAddUniform "rhs_uniform_cu_ucp";
				_unit addVest "rhsusf_iotv_ocp_Rifleman";
				_unit addHeadgear "rhsusf_ach_helmet_ucp";
			};
			case 2: {
				_unit forceAddUniform "rhs_uniform_cu_ocp";
				_unit addVest "rhsusf_iotv_ocp_Rifleman";
				_unit addHeadgear "rhsusf_ach_helmet_ocp";
			};
		};
		_unit addBackpack "tf_rt1523g_rhs";
		for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 10 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m67";};
		for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		_unit addWeapon "rhs_weap_m4a1_carryhandle";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
	};

	case "CREWL":
	{
		switch (_camo) do {
			case 1: {
				_unit forceAddUniform "rhs_uniform_cu_ucp";
				_unit addVest "rhsusf_iotv_ucp";
			};
			case 2: {
				_unit forceAddUniform "rhs_uniform_cu_ocp";
				_unit addVest "rhsusf_iotv_ocp";
			};
		};
		_unit addBackpack "tf_rt1523g_rhs";
		_unit addHeadgear "rhsusf_cvc_ess";
		for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m18_red";};
		_unit addWeapon "rhs_weap_m4a1_carryhandle";
		_unit addWeapon "ACE_Vector";
	};

	case "CREW":
	{
		switch (_camo) do {
			case 1: {
				_unit forceAddUniform "rhs_uniform_cu_ucp";
				_unit addVest "rhsusf_iotv_ucp";
			};
			case 2: {
				_unit forceAddUniform "rhs_uniform_cu_ocp";
				_unit addVest "rhsusf_iotv_ocp";
			};
		};
		_unit addHeadgear "rhsusf_cvc_ess";
		for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m18_red";};
		_unit addWeapon "rhs_weap_m4a1_carryhandle";
	}; 

	case "AR":
	{
		switch (_camo) do {
			case 1: {
				_unit forceAddUniform "rhs_uniform_cu_ucp";
				_unit addVest "rhsusf_iotv_ocp_SAW";
				_unit addHeadgear "rhsusf_ach_helmet_ucp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ucp";
			};
			case 2: {
				_unit forceAddUniform "rhs_uniform_cu_ocp";
				_unit addVest "rhsusf_iotv_ocp_SAW";
				_unit addHeadgear "rhsusf_ach_helmet_ocp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			};
		};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_100Rnd_556x45_soft_pouch";};
		for "_i" from 1 to 3 do {_unit addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m67";};
		_unit addWeapon "rhs_weap_m249_pip";
	}; 
	
	case "GREN":
	{
		switch (_camo) do {
			case 1: {
				_unit forceAddUniform "rhs_uniform_cu_ucp";
				_unit addVest "rhsusf_iotv_ocp_Grenadier";
				_unit addHeadgear "rhsusf_ach_helmet_ucp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ucp";
			};
			case 2: {
				_unit forceAddUniform "rhs_uniform_cu_ocp";
				_unit addVest "rhsusf_iotv_ocp_Grenadier";
				_unit addHeadgear "rhsusf_ach_helmet_ocp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			};
		};
		for "_i" from 1 to 4 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
		for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_M433_HEDP";};
		_unit addItemToVest "rhs_mag_m4009";
		_unit addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";
		for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_M714_white";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_M715_green";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_M716_yellow";};
		_unit addWeapon "rhs_weap_m4a1_carryhandle_m203";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
		_unit removeMagazineGlobal "rhs_mag_m4009";
	}; 
	
	case "RIFLE":
	{
		switch (_camo) do {
			case 1: {
				_unit forceAddUniform "rhs_uniform_cu_ucp";
				_unit addVest "rhsusf_iotv_ocp_Rifleman";
				_unit addHeadgear "rhsusf_ach_helmet_ucp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ucp";
			};
			case 2: {
				_unit forceAddUniform "rhs_uniform_cu_ocp";
				_unit addVest "rhsusf_iotv_ocp_Rifleman";
				_unit addHeadgear "rhsusf_ach_helmet_ocp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			};
		};
		for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 10 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		_unit addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m67";};
		for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		_unit addWeapon "rhs_weap_m4a1_carryhandle";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
	}; 

	case "RIFLEAT":
	{
		switch (_camo) do {
			case 1: {
				_unit forceAddUniform "rhs_uniform_cu_ucp";
				_unit addVest "rhsusf_iotv_ocp_Rifleman";
				_unit addHeadgear "rhsusf_ach_helmet_ucp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ucp";
			};
			case 2: {
				_unit forceAddUniform "rhs_uniform_cu_ocp";
				_unit addVest "rhsusf_iotv_ocp_Rifleman";
				_unit addHeadgear "rhsusf_ach_helmet_ocp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			};
		};
		for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 10 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		_unit addItemToBackpack "rhs_m136_mag";
		_unit addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m67";};
		for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		_unit addWeapon "rhs_weap_m4a1_carryhandle";
		_unit addWeapon "rhs_weap_M136";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
	}; 
	
	case "DM":
	{
		switch (_camo) do {
			case 1: {
				_unit forceAddUniform "rhs_uniform_cu_ucp";
				_unit addVest "rhsusf_iotv_ocp_Rifleman";
				_unit addHeadgear "rhsusf_ach_helmet_ucp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ucp";
			};
			case 2: {
				_unit forceAddUniform "rhs_uniform_cu_ocp";
				_unit addVest "rhsusf_iotv_ocp_Rifleman";
				_unit addHeadgear "rhsusf_ach_helmet_ocp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			};
		};
		for "_i" from 1 to 2 do {_unit addItemToUniform "20Rnd_762x51_Mag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "20Rnd_762x51_Mag";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m67";};
		for "_i" from 1 to 7 do {_unit addItemToBackpack "20Rnd_762x51_Mag";};
		_unit addWeapon "rhs_weap_m14ebrri";
		_unit addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4";
	}; 

	case "MG":
	{
		switch (_camo) do {
			case 1: {
				_unit forceAddUniform "rhs_uniform_cu_ucp";
				_unit addVest "rhsusf_iotv_ocp_SAW";
				_unit addHeadgear "rhsusf_ach_helmet_ucp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ucp";
			};
			case 2: {
				_unit forceAddUniform "rhs_uniform_cu_ocp";
				_unit addVest "rhsusf_iotv_ocp_SAW";
				_unit addHeadgear "rhsusf_ach_helmet_ocp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			};
		};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_100Rnd_762x51";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m67";};
		_unit addWeapon "rhs_weap_m240B";
	}; 

	case "MGa":
	{
		switch (_camo) do {
			case 1: {
				_unit forceAddUniform "rhs_uniform_cu_ucp";
				_unit addVest "rhsusf_iotv_ocp_Rifleman";
				_unit addHeadgear "rhsusf_ach_helmet_ucp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ucp";
			};
			case 2: {
				_unit forceAddUniform "rhs_uniform_cu_ocp";
				_unit addVest "rhsusf_iotv_ocp_Rifleman";
				_unit addHeadgear "rhsusf_ach_helmet_ocp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			};
		};
		for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 10 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
		for "_i" from 1 to 3 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		_unit addWeapon "rhs_weap_m4a1_carryhandle";
		_unit addWeapon "Binocular";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
	};
	
	case "AT":
	{
		switch (_camo) do {
			case 1: {
				_unit forceAddUniform "rhs_uniform_cu_ucp";
				_unit addVest "rhsusf_iotv_ocp_Rifleman";
				_unit addHeadgear "rhsusf_ach_helmet_ucp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ucp";
			};
			case 2: {
				_unit forceAddUniform "rhs_uniform_cu_ocp";
				_unit addVest "rhsusf_iotv_ocp_Rifleman";
				_unit addHeadgear "rhsusf_ach_helmet_ocp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			};
		};
		for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 15 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m67";};
		_unit addItemToBackpack "tf47_m3maaws_HEAT";
		_unit addWeapon "rhs_weap_m4a1_carryhandle";
		_unit addWeapon "tf47_m3maaws";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
		_unit addSecondaryWeaponItem "tf47_optic_m3maaws";
	}; 

	case "ATa":
	{
		switch (_camo) do {
			case 1: {
				_unit forceAddUniform "rhs_uniform_cu_ucp";
				_unit addVest "rhsusf_iotv_ocp_Rifleman";
				_unit addHeadgear "rhsusf_ach_helmet_ucp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ucp";
			};
			case 2: {
				_unit forceAddUniform "rhs_uniform_cu_ocp";
				_unit addVest "rhsusf_iotv_ocp_Rifleman";
				_unit addHeadgear "rhsusf_ach_helmet_ocp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			};
		};
		for "_i" from 1 to 4 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 12 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
		_unit addItemToBackpack "tf47_m3maaws_HE";
		_unit addItemToBackpack "tf47_m3maaws_HEAT";
		_unit addWeapon "rhs_weap_m4a1_carryhandle";
		_unit addWeapon "Binocular";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
	}; 
	
	case "MEDIC":
	{
		switch (_camo) do {
			case 1: {
				_unit forceAddUniform "rhs_uniform_cu_ucp";
				_unit addVest "rhsusf_iotv_ocp_Medic";
				_unit addHeadgear "rhsusf_ach_helmet_ucp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ucp";
			};
			case 2: {
				_unit forceAddUniform "rhs_uniform_cu_ocp";
				_unit addVest "rhsusf_iotv_ocp_Medic";
				_unit addHeadgear "rhsusf_ach_helmet_ocp";
				_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			};
		};
		for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 10 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_an_m8hc";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m18_red";};
		for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 7 do {_unit addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_bloodIV_500";};
		_unit addWeapon "rhs_weap_m4a1_carryhandle";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
	};
};

_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_fieldDressing";};