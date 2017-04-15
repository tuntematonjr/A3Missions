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
	//_unit linkItem "rhsusf_ANPVS_14";
	//unit addItem "ItemGPS"; 	
	
	_headGear = ["rhsusf_lwh_helmet_marpatd",
				 "rhsusf_lwh_helmet_marpatd_ess"] call BIS_fnc_selectRandom;
				 
 	_headGearSL = "rhsusf_lwh_helmet_marpatd_headset";
	
	_nvg = "rhsusf_ANPVS_14";
	
	_boonie = "rhs_Booniehat_marpatd";
	
	_backpack = "rhsusf_assault_eagleaiii_coy";
	_backpackheavy = "B_Carryall_khk";
	
	_backradio = "tf_rt1523g_rhs";
	
	_uniform = "rhs_uniform_FROG01_d";
	
	_vestSL = "rhsusf_spc_squadleader";
	
	_vestTL = "rhsusf_spc_teamleader";
	
	_vest = ["rhsusf_spc_rifleman",
			 "rhsusf_spc_light"] call BIS_fnc_selectRandom;
	
	_vestMM = "rhsusf_spc_marksman";
	
	_vestAR = "rhsusf_spc_mg";
	
	_vestMEDIC = "rhsusf_spc_corpsman";
	
	_vestCREW = "rhsusf_spc_crewman";
	
	_vestIAR = "rhsusf_spc_iar";
	
	_rifle = ["rhs_weap_m16a4_carryhandle",
			  "rhs_weap_m16a4_carryhandle_grip",
			  "rhs_weap_m16a4_carryhandle_grip_pmag",
			  "rhs_weap_m16a4_carryhandle_pmag"] call BIS_fnc_selectRandom;

	_rifleSL = ["rhs_weap_m4a1_carryhandle",
				"rhs_weap_m4a1_carryhandle_grip2",
				"rhs_weap_m4a1_carryhandle_pmag",
				"rhs_weap_m4a1_carryhandle_grip"] call BIS_fnc_selectRandom;
			
	_rifleGL = ["rhs_weap_m16a4_carryhandle_M203",
				"rhs_weap_m4a1_carryhandle_m203"] call BIS_fnc_selectRandom;
			
	_rifleMAG = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
	_rifleTMAG = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
	
	_IAR = "rhs_weap_m27iar_grip";
	
	_AR = "rhs_weap_m249_pip_L";
	
	_ARMAG = "rhs_200rnd_556x45_M_SAW";
	_ARTMAG = "rhs_200rnd_556x45_T_SAW";
	
	_MG = "rhs_weap_m240B_CAP";
	
	_MGMAG = "rhsusf_100Rnd_762x51";
	_MGTMAG = "rhsusf_100Rnd_762x51_m62_tracer";
	
	_LAT = "rhs_weap_m72a7";
	_FAT = "rhs_weap_M136";
	_HAT = "rhs_weap_fgm148";
	_HATMAG = "rhs_fgm148_magazine_AT";
	
	_AT = "rhs_weap_smaw_green";
	_ATsight = "rhs_weap_optic_smaw";
	
	_ATHEAA = "rhs_mag_smaw_HEAA";
	_ATHEDP = "rhs_mag_smaw_HEDP";
	_ATSPOT = "rhs_mag_smaw_SR";
	
	_grenade = "rhs_mag_m67";
	_smoke = "rhs_mag_an_m8hc";
	_smokeg = "rhs_mag_m18_green";
	_smoker = "rhs_mag_m18_red";
	
	_GLHE = "rhs_mag_M433_HEDP";
	_GLSMK = "rhs_mag_M585_white";
	_GLSMKR = "rhs_mag_m662_red";
	_GLFLR = "rhs_mag_m714_White";
	_GLFLRR = "rhs_mag_m713_Red";
	
	
	_lightatt = "rhsusf_acc_anpeq15_light";
	_bipod = "rhsusf_acc_harris_bipod";
	
	_sight =["rhsusf_acc_eotech_552",
			"rhsusf_acc_compm4"] call BIS_fnc_selectRandom;
			
	_sightLR = "rhsusf_acc_ACOG_USMC";
			
	_bandage = "ACE_fieldDressing";
	_morphine = "ACE_morphine";
	_epine = "ACE_epinephrine";
	_blood = "ACE_bloodIV_500";
	
	
	_cabletie = "ACE_CableTie";
	_maptools = "ACE_MapTools";
	_earplugs = "ACE_EarPlugs";
	
	_vector = "ACE_Vector";
	_gps = "ItemGPS";
	_dagr = "ACE_DAGR";
	_rtable = "ACE_RangeTable_82mm";

 	switch (_type) do
 	{ 
	
		case "PL":
 		{
			_unit forceAddUniform _uniform;
			for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
			_unit addItemToUniform _morphine;
			_unit addItemToUniform _maptools;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _nvg;
			_unit addItemToUniform "ACE_Flashlight_MX991";
			_unit addVest _vestSL;
			for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
			for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 5 do {_unit addItemToVest _rifleMAG;};
			for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMAG;};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
			_unit addBackpack _backradio;
			_unit addItem "ACE_SpraypaintRed";
			_unit addItem "ACE_SpraypaintGreen";
			for "_i" from 1 to 2 do {_unit addItemToBackpack _smoker;};
			for "_i" from 1 to 2 do {_unit addItemToBackpack _smokeg;};
			_unit addHeadgear "rhs_8point_marpatd";
			_unit addWeapon _rifleSL;
			_unit addPrimaryWeaponItem _sightLR;
			_unit addPrimaryWeaponItem _lightatt;
			_unit addWeapon "rhsusf_weap_m9";
			_unit addWeapon _vector;
			_unit linkItem _gps; 	
		 }; 

		 case "SL":
 		{
			_unit forceAddUniform _uniform;
			for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
			_unit addItemToUniform _morphine;
			_unit addItemToUniform _maptools;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _boonie;
			_unit addItemToUniform _nvg;
			_unit addItemToUniform "ACE_Flashlight_MX991";
			_unit addVest _vestSL;
			for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
			for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 5 do {_unit addItemToVest _rifleMAG;};
			for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMAG;};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
			_unit addBackpack _backradio;
			_unit addItem "ACE_SpraypaintRed";
			_unit addItem "ACE_SpraypaintGreen";
			for "_i" from 1 to 2 do {_unit addItemToBackpack _smoker;};
			for "_i" from 1 to 2 do {_unit addItemToBackpack _smokeg;};
			_unit addHeadgear _headGearSL;
			_unit addWeapon _rifleSL;
			_unit addPrimaryWeaponItem _sightLR;
			_unit addPrimaryWeaponItem _lightatt;
			_unit addWeapon "rhsusf_weap_m9";
			_unit addWeapon _vector;
			_unit linkItem _gps; 	
		 }; 

		 case "MEDIC":
 		{
			_unit forceAddUniform _uniform;
			for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
			_unit addItemToUniform _morphine;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _boonie;
			_unit addItemToUniform _nvg;
			_unit addItemToUniform "ACE_Flashlight_MX991";
			_unit addVest _vestMEDIC;
			for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
			for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 5 do {_unit addItemToVest _rifleMAG;};
			for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMAG;};
			_unit addBackpack _backpack;
			for "_i" from 1 to 4 do {_unit addItemToBackpack _epine;};
			for "_i" from 1 to 4 do {_unit addItemToBackpack _morphine;};
			for "_i" from 1 to 15 do {_unit addItemToBackpack _bandage;};
			for "_i" from 1 to 2 do {_unit addItemToBackpack _smoker;};
			for "_i" from 1 to 2 do {_unit addItemToBackpack _smokeg;};
			_unit addHeadgear _headGear;
			_unit addWeapon _rifle;
			_unit addPrimaryWeaponItem _sight;
			_unit addPrimaryWeaponItem _lightatt;
		 }; 

		 
			 case "MORTARSL":
 		{
			_unit forceAddUniform _uniform;
			for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
			_unit addItemToUniform _morphine;
			_unit addItemToUniform _maptools;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _boonie;
			_unit addItemToUniform _nvg;
			_unit addItemToUniform "ACE_Flashlight_MX991";
			_unit addVest _vestSL;
			for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
			for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 10 do {_unit addItemToVest _rifleMAG;};
			for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMAG;};
			_unit addBackpack _backradio;
			for "_i" from 1 to 2 do {_unit addItemToBackpack _smoker;};
			for "_i" from 1 to 2 do {_unit addItemToBackpack _smokeg;};
			_unit addHeadgear _headGearSL;
			_unit addWeapon _rifleSL;
			_unit addPrimaryWeaponItem _sight;
			_unit addPrimaryWeaponItem _lightatt;
			_unit addWeapon _vector;
			_unit linkItem _gps; 	
			_unit addItem _dagr;
			_unit addItem _rtable;	
		 }; 
		 case "TL":
 		{
			_unit forceAddUniform _uniform;
			for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
			_unit addItemToUniform _morphine;
			_unit addItemToUniform _maptools;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _boonie;
			_unit addItemToUniform _nvg;
			_unit addItemToUniform "ACE_Flashlight_MX991";
			_unit addVest _vestTL;
			for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
			for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 8 do {_unit addItemToVest _GLHE;};
			for "_i" from 1 to 2 do {_unit addItemToVest _GLSMK;};
			for "_i" from 1 to 5 do {_unit addItemToVest _rifleMAG;};
			for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMAG;};
			_unit addHeadgear _headGearSL;
			_unit addWeapon _rifleGL;
			_unit addPrimaryWeaponItem _sight;
			_unit addPrimaryWeaponItem _lightatt;
			_unit addWeapon _vector;

		 }; 
		 
		  case "IAR":
 		{
			_unit forceAddUniform _uniform;
			for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
			_unit addItemToUniform _morphine;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _boonie;
			_unit addItemToUniform _nvg;
			_unit addItemToUniform "ACE_Flashlight_MX991";
			_unit addVest _vestIAR;
			for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
			for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 8 do {_unit addItemToVest _rifleMAG;};
			for "_i" from 1 to 2 do {_unit addItemToUniform _rifleTMAG;};
			_unit addBackpack _backpack;
			for "_i" from 1 to 8 do {_unit addItemToBackpack _rifleMAG;};
			for "_i" from 1 to 2 do {_unit addItemToBackpack _rifleTMAG;};
			_unit addHeadgear _headGear;
			_unit addWeapon _IAR;
			_unit addPrimaryWeaponItem _sightLR;
			_unit addPrimaryWeaponItem _lightatt;
			_unit addPrimaryWeaponItem _bipod;
		 }; 
		 
		  case "IARASS":
 		{
			_unit forceAddUniform _uniform;
			for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
			_unit addItemToUniform _morphine;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _boonie;
			_unit addItemToUniform _nvg;
			_unit addItemToUniform "ACE_Flashlight_MX991";
			_unit addVest _vest;
			for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
			for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 6 do {_unit addItemToVest _rifleMAG;};
			for "_i" from 1 to 2 do {_unit addItemToUniform _rifleTMAG;};
			_unit addBackpack _backpack;
			for "_i" from 1 to 6 do {_unit addItemToBackpack _rifleMAG;};
			for "_i" from 1 to 2 do {_unit addItemToBackpack _rifleTMAG;};
			_unit addHeadgear _headGear;
			_unit addWeapon _rifle;
			_unit addPrimaryWeaponItem _sight;
			_unit addPrimaryWeaponItem _lightatt;
			_unit addWeapon _vector;
		 }; 

		 case "RIFLE":
 		{
			_unit forceAddUniform _uniform;
			for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
			_unit addItemToUniform _morphine;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _boonie;
			_unit addItemToUniform _nvg;
			_unit addItemToUniform "ACE_Flashlight_MX991";
			_unit addVest _vest;
			for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
			for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 5 do {_unit addItemToVest _rifleMAG;};
			for "_i" from 1 to 2 do {_unit addItemToUniform _rifleTMAG;};
			_unit addHeadgear _headGear;
			_unit addWeapon _rifle;
			_unit addPrimaryWeaponItem _sight;
			_unit addPrimaryWeaponItem _lightatt;
			_unit addWeapon _LAT;"B_rhsusf_B_BACKPACK"
		 }; 
		 
		 case "UAV":
 		{
			_unit forceAddUniform _uniform;
			for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
			_unit addItemToUniform _morphine;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _boonie;
			_unit addItemToUniform _nvg;
			_unit addItemToUniform "ACE_Flashlight_MX991";
			_unit addVest _vest;
			for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
			for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 5 do {_unit addItemToVest _rifleMAG;};
			for "_i" from 1 to 2 do {_unit addItemToUniform _rifleTMAG;};
			_unit addHeadgear _headGear;
			_unit addWeapon _rifle;
			_unit addPrimaryWeaponItem _sight;
			_unit addPrimaryWeaponItem _lightatt;
			_unit addBackpack "B_rhsusf_B_BACKPACK";
		 };
		 
		 case "ATRIFLE":
 		{
			_unit forceAddUniform _uniform;
			for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
			_unit addItemToUniform _morphine;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _boonie;
			_unit addItemToUniform _nvg;
			_unit addItemToUniform "ACE_Flashlight_MX991";
			_unit addVest _vest;
			for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
			for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 5 do {_unit addItemToVest _rifleMAG;};
			for "_i" from 1 to 2 do {_unit addItemToUniform _rifleTMAG;};
			_unit addHeadgear _headGear;
			_unit addWeapon _rifle;
			_unit addPrimaryWeaponItem _sight;
			_unit addPrimaryWeaponItem _lightatt;
			_unit addWeapon _FAT;
		 }; 
		 
		 
		  case "AR":
 		{
			_unit forceAddUniform _uniform;
			for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
			_unit addItemToUniform _morphine;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _boonie;
			_unit addItemToUniform _nvg;
			_unit addItemToUniform "ACE_Flashlight_MX991";
			_unit addVest _vestAR;
			for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
			for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 1 do {_unit addItemToVest _ARMAG;};
			_unit addBackpack _backpack;
			for "_i" from 1 to 1 do {_unit addItemToBackpack _ARMAG;};
			for "_i" from 1 to 1 do {_unit addItemToBackpack _ARTMAG;};
			_unit addHeadgear _headGear;
			_unit addWeapon _AR;
			_unit addPrimaryWeaponItem _sight;
			_unit addPrimaryWeaponItem _lightatt;
		 }; 
		 
		  case "ARASS":
 		{
			_unit forceAddUniform _uniform;
			for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
			_unit addItemToUniform _morphine;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _boonie;
			_unit addItemToUniform _nvg;
			_unit addItemToUniform "ACE_Flashlight_MX991";
			_unit addVest _vest;
			for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
			for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 5 do {_unit addItemToVest _rifleMAG;};
			for "_i" from 1 to 2 do {_unit addItemToUniform _rifleTMAG;};
			_unit addBackpack _backpack;
			for "_i" from 1 to 1 do {_unit addItemToBackpack _ARMAG;};
			for "_i" from 1 to 1 do {_unit addItemToBackpack _ARTMAG;};
			_unit addHeadgear _headGear;
			_unit addWeapon _rifle;
			_unit addPrimaryWeaponItem _sight;
			_unit addPrimaryWeaponItem _lightatt;
			_unit addWeapon _vector;
		 }; 
		 
		   case "MG":
 		{
			_unit forceAddUniform _uniform;
			for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
			_unit addItemToUniform _morphine;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _boonie;
			_unit addItemToUniform _nvg;
			_unit addItemToUniform "ACE_Flashlight_MX991";
			_unit addVest _vestAR;
			for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
			for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 2 do {_unit addItemToVest _MGMAG;};
			_unit addBackpack _backpack;
			for "_i" from 1 to 4 do {_unit addItemToBackpack _MGMAG;};
			for "_i" from 1 to 2 do {_unit addItemToBackpack _MGTMAG;};
			_unit addHeadgear _headGear;
			_unit addWeapon _MG;
			_unit addPrimaryWeaponItem "rhsusf_acc_ELCAN_ard";
			_unit addPrimaryWeaponItem _lightatt;
		 }; 
		 
		  case "MGASS":
 		{
			_unit forceAddUniform _uniform;
			for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
			_unit addItemToUniform _morphine;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _boonie;
			_unit addItemToUniform _nvg;
			_unit addItemToUniform "ACE_Flashlight_MX991";
			_unit addVest _vest;
			for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
			for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 5 do {_unit addItemToVest _rifleMAG;};
			for "_i" from 1 to 2 do {_unit addItemToUniform _rifleTMAG;};
			_unit addBackpack _backpack;
			for "_i" from 1 to 4 do {_unit addItemToBackpack _ARMAG;};
			for "_i" from 1 to 2 do {_unit addItemToBackpack _ARTMAG;};
			_unit addHeadgear _headGear;
			_unit addWeapon _rifle;
			_unit addPrimaryWeaponItem _sight;
			_unit addPrimaryWeaponItem _lightatt;
			_unit addWeapon _vector;
		 }; 
		 
		   case "AT":
 		{
			_unit forceAddUniform _uniform;
			for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
			_unit addItemToUniform _morphine;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _boonie;
			_unit addItemToUniform _nvg;
			_unit addItemToUniform "ACE_Flashlight_MX991";
			_unit addVest _vest;
			for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
			for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 5 do {_unit addItemToVest _rifleMAG;};
			for "_i" from 1 to 2 do {_unit addItemToUniform _rifleTMAG;};
			_unit addBackpack _backpackheavy;
			_unit addItemToBackpack _HATMAG;
			_unit addHeadgear _headGear;
			_unit addWeapon _rifle;
			_unit addPrimaryWeaponItem _sight;
			_unit addPrimaryWeaponItem _lightatt;
			_unit addWeapon _HAT;
		 }; 
		 
		   case "ATASS":
 		{
			_unit forceAddUniform _uniform;
			for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
			_unit addItemToUniform _morphine;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _boonie;
			_unit addItemToUniform _nvg;
			_unit addItemToUniform "ACE_Flashlight_MX991";
			_unit addVest _vest;
			for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
			for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 5 do {_unit addItemToVest _rifleMAG;};
			for "_i" from 1 to 2 do {_unit addItemToUniform _rifleTMAG;};
			_unit addBackpack _backpackheavy;
			_unit addItemToBackpack _HATMAG;
			_unit addHeadgear _headGear;
			_unit addWeapon _rifle;
			_unit addPrimaryWeaponItem _sight;
			_unit addPrimaryWeaponItem _lightatt;
			_unit addWeapon _vector;
		 }; 
		 
		 case "SS":
 		{
			_unit forceAddUniform "rhs_uniform_FROG01_d";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_Morphine";
			_unit addItemToUniform "ACE_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "ACE_Flashlight_MX991";
			for "_i" from 1 to 3 do {_unit addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
			_unit addVest "rhsusf_spc_marksman";
			for "_i" from 1 to 4 do {_unit addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";};
			_unit addBackpack _backpack;
			for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_20Rnd_762x51_m118_special_Mag";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellRed";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellGreen";};
			_unit addItemToBackpack "ACE_RangeCard";
			_unit addItemToBackpack "ACE_Kestrel4500";
			_unit addItemToBackpack "ACE_ATragMX";
			_unit addHeadgear "rhs_Booniehat_marpatd";
			_unit addWeapon "rhs_weap_sr25_ec_d";
			_unit addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4_2_d";
			_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
			_unit addPrimaryWeaponItem _bipod;
			_unit addWeapon "rhsusf_weap_m9";
			_unit addWeapon "ACE_Vector";
		 }; 
		 
		 case "ENGL":
 		{
			_unit forceAddUniform "rhs_uniform_cu_ocp";
			for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
			_unit addItemToUniform _morphine;
			_unit addItemToUniform _maptools;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform "rhsusf_patrolcap_ocp";
			_unit addItemToUniform _nvg;
			_unit addItemToUniform "ACE_Flashlight_MX991";
			_unit addVest "rhsusf_spcs_ocp_rifleman";
			for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
			for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 5 do {_unit addItemToVest _rifleMAG;};
			for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMAG;};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
			_unit addBackpack _backradio;
			for "_i" from 1 to 2 do {_unit addItemToBackpack _smoker;};
			for "_i" from 1 to 2 do {_unit addItemToBackpack _smokeg;};
			_unit addHeadgear "rhsusf_ach_helmet_ESS_ocp";
			_unit addWeapon _rifleSL;
			_unit addPrimaryWeaponItem _sight;
			_unit addPrimaryWeaponItem _lightatt;
			_unit addWeapon "rhsusf_weap_m9";
			_unit addWeapon _vector;
			_unit linkItem _gps; 	
		 }; 
		 
		 case "ENG":
 		{
			_unit forceAddUniform "rhs_uniform_cu_ocp";
			for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
			_unit addItemToUniform _morphine;
			_unit addItemToUniform _maptools;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform "rhsusf_patrolcap_ocp";
			_unit addItemToUniform _nvg;
			_unit addItemToUniform "ACE_Flashlight_MX991";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
			_unit addVest "rhsusf_spcs_ocp_rifleman";
			for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
			for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 5 do {_unit addItemToVest _rifleMAG;};
			for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMAG;};
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			_unit addItem "ACE_Clacker";
			_unit addItemToBackpack "ToolKit";
			_unit addItemToBackpack "MineDetector";
			for "_i" from 1 to 2 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
			_unit addHeadgear "rhsusf_ach_helmet_ESS_ocp";
			_unit addWeapon _rifleSL;
			_unit addWeapon "rhsusf_weap_m9";
		 }; 

		
		Case "HUM":
	{	clearWeaponCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_rifleMAG,20];
		_unit addMagazineCargoGlobal [_rifleTMAG,5];
		_unit addMagazineCargoGlobal [_ARMAG,4];
		_unit addMagazineCargoGlobal [_ARTMAG,2];
		_unit addMagazineCargoGlobal [_GLHE,3];
		_unit addMagazineCargoGlobal [_GLSMK,2];
		_unit addMagazineCargoGlobal [_GLFLR,2];
		_unit addItemCargoGlobal [_grenade,2];
		_unit addItemCargoGlobal [_smoke,4];
		_unit addItemCargoGlobal [_smokeg,2];
		_unit addItemCargoGlobal [_smoker,2];
		_unit addItemCargoGlobal [_blood,1];
		_unit addItemCargoGlobal [_bandage,10];
		_unit addItemCargoGlobal [_morphine,2];
		_unit addItemCargoGlobal [_epine,2];
		_unit addBackpackCargoGlobal ["ACE_TacticalLadder_Pack", 1];
		_unit setVariable ["AFI_vehicle_gear","west",true];
	};
	
	Case "HUMW":
	{	clearWeaponCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_rifleMAG,20];
		_unit addMagazineCargoGlobal [_rifleTMAG,5];
		_unit addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010",5];
		_unit addMagazineCargoGlobal [_GLHE,6];
		_unit addMagazineCargoGlobal [_GLSMK,2];
		_unit addMagazineCargoGlobal [_GLFLR,2];
		_unit addItemCargoGlobal [_grenade,4];
		_unit addItemCargoGlobal [_smoke,4];
		_unit addItemCargoGlobal [_smokeg,2];
		_unit addItemCargoGlobal [_smoker,2];
		_unit addItemCargoGlobal [_blood,1];
		_unit addItemCargoGlobal [_bandage,10];
		_unit addItemCargoGlobal [_morphine,10];
		_unit addItemCargoGlobal [_epine,2];
		_unit addBackpackCargoGlobal ["ACE_TacticalLadder_Pack", 1];
		_unit setVariable ["AFI_vehicle_gear","west",true];
	};
	
	Case "LODA":
	{	clearWeaponCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_rifleMAG,50];
		_unit addMagazineCargoGlobal [_rifleTMAG,20];
		_unit addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",10];
		_unit addMagazineCargoGlobal [_ARMAG,8];
		_unit addMagazineCargoGlobal [_ARTMAG,4];
		_unit addMagazineCargoGlobal [_GLHE,12];
		_unit addMagazineCargoGlobal [_GLSMK,4];
		_unit addMagazineCargoGlobal [_GLFLR,4];
		_unit addMagazineCargoGlobal [_HATMAG,2];
		_unit addItemCargoGlobal [_grenade,8];
		_unit addItemCargoGlobal [_smoke,8];
		_unit addItemCargoGlobal [_smokeg,4];
		_unit addItemCargoGlobal [_smoker,4];
		_unit addItemCargoGlobal [_blood,10];
		_unit addItemCargoGlobal [_bandage,40];
		_unit addItemCargoGlobal [_morphine,20];
		_unit addItemCargoGlobal [_epine,20];
		_unit addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 4];
		_unit addMagazineCargoGlobal ["DemoCharge_Remote_Mag", 12];
		_unit setVariable ["AFI_vehicle_gear","west",true]; 
	};
	
		Case "HUMW":
	{	clearWeaponCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addBackpackCargoGlobal ["ACE_TacticalLadder_Pack", 1];
		_unit setVariable ["AFI_vehicle_gear","west",true]; 
		};
	
	Case "FF":
	{	clearWeaponCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit setVariable ["AFI_vehicle_gear","west",true]; 
	};


};

//id = ["rifleman", _unit] call compile preprocessFileLineNumbers "scripts\loadoutnato.sqf";