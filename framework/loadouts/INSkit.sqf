private ["_type", "_unit"];

	_type = _this select 0;
	_unit = _this select 1;
	
	if (!(local _unit)) exitwith {}; // Todella tärkeä. Estää skriptin pyörimisen ei locaaleilla uniteilla
	_unit setVariable ["BIS_enableRandomization", false];
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
	//_unit linkItem "ItemRadio";
	//_unit linkItem "NVGoggles";
	//unit addItem "ItemGPS"; 	

 	switch (_type) do
 	{ 

		 case "SL":
 		{
			_unit forceAddUniform "MNP_CombatUniform_Rebel_B";
			for "_i" from 1 to 2 do {_unit addItemToUniform "ace_Morphine";};
			for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "ACE_CableTie";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_rgd5";};
			_unit addVest "rhs_vest_commander";
			for "_i" from 1 to 12 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
			_unit addBackpack "tf_anprc155_coyote";
			for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_30Rnd_762x39mm";};
			_unit addHeadgear "MNP_Beret_2PARA";
			_unit addWeapon "rhs_weap_akm";
			//_unit linkItem "ItemGPS";
			_unit addWeapon "binocular";
			_unit addGoggles "G_Bandanna_blk";
			_unit linkItem "ItemRadio";
			
		 };

				 case "TL":
 		{
			_unit forceAddUniform "MNP_CombatUniform_Rebel_B";
			for "_i" from 1 to 2 do {_unit addItemToUniform "ace_Morphine";};
			for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "ACE_CableTie";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_rgd5";};
			_unit addVest "rhs_vest_commander";
			for "_i" from 1 to 12 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
			_unit addBackpack "rhs_sidor";
			for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_30Rnd_762x39mm";};
			_unit addHeadgear "MNP_Beret_2PARA";
			_unit addWeapon "rhs_weap_akm";
			//_unit linkItem "ItemGPS";
			_unit addWeapon "binocular";
			_unit addGoggles "G_Bandanna_blk";
			_unit linkItem "ItemRadio";
			
		 };

		 case "MEDIC":
 		{
			_unit forceAddUniform "MNP_CombatUniform_Rebel_B";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "ace_Morphine";};
			for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addVest "MNP_Vest_CZ_2";
			_unit addItemToUniform "ACE_CableTie";
			for "_i" from 1 to 12 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
			_unit addBackpack "rhs_sidor";
			for "_i" from 1 to 2 do {_unit addItemTobackpack "rhs_mag_rgd5";};
			for "_i" from 1 to 30 do {_unit addItemToBackpack "ACE_fieldDressing";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ace_Morphine";};
			for "_i" from 1 to 7 do {_unit addItemToBackpack "ACE_epinephrine";};
			for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_bloodIV_500";};
			_unit addHeadgear "rhsgref_helmet_M1_bare";
			_unit addWeapon "rhs_weap_akm";
			_unit addGoggles "G_Bandanna_blk";
			
		 }; 

		 case "RIFLE1":
 		{
			_unit forceAddUniform "MNP_CombatUniform_Rebel_B";
			for "_i" from 1 to 2 do {_unit addItemToUniform "ace_Morphine";};
			for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "ACE_CableTie";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_rgd5";};
			_unit addItemToUniform "rhs_30Rnd_762x39mm";
			_unit addVest "MNP_Vest_CZ_2";
			for "_i" from 1 to 7 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
			_unit addBackpack "rhs_sidor";
			for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_30Rnd_762x39mm";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};
			_unit addHeadgear "rhsgref_helmet_M1_bare";
			_unit addWeapon "rhs_weap_akm";
			_unit addGoggles "G_Bandanna_blk";
			
		 }; 

		 case "RIFLE2":
 		{
			_unit forceAddUniform "MNP_CombatUniform_Rebel_B";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "ACE_CableTie";
			for "_i" from 1 to 2 do {_unit addItemToUniform "ace_Morphine";};
			for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_rgd5";};
			_unit addVest "MNP_Vest_Light_OD";
			for "_i" from 1 to 7 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
			_unit addBackpack "rhs_sidor";
			for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_30Rnd_762x39mm";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};
			_unit addHeadgear "rhsgref_helmet_M1_bare";
			_unit addWeapon "rhs_weap_akm";
			_unit addGoggles "G_Bandanna_blk";
			
		 }; 

		 case "RIFLE3":
 		{
			_unit forceAddUniform "MNP_CombatUniform_Rebel_B";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "ACE_CableTie";
			for "_i" from 1 to 2 do {_unit addItemToUniform "ace_Morphine";};
			for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_rgd5";};
			_unit addVest "MNP_Vest_CZ_2";
			for "_i" from 1 to 7 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
			_unit addBackpack "rhs_sidor";
			for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_30Rnd_762x39mm";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};
			_unit addHeadgear "rhsgref_helmet_M1_bare";
			_unit addWeapon "rhs_weap_akm";
			_unit addGoggles "G_Bandanna_blk";
			
		 };

		 case "RIFLE4":
 		{
			_unit forceAddUniform "MNP_CombatUniform_Rebel_B";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "ACE_CableTie";
			for "_i" from 1 to 2 do {_unit addItemToUniform "ace_Morphine";};
			for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_rgd5";};
			_unit addVest "MNP_Vest_CZ_2";
			for "_i" from 1 to 12 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
			_unit addBackpack "rhs_sidor";
			for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_30Rnd_762x39mm";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};
			_unit addHeadgear "rhsgref_helmet_M1_bare";
			_unit addWeapon "rhs_weap_akm";
			_unit addGoggles "G_Bandanna_blk";
			
		 }; 

		 case "AR":
 		{
			_unit forceAddUniform "MNP_CombatUniform_Rebel_B";
			for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ace_Morphine";};
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "ACE_CableTie";
			_unit addVest "MNP_Vest_CZ_2";
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_100Rnd_762x54mmR";};
			_unit addBackpack "rhs_sidor";
			for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};
			_unit addHeadgear "rhsgref_helmet_M1_bare";
			_unit addWeapon "rhs_weap_pkm";
			_unit addGoggles "G_Bandanna_blk";
			
		 }; 


		 case "AT":
 		{
			_unit forceAddUniform "MNP_CombatUniform_Rebel_B";
			for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ace_Morphine";};
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "ACE_CableTie";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_rgd5";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_rdg2_white";};
			
			_unit addVest "MNP_Vest_CZ_2";
			for "_i" from 1 to 7 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
			_unit addBackpack "rhs_rpg_empty";
			_unit addItemToBackpack "rhs_30Rnd_762x39mm";
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_rpg7_PG7VL_mag";};
			_unit addItemToBackpack "rhs_rpg7_PG7VL_mag";
			_unit addHeadgear "rhsgref_helmet_M1_bare";
			_unit addWeapon "rhs_weap_akm";
			_unit addWeapon "rhs_weap_rpg7";
			_unit addGoggles "G_Bandanna_blk";
			
		 }; 

				 case "CREWCOM":
 		{
			_unit forceAddUniform "MNP_CombatUniform_Rebel_B";
			for "_i" from 1 to 2 do {_unit addItemToUniform "ace_Morphine";};
			for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "ACE_CableTie";
			//for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_rgd5";};
			_unit addVest "rhs_vest_commander";
			
			_unit addBackpack "tf_anprc155_coyote";
			for "_i" from 1 to 3 do {_unit addItemTobackpack "rhs_30Rnd_762x39mm";};
			_unit addHeadgear "rhs_tsh4_ess_bala";
			_unit addWeapon "rhs_weap_akms";
			//_unit linkItem "ItemGPS";
			_unit addWeapon "binocular";
			_unit addGoggles "G_Bandanna_blk";
			_unit linkItem "ItemRadio";
			
		 };

				 case "CREW":
 		{
			_unit forceAddUniform "MNP_CombatUniform_Rebel_B";
			for "_i" from 1 to 2 do {_unit addItemToUniform "ace_Morphine";};
			for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "ACE_CableTie";
			//for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_rgd5";};
			_unit addVest "rhs_vest_commander";
			
		
			for "_i" from 1 to 3 do {_unit addItemTovest "rhs_30Rnd_762x39mm";};
			_unit addHeadgear "rhs_tsh4_ess_bala";
			_unit addWeapon "rhs_weap_akms";
			//_unit linkItem "ItemGPS";
			_unit addWeapon "binocular";
			_unit addGoggles "G_Bandanna_blk";
			_unit linkItem "ItemRadio";
			
		 };


						Case "URAL":
       	{
		clearItemCargoGlobal _unit;
        clearMagazineCargoGlobal _unit;
        clearWeaponCargoGlobal _unit;
	clearbackpackCargoGlobal _unit;
		_unit setVariable ["AFI_vehicle_gear","GUER",true];
		_unit addMagazineCargoGlobal ["rhs_rpg7_PG7VL_mag", 3];
		_unit addMagazineCargoGlobal ["rhs_rpg7_PG7VR_mag", 3];
		_unit addMagazineCargoGlobal ["rhs_rpg7_OG7V_mag",1];
		_unit addMagazineCargoGlobal ["rhs_100Rnd_762x54mmR_green",10];
		_unit addMagazineCargoGlobal ["rhs_30Rnd_762x39mm",50];
		_unit addItemCargoGlobal ["ACE_fieldDressing",20];
		_unit addItemCargoGlobal ["ace_Morphine",10];
		_unit addItemCargoGlobal ["ACE_epinephrine",6];
		_unit addItemCargoGlobal ["ACE_bloodIV_500",5];
		_unit addItemcargoglobal ["SmokeShell",5];
		_unit addItemcargoglobal ["SmokeShellRed",5];
		_unit addItemcargoglobal ["SmokeShellGreen",5];
		_unit addItemCargoGlobal ["ace_Clacker",2];
		_unit addItemCargoGlobal ["DemoCharge_Remote_Mag",4];
		_unit addItemCargoGlobal ["ACE_Sandbag_empty",60];
		_unit addBackpackcargoglobal ["RHS_NSV_Tripod_Bag",1]; 
	        _unit addBackpackcargoglobal ["RHS_NSV_Gun_Bag",1];

		_unit addItemCargoGlobal ["rhs_mag_rgd5",2];  
		
        };  

						Case "UAZ":
       	{
		clearItemCargoGlobal _unit;
        clearMagazineCargoGlobal _unit;
        clearWeaponCargoGlobal _unit;
	clearbackpackCargoGlobal _unit;
		_unit setVariable ["AFI_vehicle_gear","GUER",true];
		_unit setVariable ["tf_side", "independent", true];
		_unit addMagazineCargoGlobal ["rhs_100Rnd_762x54mmR_green",2];
		_unit addMagazineCargoGlobal ["rhs_30Rnd_762x39mm",10];
		_unit addItemCargoGlobal ["ACE_fieldDressing",5];
		_unit addItemCargoGlobal ["ace_Morphine",2];
		_unit addItemCargoGlobal ["ACE_epinephrine",2];
		_unit addItemCargoGlobal ["ACE_bloodIV_500",1];
		_unit addItemcargoglobal ["SmokeShell",5];
		_unit addItemcargoglobal ["SmokeShellRed",5];
		_unit addItemcargoglobal ["SmokeShellGreen",5];
		_unit addItemCargoGlobal ["ACE_Sandbag_empty",60];
		_unit disableTIEquipment true;
        };  

						Case "STAATTINEN":
       	{
		clearItemCargoGlobal _unit;
        clearMagazineCargoGlobal _unit;
        clearWeaponCargoGlobal _unit;
	clearbackpackCargoGlobal _unit;
		_unit setVariable ["AFI_vehicle_gear","GUER",true];

		
        };  

};

