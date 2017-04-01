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


_Uniform	= "rhs_uniform_g3_m81";

_Helmet		= "rhsusf_ach_helmet_ocp";
_Helmet_SL	= "rhsusf_ach_helmet_M81";
_Helmet_Crew= "rhsusf_cvc_ess";

_Vest_SL 	= "rhsusf_iotv_ocp_Squadleader";
_Vest_TL	= "rhsusf_iotv_ocp_Teamleader";
_Vest_Rifle = "rhsusf_iotv_ocp_Rifleman";
_Vest_Medic = "rhsusf_iotv_ocp_Medic";
_Vest_AR 	= "rhsusf_iotv_ocp_SAW";
_Vest_Gren 	= "rhsusf_iotv_ocp_Grenadier";

_Backpack	= "rhsusf_assault_eagleaiii_ocp";
_Radio		= "tf_rt1523g_rhs";

_Weap_Rifle	= "rhs_weap_hk416d145";
_Weap_AR	= "rhs_weap_m249_pip_s";
_Weap_Gren	= "rhs_weap_hk416d145_m320";
_Weap_Bino	= "ace_Vector";
_Weap_Pistol= "hgun_P07_F";
_Weap_AT	= "rhs_weap_M136";

_Laser		= "rhsusf_acc_anpeq15A";
_Optic 		= "rhsusf_acc_compm4";

_Mag_Rifle	= "rhs_mag_30Rnd_556x45_Mk318_Stanag";
_Mag_RifleTR= "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_Mag_AR		= "rhsusf_100Rnd_556x45_soft_pouch";
_Mag_Pistol	= "16Rnd_9x21_Mag";
_Mag_RPG1   = "rhs_m136_mag";

_Mag_HE		= "rhs_mag_M441_HE";
_Mag_HEDP	= "rhs_mag_M433_HEDP";
_Mag_HET	= "rhs_mag_M397_HET";
_Mag_SMK	= "1Rnd_Smoke_Grenade_shell";

switch (_type) do
 	{ 
		//#1
		 case "PL":
 		{
			_unit forceAddUniform _Uniform;
			for "_i" from 1 to 2 do {_unit addItemToUniform _Mag_rifle;};
			_unit addItemToUniform _Mag_Pistol;
			
			_unit addVest _Vest_SL;
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
			for "_i" from 1 to 4 do {_unit addItemToVest _Mag_rifle;};
			
			_unit addBackpack _Radio;
			_unit addItemToBackpack "ACE_HandFlare_White";
			_unit addItemToBackpack "ACE_HandFlare_Red";
			_unit addItemToBackpack "ACE_HandFlare_Green";
			for "_i" from 1 to 2 do {_unit addItemToBackpack _Mag_rifle;};
			
			_unit addHeadgear _Helmet_SL;
			
			_unit addWeapon _Weap_Rifle;
			_unit addPrimaryWeaponItem _Laser;
			
			_unit addWeapon _Weap_Pistol;
			_unit addWeapon _Weap_Bino;
			
			_unit linkItem "ItemGPS";
			_unit addPrimaryWeaponItem _Optic;
		}; 
		//#2
		 case "SL":
 		{
			_unit forceAddUniform _Uniform;
			for "_i" from 1 to 2 do {_unit addItemToUniform _Mag_rifle;};
			_unit addItemToUniform _Mag_Pistol;
			
			_unit addVest _Vest_SL;
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
			for "_i" from 1 to 4 do {_unit addItemToVest _Mag_rifle;};
			
			_unit addBackpack _Radio;
			_unit addItemToBackpack "ACE_HandFlare_White";
			_unit addItemToBackpack "ACE_HandFlare_Red";
			_unit addItemToBackpack "ACE_HandFlare_Green";
			for "_i" from 1 to 2 do {_unit addItemToBackpack _Mag_rifle;};
			
			_unit addHeadgear _Helmet_SL;
			_unit addWeapon _Weap_Rifle;
			_unit addPrimaryWeaponItem _Laser;
			_unit addWeapon _Weap_Pistol;
			_unit addWeapon _Weap_Bino;
			_unit linkItem "ItemGPS";
			_unit addPrimaryWeaponItem _Optic;
		}; 
		//#3
		 case "UAV":
		{
			_unit forceAddUniform _Uniform;
			for "_i" from 1 to 2 do {_unit addItemToUniform _Mag_rifle;};
			_unit addItemToUniform _Mag_Pistol;
			
			_unit addVest _Vest_SL;
			_unit addItemToVest "ACE_UAVBattery";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 4 do {_unit addItemToVest _Mag_rifle;};
			
			_unit addBackpack "B_UAV_01_backpack_F";
			
			_unit addHeadgear _Helmet_SL;
			_unit addWeapon _Weap_Rifle;
			_unit addPrimaryWeaponItem _Laser;
			_unit addWeapon _Weap_Pistol;
			_unit addWeapon _Weap_Bino;
			_unit linkItem "B_UavTerminal";
			_unit addPrimaryWeaponItem _Optic;
		};
		//#4
		 case "MEDIC":
 		{
			_unit forceAddUniform _Uniform;
			_unit addItemToUniform _Mag_rifle;
			
			_unit addVest _Vest_Medic;
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
			for "_i" from 1 to 4 do {_unit addItemToVest _Mag_rifle;};
			
			_unit addBackpack _Backpack;
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
			_unit addItemToBackpack _Mag_RifleTR;
			
			_unit addHeadgear _Helmet;
			_unit addWeapon _Weap_Rifle;
			_unit addPrimaryWeaponItem _Laser;
			_unit addPrimaryWeaponItem _Optic;
		}; 
		//#5
		 case "TL":
 		{
			_unit forceAddUniform _Uniform;
			for "_i" from 1 to 2 do {_unit addItemToUniform _Mag_rifle;};
			
			_unit addVest _Vest_TL;
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest _Mag_rifle;};
			for "_i" from 1 to 3 do {_unit addItemToVest _Mag_HET;};
			for "_i" from 1 to 3 do {_unit addItemToVest _Mag_HE;};
			for "_i" from 1 to 3 do {_unit addItemToVest _Mag_HEDP;};
	
			_unit addBackpack _Backpack;
			_unit addItemToBackpack "ACE_HandFlare_White";
			_unit addItemToBackpack "ACE_HandFlare_Red";
			_unit addItemToBackpack "ACE_HandFlare_Green";
			for "_i" from 1 to 8 do {_unit addItemToBackpack _Mag_rifle;};
			for "_i" from 1 to 2 do {_unit addItemToBackpack _Mag_RifleTR;};
			for "_i" from 1 to 2 do {_unit addItemToBackpack _Mag_SMK;};
			
			_unit addHeadgear _Helmet;
			_unit addWeapon _Weap_Gren;
			_unit addPrimaryWeaponItem _Laser;
			_unit addWeapon _Weap_Bino;
			_unit addPrimaryWeaponItem _Optic;
		}; 
		//#6
		 case "RIFLE":
 		{
			_unit forceAddUniform _Uniform;

 
			_unit addItemToUniform _Mag_rifle;
			
			_unit addVest _Vest_Rifle;
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
			for "_i" from 1 to 2 do {_unit addItemToVest _Mag_rifle;};
			
			_unit addBackpack _Backpack;
			_unit addItemToBackpack "ACE_HandFlare_White";
			_unit addItemToBackpack "ACE_HandFlare_Red";
			_unit addItemToBackpack "ACE_HandFlare_Green";
			for "_i" from 1 to 6 do {_unit addItemToBackpack _Mag_rifle;};
			for "_i" from 1 to 2 do {_unit addItemToBackpack _Mag_rifle;};
			for "_i" from 1 to 2 do {_unit addItemToBackpack _Mag_AR;};
			
			_unit addHeadgear _Helmet;
			_unit addWeapon _Weap_Rifle;
			_unit addPrimaryWeaponItem _Laser;
			_unit addWeapon _Weap_AT;
			_unit addPrimaryWeaponItem _Optic;
		}; 
		//#7
		 case "AR":
 		{
			_unit forceAddUniform _Uniform;

 
			_unit addItemToUniform _Mag_AR;
			for "_i" from 1 to 2 do {_unit addItemToUniform _Mag_Pistol;};
			
			_unit addVest _Vest_AR;
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
			for "_i" from 1 to 2 do {_unit addItemToVest _Mag_AR;};
			
			_unit addBackpack _Backpack;
			_unit addItemToBackpack "ACE_HandFlare_White";
			_unit addItemToBackpack "ACE_HandFlare_Red";
			_unit addItemToBackpack "ACE_HandFlare_Green";
			for "_i" from 1 to 2 do {_unit addItemToBackpack _Mag_Pistol;};
			for "_i" from 1 to 4 do {_unit addItemToBackpack _Mag_AR;};
			
			_unit addHeadgear _Helmet;
			_unit addWeapon _Weap_AR;
			//_unit addPrimaryWeaponItem "rhsusf_acc_ELCAN";
			_unit addWeapon _Weap_Pistol;
			_unit addPrimaryWeaponItem _Optic;
		}; 
		//#8
		 case "GREN":
		{
			_unit forceAddUniform _Uniform;
			for "_i" from 1 to 2 do {_unit addItemToUniform _Mag_rifle;};
			
			_unit addVest _Vest_Gren;
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest _Mag_rifle;};
			for "_i" from 1 to 3 do {_unit addItemToVest _Mag_HET;};
			for "_i" from 1 to 3 do {_unit addItemToVest _Mag_HE;};
			for "_i" from 1 to 3 do {_unit addItemToVest _Mag_HEDP;};
			
			_unit addBackpack _Backpack;
			_unit addItemToBackpack "ACE_HandFlare_White";
			_unit addItemToBackpack "ACE_HandFlare_Red";
			_unit addItemToBackpack "ACE_HandFlare_Green";
			for "_i" from 1 to 8 do {_unit addItemToBackpack _Mag_rifle;};
			for "_i" from 1 to 2 do {_unit addItemToBackpack _Mag_RifleTR;};
			for "_i" from 1 to 2 do {_unit addItemToBackpack _Mag_SMK;};
			_unit addItemToBackpack _Mag_RPG1;
			
			_unit addHeadgear _Helmet;
			_unit addWeapon _weap_Gren;
			_unit addPrimaryWeaponItem _Laser;
			_unit addWeapon _Weap_AT;
			_unit addPrimaryWeaponItem _Optic;
		}; 
		//#9
		 case "CREWCOM":
		{
			_unit forceAddUniform _Uniform;
			_unit addItemToUniform "ACE_Clacker";
			_unit addItemToUniform "ACE_DefusalKit";

			_unit addVest _Vest_Rifle;
			for "_i" from 1 to 4 do {_unit addItemToVest _Mag_rifle;};
			
			_unit addBackpack _Radio;
			
			_unit addHeadgear _Helmet_Crew;
			_unit addWeapon _Weap_Rifle;
			_unit addWeapon _Weap_Bino;
			_unit addPrimaryWeaponItem _Optic;
		};
		//#10		
		case "CREW":
		{
			_unit forceAddUniform _Uniform;
			_unit addItemToUniform "ACE_Clacker";
			_unit addItemToUniform "ACE_DefusalKit";

			_unit addVest _Vest_Rifle;
			for "_i" from 1 to 4 do {_unit addItemToVest _Mag_rifle;};
			
			_unit addHeadgear _Helmet_Crew;
			_unit addWeapon _Weap_Rifle;
			_unit addPrimaryWeaponItem _Optic;
		};
		//#11
		case "box":
 		{
		clearItemCargoGlobal _unit;
		clearMagazineCargoGlobal _unit; 
		clearWeaponCargoGlobal _unit;   
		clearbackpackCargoGlobal _unit; 

		_unit setVariable ["AFI_vehicle_gear","west",true];
		
		_unit addMagazineCargoGlobal [_Mag_rifle,50]; 
        _unit addMagazineCargoGlobal [_Mag_AR,15];
		_unit addMagazineCargoGlobal ["rhs_fim92_mag", 6];		
		_unit addMagazineCargoGlobal [_Mag_HEDP,15]; 

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
		//#12
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
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemTobackpack "ACE_morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemTobackpack "ACE_tourniquet";};
			for "_i" from 1 to 4 do {_unit addItemTobackpack "ACE_packingBandage";};
			_unit addItemToVest "ACE_Flashlight_MX991";
