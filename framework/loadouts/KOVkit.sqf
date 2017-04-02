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
	_unit linkItem "ItemWatch";
	_unit linkItem "tf_anprc148jem";
	
	_headGear = ["rhssaf_helmet_m97_digital",
				"rhssaf_helmet_m97_oakleaf", 
				"rhssaf_helmet_m97_digital_black_ess", 
				"rhssaf_helmet_m97_digital_black_ess_bare",
				"rhssaf_helmet_m97_oakleaf_black_ess",
				"rhssaf_helmet_m97_oakleaf_black_ess_bare"] call BIS_fnc_selectRandom;
	_headGearMedic = "rhssaf_helmet_m97_olive_nocamo";
	_beret = "rhssaf_beret_green";
	_boonie = "rhssaf_booniehat_digital";
	_goggle = "rhs_ess_black";
	_headGearCrew = "rhs_tsh4";
				 
	_backRadio = "tf_rt1523g_bwmod";
	_backPack = "rhssaf_kitbag_smb";
	
	_uniform = "rhssaf_uniform_m10_digital";
	
	_vest = ["rhssaf_vest_md99_digital_radio",
			"rhssaf_vest_md99_woodland_radio"] call BIS_fnc_selectRandom;
	_vestRifle = ["rhssaf_vest_md99_digital_rifleman_radio",
				  "rhssaf_vest_md99_md2camo_rifleman_radio"] call BIS_fnc_selectRandom;
	_vestCommander = "rhs_vest_commander";
	_vestCrew = ["rhssaf_vest_md99_digital",
				"rhssaf_vest_md99_md2camo"] call BIS_fnc_selectRandom;
	
	_rifleM21 = "rhs_weap_m21a";		
	_rifleM70 = "rhs_weap_m70ab2";
	_rifleM21MAG = "rhsgref_30rnd_556x45_m21";
	_rifleM21MAGT = "rhsgref_30rnd_556x45_m21_t";
	_rifleM70MAG = "rhs_30Rnd_762x39mm";
	_rifleM70MAGT = "rhs_30Rnd_762x39mm_tracer";
	_rifleM92 = "rhs_weap_m92";
	_rifleSniper = "rhs_weap_m76";
	_rifleSniperMAG = "rhsgref_10Rnd_792x57_m76";
	_rifleScope = "rhs_acc_pso1m21";
	
	_MG = "rhs_weap_m84";
	_MGMAG = "rhs_100Rnd_762x54mmR";
	_MGMAGT = "rhs_100Rnd_762x54mmR_green";
	
	_GL = "rhs_weap_m21a_pbg40";
	_GLMAG = "rhs_VOG25";
	_GLSMK = "rhs_VG40OP_white";
	_GLSMKG = "rhs_VG40OP_green";
	
	_AT = "rhs_weap_m72a7";
	_mine = "ATMine_Range_Mag";
	_bomb = "DemoCharge_Remote_Mag";
	
	_pistol = "rhs_weap_pya";
	_pistolMAG = "rhs_mag_9x19_17";
	
	_smoke = "rhs_mag_an_m8hc";
	_smokeGreen = "SmokeShellGreen";
	_grenade = "rhs_mag_m67";
			
	_bandage = "ACE_fieldDressing";
	_morphine = "ACE_morphine";
	_epine = "ACE_epinephrine";
	_blood = "ACE_bloodIV_500";
	_bodybag = "ACE_bodyBag";
	
	_maptools = "ACE_MapTools";
	_earplugs = "ACE_EarPlugs";
	_flashlight = "ACE_Flashlight_XL50";
	_spade = "ACE_EntrenchingTool";
	_cable = "ACE_CableTie";
	_toolkit = "Item_ToolKit";
	_kit = "ACE_Defusalkit";
	_wire = "ACE_wirecutter";
	_det = "ACE_Clacker";
	
	_bino = "Binocular";
	_micro = "ACE_microDAGR";
	
	_rtable = "ACE_RangeTable_M252";

 	switch (_type) do
 	{ 
		//#1
		case "PL":
 		{
			_unit forceAddUniform _uniform;
			_unit addVest _vest;
			_unit addBackpack _backRadio;
			_unit addHeadgear _beret;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _flashlight;
			_unit addItemToUniform _maptools;
			_unit addItemToUniform _micro;
			for "_i" from 1 to 15 do {this addItemToUniform _bandage;};
			for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
			for "_i" from 1 to 2 do {this addItemToVest _grenade;};
			for "_i" from 1 to 3 do {this addItemToVest _rifleM21MAG;};
			for "_i" from 1 to 1 do {this addItemToVest _smoke;};
			for "_i" from 1 to 1 do {this addItemToVest _smokeGreen;};		
			
			_unit addWeapon _rifleM21;
			_unit addWeapon _bino;
		};
		//#2
		case "MEDIC":
 		{
			_unit forceAddUniform _uniform;
			_unit addVest _vest;
			_unit addBackpack _backPack;
			_unit addHeadgear _headGearMedic;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _flashlight;
			_unit addItemToUniform _maptools;
			for "_i" from 1 to 15 do {this addItemToUniform _bandage;};
			for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
			for "_i" from 1 to 2 do {this addItemToVest _grenade;};
			for "_i" from 1 to 4 do {this addItemToVest _rifleM70MAG;};
			for "_i" from 1 to 1 do {this addItemToVest _smoke;};
			for "_i" from 1 to 1 do {this addItemToVest _smokeGreen;};		
			for "_i" from 1 to 1 do {this addItemToVest _smokeGreen;};		
			for "_i" from 1 to 8 do {_unit addItemToBackpack _blood;};
			for "_i" from 1 to 8 do {_unit addItemToBackpack _epine;};
			for "_i" from 1 to 8 do {_unit addItemToBackpack _morphine;};
			for "_i" from 1 to 30 do {_unit addItemToBackpack _bandage;};
			for "_i" from 1 to 2 do {_unit addItemToBackpack _smoker;};
			for "_i" from 1 to 2 do {_unit addItemToBackpack _smokeg;};		
			
			_unit addWeapon _rifleM70;
		};
		//#3
		case "SL":
 		{
			_unit forceAddUniform _uniform;
			_unit addVest _vest;
			_unit addBackpack _backRadio;
			_unit addHeadgear _headGear;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _flashlight;
			_unit addItemToUniform _maptools;
			_unit addItemToUniform _micro;
			for "_i" from 1 to 15 do {this addItemToUniform _bandage;};
			for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
			for "_i" from 1 to 2 do {this addItemToVest _grenade;};
			for "_i" from 1 to 4 do {this addItemToVest _rifleM70MAG;};
			for "_i" from 1 to 2 do {this addItemToBackpack _rifleM70MAG;};
			for "_i" from 1 to 1 do {this addItemToBackpack _rifleM70MAGT;};
			for "_i" from 1 to 1 do {this addItemToVest _smoke;};
			for "_i" from 1 to 1 do {this addItemToVest _smokeGreen;};		
			
			_unit addWeapon _rifleM70;
			_unit addWeapon _bino;
		};
		//#4
		case "TL":
 		{
			_unit forceAddUniform _uniform;
			_unit addVest _vest;
			_unit addBackpack _backPack;
			_unit addHeadgear _headGear;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _flashlight;
			_unit addItemToUniform _maptools;
			for "_i" from 1 to 15 do {this addItemToUniform _bandage;};
			for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
			for "_i" from 1 to 2 do {this addItemToVest _grenade;};
			for "_i" from 1 to 4 do {this addItemToVest _rifleM70MAG;};
			for "_i" from 1 to 10 do {this addItemToBackpack _rifleM70MAG;};
			for "_i" from 1 to 2 do {this addItemToBackpack _rifleM70MAGT;};
			for "_i" from 1 to 1 do {this addItemToVest _smoke;};
			for "_i" from 1 to 1 do {this addItemToVest _smokeGreen;};	
			for "_i" from 1 to 1 do {this addItemToBackpack _MGMAG;};	
			
			_unit addWeapon _rifleM70;
		};
		//#5
		case "RIFLE":
 		{
			_unit forceAddUniform _uniform;
			_unit addVest _vestRifle;
			_unit addBackpack _backPack;
			_unit addHeadgear _headGear;
			_unit addItemToUniform _earplugs;
			_unit addItemToBackpack _spade;
			for "_i" from 1 to 15 do {this addItemToUniform _bandage;};
			for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
			for "_i" from 1 to 2 do {this addItemToVest _grenade;};
			for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 4 do {this addItemToVest _rifleM21MAG;};
			for "_i" from 1 to 10 do {this addItemToBackpack _rifleM21MAG;};
			for "_i" from 1 to 2 do {this addItemToBackpack _rifleM21MAGT;};	
			for "_i" from 1 to 1 do {this addItemToBackpack _MGMAG;};		
			
			_unit addWeapon _rifleM21;
		};
		//#6
		case "MG":
 		{
			_unit forceAddUniform _uniform;
			_unit addVest _vest;
			_unit addBackpack _backPack;
			_unit addHeadgear _headGear;
			_unit addItemToUniform _earplugs;
			_unit addGoggles _goggle;
			for "_i" from 1 to 15 do {this addItemToUniform _bandage;};
			for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
			for "_i" from 1 to 2 do {this addItemToVest _grenade;};
			for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 3 do {this addItemToBackpack _MGMAG;};
			for "_i" from 1 to 1 do {this addItemToBackpack _MGMAGT;};
			
			_unit addWeapon _MG;
		};
		//#7
		case "GREN":
 		{
			_unit forceAddUniform _uniform;
			_unit addVest _vest;
			_unit addBackpack _backPack;
			_unit addHeadgear _headGear;
			_unit addItemToUniform _earplugs;
			for "_i" from 1 to 15 do {this addItemToUniform _bandage;};
			for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
			for "_i" from 1 to 2 do {this addItemToVest _grenade;};
			for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 4 do {this addItemToVest _rifleM21MAG;};
			for "_i" from 1 to 10 do {this addItemToBackpack _rifleM21MAG;};
			for "_i" from 1 to 2 do {this addItemToBackpack _rifleM21MAGT;};	
			for "_i" from 1 to 13 do {this addItemToBackpack _GLMAG;};	
			for "_i" from 1 to 2 do {this addItemToBackpack _GLSMK;};		
			for "_i" from 1 to 2 do {this addItemToBackpack _GLSMKG;};				
			
			_unit addWeapon _GL;
		};
		//#8
		case "AT":
 		{
			_unit forceAddUniform _uniform;
			_unit addVest _vestRifle;
			_unit addBackpack _backPack;
			_unit addHeadgear _headGear;
			_unit addItemToUniform _earplugs;
			for "_i" from 1 to 15 do {this addItemToUniform _bandage;};
			for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
			for "_i" from 1 to 2 do {this addItemToVest _grenade;};
			for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 4 do {this addItemToVest _rifleM70MAG;};
			for "_i" from 1 to 10 do {this addItemToBackpack _rifleM70MAG;};
			for "_i" from 1 to 2 do {this addItemToBackpack _rifleM70MAGT;};	
			for "_i" from 1 to 1 do {this addItemToBackpack _MGMAG;};		
			
			_unit addWeapon _rifleM70;
			_unit addWeapon _AT;
		};
		//#9
		case "MGASS":
 		{
			_unit forceAddUniform _uniform;
			_unit addVest _vestRifle;
			_unit addBackpack _backPack;
			_unit addHeadgear _headGear;
			_unit addItemToUniform _earplugs;
			for "_i" from 1 to 15 do {this addItemToUniform _bandage;};
			for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
			for "_i" from 1 to 2 do {this addItemToVest _grenade;};
			for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 6 do {this addItemToVest _rifleM70MAG;};	
			for "_i" from 1 to 3 do {this addItemToBackpack _MGMAG;};		
			
			_unit addWeapon _rifleM70;
		};
		//#10
		case "CREWCOM":
 		{
			_unit forceAddUniform _uniform;
			_unit addVest _vestCommander;
			_unit addHeadgear _headGearCrew;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _flashlight;
			_unit addItemToUniform _maptools;
			_unit addItemToUniform _micro;
			_unit addItemToUniform _bino;
			for "_i" from 1 to 15 do {this addItemToUniform _bandage;};
			for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
			for "_i" from 1 to 3 do {this addItemToUniform _pistolMAG;};
			for "_i" from 1 to 3 do {this addItemToVest _rifleM70MAG;};		
			
			_unit addWeapon _rifleM92;
			_unit addWeapon _pistol;
			_unit addWeapon _bino;
		};
		//#11
		case "CREW":
 		{
			_unit forceAddUniform _uniform;
			_unit addVest _vestCrew;
			_unit addHeadgear _headGearCrew;
			_unit addItemToUniform _earplugs;
			for "_i" from 1 to 15 do {this addItemToUniform _bandage;};
			for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
			for "_i" from 1 to 3 do {this addItemToVest _rifleM70MAG;};		
			
			_unit addWeapon _rifleM92;
		};
		//#12
		case "MSL":
 		{
			_unit forceAddUniform _uniform;
			_unit addVest _vest;
			_unit addBackpack _backRadio;
			_unit addHeadgear _headGear;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _flashlight;
			_unit addItemToUniform _maptools;
			_unit addItemToUniform _rtable;
			_unit addItemToUniform _micro;
			for "_i" from 1 to 15 do {this addItemToUniform _bandage;};
			for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
			for "_i" from 1 to 2 do {this addItemToVest _grenade;};
			for "_i" from 1 to 4 do {this addItemToVest _rifleM70MAG;};
			for "_i" from 1 to 2 do {this addItemToBackpack _rifleM70MAG;};
			for "_i" from 1 to 1 do {this addItemToBackpack _rifleM70MAGT;};
			for "_i" from 1 to 1 do {this addItemToVest _smoke;};
			for "_i" from 1 to 1 do {this addItemToVest _smokeGreen;};		
			
			_unit addWeapon _rifleM70;
			_unit addWeapon _bino;
		};
		//#13
		case "MGUNNER":
 		{
			_unit forceAddUniform _uniform;
			_unit addVest _vest;
			_unit addHeadgear _headGear;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _earplugs;
			_unit addItemToUniform _flashlight;
			_unit addItemToUniform _maptools;
			_unit addItemToUniform _rtable;
			for "_i" from 1 to 15 do {this addItemToUniform _bandage;};
			for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
			for "_i" from 1 to 2 do {this addItemToVest _grenade;};
			for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 4 do {this addItemToVest _rifleM70MAG;};		
			
			_unit addWeapon _rifleM70;
		};
		//#14
		case "MM":
 		{
			_unit forceAddUniform _uniform;
			_unit addVest _vestRifle;
			_unit addBackpack _backPack;
			_unit addHeadgear _boonie;
			_unit addItemToUniform _earplugs;
			_unit addItemToBackpack _spade;
			for "_i" from 1 to 15 do {this addItemToUniform _bandage;};
			for "_i" from 1 to 2 do {this addItemToUniform _morphine;};
			for "_i" from 1 to 2 do {this addItemToVest _grenade;};
			for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
			for "_i" from 1 to 4 do {this addItemToVest _rifleSniperMAG;};
			for "_i" from 1 to 12 do {this addItemToBackpack _rifleSniperMAG;};		
			
			_unit addWeapon _rifleSniper;
			_unit addPrimaryWeaponItem _rifleScope;
			_unit addWeapon _bino;
		};
		//#15
	Case "TRUCK":
	{	clearWeaponCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_rifleM70MAG,20];
		_unit addMagazineCargoGlobal [_rifleM70MAGT,5];
		_unit addMagazineCargoGlobal [_rifleM21MAG,10];
		_unit addMagazineCargoGlobal [_rifleM21MAGT,2];
		_unit addMagazineCargoGlobal [_MGMAG,2];
		_unit addMagazineCargoGlobal [_MGMAGT,1];
		_unit addMagazineCargoGlobal [_GLSMK,2];
		_unit addMagazineCargoGlobal [_GLSMKG,2];
		_unit addItemCargoGlobal [_smoke,4];
		_unit addItemCargoGlobal [_grenade,4];
		_unit addItemCargoGlobal [_mine,4];
		_unit addItemCargoGlobal [_bomb,4];
		_unit addItemCargoGlobal [_smokeg,2];
		_unit addItemCargoGlobal [_bandage,20];
		_unit addItemCargoGlobal [_spade,2];
		_unit addItemCargoGlobal [_earplugs,10];
		_unit addItemCargoGlobal [_wire,1];
		_unit setVariable ["AFI_vehicle_gear","guer",true];
	};
	//#16
	Case "HUMVEE":
	{	clearWeaponCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_rifleM70MAG,10];
		_unit addMagazineCargoGlobal [_rifleM70MAGT,2];
		_unit addMagazineCargoGlobal [_rifleM21MAG,3];
		_unit addMagazineCargoGlobal [_rifleM21MAGT,1];
		_unit addMagazineCargoGlobal [_rifleSniperMAG,3];
		_unit addItemCargoGlobal [_smoke,2];
		_unit addItemCargoGlobal [_grenade,2];
		_unit addItemCargoGlobal [_smokeg,1];
		_unit addItemCargoGlobal [_bandage,10];
		_unit addItemCargoGlobal [_blood,5];
		_unit addItemCargoGlobal [_morphine,5];
		_unit addItemCargoGlobal [_epine,5];
		_unit addItemCargoGlobal [_bodybag,5];
		_unit addItemCargoGlobal [_spade,2];
		_unit addItemCargoGlobal [_earplugs,10];
		_unit addItemCargoGlobal [_kit,1];
		_unit addItemCargoGlobal [_det,1];
		_unit setVariable ["AFI_vehicle_gear","guer",true];
	};
	//#17
	Case "TANK":
	{	clearWeaponCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit setVariable ["AFI_vehicle_gear","guer",true]; 
		_unit setVariable ["tf_side", "guer", true];
		_unit addItemCargoGlobal [_earplugs,10];
		_unit disableTIEquipment true;
	};
	//#18
	Case "STATIC":
	{  	clearMagazineCargoGlobal _unit;
		clearWeaponCargoGlobal _unit;
		clearitemCargoGlobal _unit;
		clearbackpackCargoGlobal _unit;
		_unit setVariable ["AFI_vehicle_gear","guer",true];
	};
};
