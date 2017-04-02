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
	//_unit linkItem "NVGoggles_INDEP";
	//_unit addItem "NVGoggles";
	//_unit linkItem "ItemGPS"; 	


_Uniform	= "MNP_CombatUniform_Rebel_B";

_Helmet		= "rhsgref_helmet_M1_bare";
_Helmet_SL	= "MNP_Beret_2PARA";
_Helmet_Crew= "rhs_tsh4_ess_bala";

_Vest_SL 	= "rhs_vest_commander";
_Vest_TL	= "rhs_vest_commander";
_Vest_Rifle = "MNP_Vest_CZ_2";
_Vest_Medic = "MNP_Vest_CZ_2";
_Vest_AR 	= "MNP_Vest_CZ_2";
_Vest_Gren 	= "MNP_Vest_CZ_2";

_Backpack	= "rhs_sidor";
_Radio		= "tf_anprc155_coyote";

_Weap_Rifle	= "rhs_weap_akm";
_Weap_AR	= "rhs_weap_pkm";
_Weap_Gren	= "rhs_weap_akm_gp25";
_Weap_Bino	= "binocular";
_Weap_Pistol= "hgun_P07_F";
_Weap_AT	= "rhs_weap_rpg26";
_Weap_Launch= "rhs_weap_rpg7";

_Laser		= "rhsusf_acc_anpeq15A";
_Optic 		= "rhsusf_acc_compm4";

_Mag_Rifle	= "rhs_30Rnd_762x39mm";
_Mag_RifleTR= "rhs_30Rnd_762x39mm";
_Mag_AR		= "rhs_100Rnd_762x54mmR";
_Mag_Pistol	= "16Rnd_9x21_Mag";
_Mag_RPG1   = "rhs_rpg26_mag";
_Mag_RPG2	= "rhs_rpg7_PG7VL_mag";

_Mag_HE		= "rhs_VOG25";
_Mag_HEDP	= "rhs_VOG25P";
_Mag_HET	= "rhs_VG40TB";
_Mag_SMK	= "rhs_VG40OP_white";

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
		case "AT":
 		{
			_unit forceAddUniform _uniform;
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_rgd5";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_rdg2_white";};
			
			_unit addVest _Vest_Rifle;
			for "_i" from 1 to 7 do {_unit addItemToVest _Mag_Rifle;};
			_unit addBackpack "rhs_rpg_empty";
			_unit addItemToBackpack _Mag_Rifle;
			for "_i" from 1 to 3 do {_unit addItemToBackpack _Mag_RPG2;};
			_unit addHeadgear _Helmet;
			_unit addWeapon _Weap_Rifle;
			_unit addWeapon _Weap_Launch;

			
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
			_unit addGoggles "G_Bandanna_blk";
