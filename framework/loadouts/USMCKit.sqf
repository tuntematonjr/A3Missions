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
	_unit linkItem "tf_microdagr";
	//_unit linkItem "ItemRadio";
	//_unit linkItem "NVGoggles_INDEP";
	//_unit addItem "NVGoggles";
	//_unit linkItem "ItemGPS"; 	

 	switch (_type) do
 	{ 

		 case "PL":
 		{
			_unit forceAddUniform "usm_bdu_d";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "ACE_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addItemToUniform "rhsusf_mag_7x45acp_MHP";
			_unit addVest "usm_vest_LBE_rm_m";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
			for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addBackpack "usm_pack_st138_prc77";
			for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addHeadgear "usm_helmet_pasgt_g_d_m";
			_unit addWeapon "rhs_weap_m16a4_carryhandle";
			//_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
			_unit addWeapon "rhsusf_weap_m1911a1";
			_unit addWeapon "binocular";
			//_unit linkItem "ItemGPS"; 
			_unit addGoggles "rhs_scarf";
			_unit linkItem "ItemRadio";
			
		 }; 

		 case "SL":
 		{
			_unit forceAddUniform "usm_bdu_d";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "ACE_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addItemToUniform "rhsusf_mag_7x45acp_MHP";
			_unit addVest "usm_vest_LBE_rm_m";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
			for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addBackpack "usm_pack_st138_prc77";
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addHeadgear "usm_helmet_pasgt_g_d_m";
			_unit addWeapon "rhs_weap_m16a4_carryhandle";
			_unit addWeapon "rhsusf_weap_m1911a1";
			_unit addWeapon "binocular";
			_unit addGoggles "rhs_scarf";
			_unit linkItem "ItemRadio";
			
		 }; 

					 case "SLMORTAR":
 		{
			_unit forceAddUniform "usm_bdu_d";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "ACE_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addItemToUniform "rhsusf_mag_7x45acp_MHP";
			_unit addVest "usm_vest_LBE_rm_m";
			_unit addItemToVest "ACE_MapTools";
			_unit addItemToVest "ACE_microDAGR";
			_unit addItemToVest "ACE_RangeTable_82mm";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addBackpack "usm_pack_st138_prc77";
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addHeadgear "usm_helmet_pasgt_g_d_m";
			_unit addWeapon "rhs_weap_m16a4_carryhandle";
			 _unit addGoggles "rhs_scarf";
			
		 }; 


		 case "MORTARGUNNER":
 		{
			_unit forceAddUniform "usm_bdu_d";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addVest "usm_vest_LBE_rm_m";
			_unit addItemToVest "ACE_MapTools";
			_unit addItemToVest "ACE_microDAGR";
			_unit addItemToVest "ACE_RangeTable_82mm";
			for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addHeadgear "usm_helmet_pasgt_g_d_m";
			_unit addWeapon "rhs_weap_m16a4_carryhandle";
			_unit addGoggles "rhs_scarf";

		 }; 


		 case "UAV":
		 {
			_unit forceAddUniform "usm_bdu_d";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "ACE_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addItemToUniform "rhsusf_mag_7x45acp_MHP";
			_unit addVest "usm_vest_LBE_rm_m";
			_unit addItemToVest "ace_UAVBattery";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addBackpack "B_UAV_01_backpack_F";
			_unit addHeadgear "usm_helmet_pasgt_g_d_m";
			_unit addWeapon "rhs_weap_m16a4_carryhandle";
			//_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
			_unit addWeapon "rhsusf_weap_m1911a1";
			_unit addWeapon "binocular";
			_unit linkItem "B_UavTerminal";
			_unit addGoggles "rhs_scarf";
		};

		 case "MEDIC":
 		{
			_unit forceAddUniform "usm_bdu_d";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "ACE_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addVest "usm_vest_LBE_rm_m";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
		
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addBackpack "usm_pack_m5_medic";
			_unit addItemToBackpack "ACE_bloodIV_500";
			for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_epinephrine";};
			for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_morphine";};
			for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_fieldDressing";};
			for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
			_unit addHeadgear "usm_helmet_pasgt_g_d_m";
			_unit addWeapon "rhs_weap_m16a4_carryhandle";
			//_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
			_unit addGoggles "rhs_scarf";
		 }; 

		 case "TL":
 		{
			_unit forceAddUniform "usm_bdu_d";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "ACE_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addVest "usm_vest_LBE_rm_m";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 5 do {_unit addItemToVest "rhs_mag_M433_HEDP";};
			
			_unit addBackpack "usm_pack_alice";
			
			for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
			for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
			_unit addHeadgear "usm_helmet_pasgt_g_d_m";
			_unit addWeapon "rhs_weap_m16a4_carryhandle_M203";
			//_unit addPrimaryWeaponItem "rhsusf_acc_EOTECH";
			//_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
			_unit addWeapon "binocular";
			//_unit linkItem "ItemGPS"; 
			_unit addGoggles "rhs_scarf";
			_unit linkItem "ItemRadio";
		 }; 

				 case "TLAT":
 		{
			_unit forceAddUniform "usm_bdu_d";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "ACE_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addVest "usm_vest_LBE_rm_m";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			
			_unit addBackpack "usm_pack_alice";
			//for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 8 do {_unit addItemTobackpack "rhs_mag_M433_HEDP";};
			_unit addHeadgear "usm_helmet_pasgt_g_d_m";
			_unit addWeapon "rhs_weap_m16a4_carryhandle_M203";
			//_unit addPrimaryWeaponItem "rhsusf_acc_EOTECH";
			//_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
			_unit addWeapon "binocular";
			//_unit linkItem "ItemGPS"; 
			_unit addGoggles "rhs_scarf";
			_unit linkItem "ItemRadio";
			
		 }; 

		 case "TLMG":
 		{
			_unit forceAddUniform "usm_bdu_d";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "ACE_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addVest "usm_vest_LBE_rm_m";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			
			_unit addBackpack "usm_pack_762x51_bandoliers";
			//for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 1 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51";};
			for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
			_unit addHeadgear "usm_helmet_pasgt_g_d_m";
			_unit addWeapon "rhs_weap_m16a4_carryhandle_M203";
			//_unit addPrimaryWeaponItem "rhsusf_acc_EOTECH";
			//_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
			_unit addWeapon "binocular";
			//_unit linkItem "ItemGPS"; 
			_unit addGoggles "rhs_scarf";
			_unit linkItem "ItemRadio";
		 }; 

		 case "RIFLE":
 		{
			_unit forceAddUniform "usm_bdu_d";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "ACE_CableTie";

			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addVest "usm_vest_LBE_rm_m";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 1 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 1 do {_unit addItemToVest "SmokeShellRed";};
			for "_i" from 1 to 1 do {_unit addItemToVest "SmokeShellGreen";};
			for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};		
			_unit addHeadgear "usm_helmet_pasgt_g_d_m";
			_unit addWeapon "rhs_weap_m16a4_carryhandle";
			//_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
			_unit addWeapon "rhs_weap_m72a7";
			_unit addGoggles "rhs_scarf";
		 }; 


				 case "MAAWS":
 		{
			_unit forceAddUniform "usm_bdu_d";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "ACE_CableTie";

			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addVest "usm_vest_LBE_rm_m";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 1 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 1 do {_unit addItemToVest "SmokeShellRed";};
			for "_i" from 1 to 1 do {_unit addItemToVest "SmokeShellGreen";};
			for "_i" from 1 to 7 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addBackpack "usm_pack_alice";
			for "_i" from 1 to 1 do {_unit addItemToBackpack "rhs_mag_smaw_HEAA";};
			for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_mag_smaw_SR";};
			_unit addHeadgear "usm_helmet_pasgt_g_d_m";
			_unit addWeapon "rhs_weap_m16a4_carryhandle";
			_unit addWeapon "rhs_weap_smaw_green";
			_unit addSecondaryWeaponItem "rhs_weap_optic_smaw";
			_unit addGoggles "rhs_scarf";
		 };


				 case "MAAWSAS":
 		{
			_unit forceAddUniform "usm_bdu_d";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "ACE_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addVest "usm_vest_LBE_rm_m";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
			for "_i" from 1 to 10 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addBackpack "usm_pack_alice";
			for "_i" from 1 to 1 do {_unit addItemToBackpack "rhs_mag_smaw_HEAA";};
			for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_mag_smaw_SR";};
			_unit addHeadgear "usm_helmet_pasgt_g_d_m";
			_unit addWeapon "rhs_weap_m16a4_carryhandle";
			_unit addWeapon "binocular";
			_unit addGoggles "rhs_scarf";
		 };

				 case "M240AS":
 		{
			_unit forceAddUniform "usm_bdu_d";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "ACE_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addVest "usm_vest_LBE_rm_m";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 1 do {_unit addItemToVest "SmokeShell";};
	
			for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			//for "_i" from 1 to 2 do {_unit addItemTovest "rhsusf_100Rnd_762x51";};
			_unit addBackpack "usm_pack_762x51_bandoliers";
			//for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 3 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51";};
			_unit addHeadgear "usm_helmet_pasgt_g_d_m";
			_unit addWeapon "rhs_weap_m16a4_carryhandle";
			_unit addWeapon "binocular";
			_unit addGoggles "rhs_scarf";
		 };


				 case "M240":
 		{
			_unit forceAddUniform "usm_bdu_d";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "ACE_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addVest "usm_vest_LBE_rm_m";
			for "_i" from 1 to 2 do {_unit addItemToVEST "rhsusf_100Rnd_762x51";};
			_unit addBackpack "usm_pack_762x51_bandoliers";
			for "_i" from 1 to 3 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51";};
			_unit addHeadgear "usm_helmet_pasgt_g_d_m";
			_unit addWeapon "rhs_weap_m240B";
			_unit addGoggles "rhs_scarf";
		 };

		 case "AR":
 		{
			_unit forceAddUniform "usm_bdu_d";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "ACE_CableTie";

			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "rhsusf_100Rnd_556x45_soft_pouch";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhsusf_mag_7x45acp_MHP";};
			_unit addVest "usm_vest_LBE_rm_m";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 1 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 1 do {_unit addItemToVest "SmokeShellRed";};
			for "_i" from 1 to 1 do {_unit addItemToVest "SmokeShellGreen";};
		
			for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_100Rnd_556x45_soft_pouch";};
			_unit addBackpack "usm_pack_200rnd_556_bandoliers";
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_mag_7x45acp_MHP";};
			for "_i" from 1 to 4 do {_unit addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";};
			_unit addHeadgear "usm_helmet_pasgt_g_d_m";
			_unit addWeapon "rhs_weap_m249_pip_l";
			//_unit addPrimaryWeaponItem "rhsusf_acc_ELCAN";
			_unit addWeapon "rhsusf_weap_m1911a1";
			_unit addGoggles "rhs_scarf";
		 }; 

		 case "GREN":
		{
			_unit forceAddUniform "usm_bdu_d";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "ACE_CableTie";

			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addVest "usm_vest_LBE_rm_m";
			for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 5 do {_unit addItemToVest "rhs_mag_M433_HEDP";};
			_unit addBackpack "usm_pack_alice";
			for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
			for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
			_unit addHeadgear "usm_helmet_pasgt_g_d_m";
			_unit addWeapon "rhs_weap_m16a4_carryhandle_M203";
			//_unit addPrimaryWeaponItem "rhsusf_acc_EOTECH";
			//_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
			_unit addWeapon "rhs_weap_m72a7";
			_unit addGoggles "rhs_scarf";
		 }; 


		 
		 	 case "Engineer":
 		{
			_unit forceAddUniform "usm_bdu_d";
			_unit addItemToUniform "ACE_DefusalKit";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "ACE_CableTie";

			_unit addItemToUniform "ACE_EarPlugs";
			_unit addVest "usm_vest_LBE_rm_m";
			_unit addBackpack "usm_pack_alice";
			for "_i" from 1 to 1 do {_unit addItemToBackpack "MineDetector";};
	


			for "_i" from 1 to 6 do {_unit addItemTovest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 1 do {_unit addItemTobackpack "Toolkit";};
			_unit addHeadgear "usm_helmet_pasgt_g_d_m";
			_unit addWeapon "rhs_weap_m16a4_carryhandle";
			//_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
			_unit addWeapon "binocular";
			_unit addGoggles "rhs_scarf";
		 }; 
		 
		   
		 
		 case "CREWCOM":
		 {
			_unit forceAddUniform "usm_bdu_d";
	
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "ACE_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addVest "usm_vest_LBE_rm_m";
			for "_i" from 1 to 4 do {_unit addItemTovest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addBackpack "usm_pack_st138_prc77";
			_unit addHeadgear "rhsusf_cvc_ess";
			_unit addWeapon "rhs_weap_m16a4_carryhandle";
			_unit addWeapon "binocular";
			//_unit linkItem "ItemGPS"; 
			_unit addGoggles "rhs_scarf";
			_unit linkItem "ItemRadio";
			
		};
		
		case "CREW":
		 {
			_unit forceAddUniform "usm_bdu_d";

			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "ACE_CableTie";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addVest "usm_vest_LBE_rm_m";
			for "_i" from 1 to 4 do {_unit addItemTovest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addHeadgear "rhsusf_cvc_ess";
			_unit addWeapon "rhs_weap_m16a4_carryhandle";
			_unit addGoggles "rhs_scarf";
			_unit linkItem "ItemRadio";
			
		};

		        case "HUMWEE":
         	{
 clearItemCargoGlobal _unit;
            clearMagazineCargoGlobal _unit;     
       clearWeaponCargoGlobal _unit; 
clearbackpackCargoGlobal _unit; 
	_unit setVariable ["AFI_vehicle_gear","west",true];
   _unit addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",30]; 
           _unit addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",7]; 
    _unit addItemCargoGlobal ["ACE_fieldDressing",20];    
  _unit addItemCargoGlobal ["ACE_epinephrine",5]; 
    _unit addItemCargoGlobal ["ace_Morphine",5];
_unit addItemCargoGlobal ["ACE_bloodIV_500",3];
_unit addWeaponCargoGlobal ["rhs_weap_m72a7",1];
_unit addItemCargoGlobal ["rhs_mag_M433_HEDP",2];
_unit addItemCargoGlobal ["HandGrenade",2];
_unit addItemCargoGlobal ["SmokeShell",6];
_unit addItemCargoGlobal ["SmokeShellRed",6];
_unit addItemCargoGlobal ["SmokeShellGreen",6];
_unit disableTIEquipment true;
        };



		        case "HUMWEE2":
         	{
 clearItemCargoGlobal _unit;
            clearMagazineCargoGlobal _unit;     
       clearWeaponCargoGlobal _unit;  
clearbackpackCargoGlobal _unit;
	_unit setVariable ["AFI_vehicle_gear","west",true];
   _unit addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",30]; 
           _unit addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",8]; 
    _unit addItemCargoGlobal ["ACE_fieldDressing",20];    
 _unit addItemCargoGlobal ["HandGrenade",10];   
  _unit addItemCargoGlobal ["ACE_epinephrine",5]; 
    _unit addItemCargoGlobal ["ace_Morphine",5];
_unit addItemCargoGlobal ["ACE_bloodIV_500",3];
_unit addItemCargoGlobal ["SmokeShell",6];
_unit addItemCargoGlobal ["SmokeShellRed",6];
_unit addItemCargoGlobal ["SmokeShellGreen",6];
_unit disableTIEquipment true;
         
        };

		        case "HUMWEEWEA":
         	{
 clearItemCargoGlobal _unit;
            clearMagazineCargoGlobal _unit;     
       clearWeaponCargoGlobal _unit;  
	clearbackpackCargoGlobal _unit;
	_unit setVariable ["AFI_vehicle_gear","west",true];
   _unit addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",20]; 
           _unit addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",10]; 
	_unit addMagazineCargoGlobal ["rhs_mag_smaw_HEAA",3];
	_unit addMagazineCargoGlobal ["rhs_mag_smaw_SR",5];
    _unit addItemCargoGlobal ["ACE_fieldDressing",20];    
 _unit addItemCargoGlobal ["HandGrenade",2];   
  _unit addItemCargoGlobal ["ACE_epinephrine",5]; 
    _unit addItemCargoGlobal ["ace_Morphine",5];
_unit addItemCargoGlobal ["ACE_bloodIV_500",2];
_unit addItemCargoGlobal ["SmokeShell",6];
_unit addItemCargoGlobal ["SmokeShellRed",6];
_unit addItemCargoGlobal ["SmokeShellGreen",6];	
_unit disableTIEquipment true;
         
        };


		        case "HUMWEE3":
         	{
 clearItemCargoGlobal _unit;
            clearMagazineCargoGlobal _unit;     
       clearWeaponCargoGlobal _unit;  
clearbackpackCargoGlobal _unit;
_unit setVariable ["AFI_vehicle_gear","west",true];
         
        };
		
};

