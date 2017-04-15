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
	_unit linkItem "ItemRadio";
	//_unit addItem "NVGoggles";
	//unit addItem "ItemGPS"; 

if (isServer) then {
if (_unit isKindof "Man") then {
	_unit setVariable ["plank_class", _type, true];
};
};

_Optic = ["rhsusf_acc_eotech_552","rhsusf_acc_compm4"] call BIS_fnc_selectRandom;

_BRADHE = "bradleyhe" call BIS_fnc_getParamValue;





 	switch (_type) do
 	{ 

		 case "PL":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ace_Morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addVest "rhsusf_iotv_ocp_Grenadier";
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m18_red";};
			for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addBackpack "tf_rt1523g_rhs";
			for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addHeadgear "rhsusf_ach_helmet_M81";
			_unit addWeapon "rhs_weap_m4_carryhandle";
			_unit addWeapon "binocular";
			_unit linkItem "ItemGPS";
			_unit addPrimaryWeaponItem _Optic;
			
		 }; 

		 case "SL":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ace_Morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addVest "rhsusf_iotv_ocp_Grenadier";
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m18_red";};
			for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addBackpack "tf_rt1523g_rhs";
			for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addHeadgear "rhsusf_ach_helmet_M81";
			_unit addWeapon "rhs_weap_m4_carryhandle";
			_unit addWeapon "binocular";
			_unit linkItem "ItemGPS";
			_unit addPrimaryWeaponItem _Optic;
			
		 }; 
		 
		 		 case "UAV":
		 {
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ace_Morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 4 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addVest "rhsusf_iotv_ocp_Rifleman";
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
			for "_i" from 1 to 5 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addHeadgear "rhsusf_ach_helmet_M81";
			_unit addWeapon "rhs_weap_m4_carryhandle";
			_unit addWeapon "binocular";
			_unit linkItem "B_UavTerminal";
			_unit addPrimaryWeaponItem _Optic;
			
		};

	

		 case "MEDIC":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ace_Morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addVest "rhsusf_iotv_ocp_Medic";
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_an_m8hc";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m18_red";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m18_green";};
			for "_i" from 1 to 7 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_epinephrine";};
			for "_i" from 1 to 2 do {_unit addItemTobackpack "ACE_bloodIV_500";};
			for "_i" from 1 to 15 do {_unit addItemTobackpack "ace_Morphine";};
			for "_i" from 1 to 25 do {_unit addItemToBackpack "ACE_fieldDressing";};
			_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
			_unit addHeadgear "rhsusf_ach_helmet_M81";
			_unit addWeapon "rhs_weap_m4_carryhandle";
			_unit addPrimaryWeaponItem _Optic;
			
		 }; 

		 case "TL":
 		{
			
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ace_Morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 4 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addVest "rhsusf_iotv_ocp_Grenadier";
			_unit addItemToVest "rhs_mag_m67";
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_M714_white";};
			for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_M713_red";};
			for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_M433_HEDP";};
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
			for "_i" from 1 to 12 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
			_unit addHeadgear "rhsusf_ach_helmet_M81";
			_unit addWeapon "rhs_weap_m4_m320";
			_unit addWeapon "binocular";
			_unit linkItem "ItemGPS";
			_unit addPrimaryWeaponItem _Optic;
			
		
		}; 

		 case "ASSTAR":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ace_Morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addVest "rhsusf_iotv_ocp_SAW";
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
			for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 4 do {_unit addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";};
			_unit addHeadgear "rhsusf_ach_helmet_M81";
			_unit addWeapon "rhs_weap_m4_carryhandle";
			_unit addWeapon "binocular";
			_unit addWeapon "rhs_weap_M136_HEDP";
			_unit addPrimaryWeaponItem _Optic;
		
			
		 }; 
		 
		 
		  case "RIFLEAT":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ace_Morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addVest "rhsusf_iotv_ocp_Rifleman";
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
			for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			for "_i" from 1 to 9 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
			_unit addHeadgear "rhsusf_ach_helmet_M81";
			_unit addWeapon "rhs_weap_m4_carryhandle";
			_unit addWeapon "rhs_weap_M136";
			_unit addPrimaryWeaponItem _Optic;
			
			
		 }; 

		  case "RIFLE":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ace_Morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addVest "rhsusf_iotv_ocp_Rifleman";
			for "_i" from 1 to 1 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 1 do {_unit addItemToVest "rhs_mag_an_m8hc";};
			for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addHeadgear "rhsusf_ach_helmet_M81";
			_unit addWeapon "rhs_weap_m4_carryhandle";
			_unit addPrimaryWeaponItem _Optic;
			
			
		 }; 

		  case "TOWGUNNER":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ace_Morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addVest "rhsusf_iotv_ocp_Rifleman";
			for "_i" from 1 to 1 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 1 do {_unit addItemToVest "rhs_mag_an_m8hc";};
			for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addHeadgear "rhsusf_ach_helmet_M81";
			_unit addWeapon "rhs_weap_m4_carryhandle";
			_unit addWeapon "rhs_weap_M136";
			_unit addPrimaryWeaponItem _Optic;
			_unit addWeapon "binocular";
			
			
		 };


		 case "AR":
 		{
			
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ace_Morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "rhs_mag_m67";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_an_m8hc";};
			_unit addVest "rhsusf_iotv_ocp_SAW";
			for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_100Rnd_556x45_soft_pouch";};
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			for "_i" from 1 to 4 do {_unit addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";};
			_unit addHeadgear "rhsusf_ach_helmet_M81";
			_unit addWeapon "rhs_weap_m249_pip_S";
			_unit addPrimaryWeaponItem _Optic;
			
		
		}; 

		 case "GREN":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ace_Morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 4 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addVest "rhsusf_iotv_ocp_Grenadier";
			_unit addItemToVest "rhs_mag_m67";
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_M714_white";};
			for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_M713_red";};
			for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_M433_HEDP";};
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
			_unit addHeadgear "rhsusf_ach_helmet_M81";
			_unit addWeapon "rhs_weap_m4_m320";
			_unit addPrimaryWeaponItem _Optic;
			
			
		 }; 
		 
		 
		 		 case "HEAVYMG":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ace_Morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "16Rnd_9x21_Mag";
			_unit addVest "rhsusf_iotv_ocp_SAW";
			for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_100Rnd_762x51_m62_tracer";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			for "_i" from 1 to 4 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";};
			_unit addHeadgear "rhsusf_ach_helmet_M81";
			_unit addWeapon "rhs_weap_m240B";
			_unit addWeapon "hgun_P07_F";
			_unit addPrimaryWeaponItem _Optic;
		 }; 
		 
		 		 case "ASSTHEAVYMG":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ace_Morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addVest "rhsusf_iotv_ocp_SAW";
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
			for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			for "_i" from 1 to 3 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";};
			_unit addWeapon "binocular";
			_unit addHeadgear "rhsusf_ach_helmet_M81";
			_unit addWeapon "rhs_weap_m4_carryhandle";
			_unit addPrimaryWeaponItem _Optic;
		
			
		 }; 
		 
		 		 case "HEAVYAT":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ace_Morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_an_m8hc";};
			_unit addVest "rhsusf_iotv_ocp_Rifleman";
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m18_green";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m18_red";};
			for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addBackpack "B_Carryall_cbr";
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_smaw_HEAA";};
			for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_mag_smaw_SR";};
			_unit addHeadgear "rhsusf_ach_helmet_M81";
			_unit addWeapon "rhs_weap_m4_carryhandle";
			_unit addWeapon "rhs_weap_smaw_green";
			_unit addSecondaryWeaponItem "rhs_weap_optic_smaw";
			_unit addPrimaryWeaponItem _Optic;
		 }; 

		 		 case "AASL":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ace_Morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_an_m8hc";};
			_unit addVest "rhsusf_iotv_ocp_Rifleman";
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m18_green";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m18_red";};
			for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addBackpack "tf_rt1523g_rhs";
			_unit addHeadgear "rhsusf_ach_helmet_M81";
			_unit addWeapon "rhs_weap_m4_carryhandle";
			_unit addWeapon "rhs_weap_fim92";
			_unit addPrimaryWeaponItem _Optic;
			_unit linkItem "ItemGPS";
		 }; 

		 		 case "AA":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ace_Morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_an_m8hc";};
			_unit addVest "rhsusf_iotv_ocp_Rifleman";
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m18_green";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m18_red";};
			for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addBackpack "B_Carryall_cbr";
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_fim92_mag";};
			_unit addHeadgear "rhsusf_ach_helmet_M81";
			_unit addWeapon "rhs_weap_m4_carryhandle";
			_unit addWeapon "rhs_weap_fim92";
			_unit addPrimaryWeaponItem _Optic;
		 }; 
		 
		 		 		 case "HEAVYATASST":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ace_Morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_an_m8hc";};
			_unit addVest "rhsusf_iotv_ocp_Rifleman";
			for "_i" from 1 to 10 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m18_red";};
			_unit addBackpack "B_Carryall_cbr";
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_smaw_HEAA";};
			for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_mag_smaw_SR";};
			_unit addHeadgear "rhsusf_ach_helmet_M81";
			_unit addWeapon "rhs_weap_m4_carryhandle";
			_unit addWeapon "binocular";
			_unit addPrimaryWeaponItem _Optic;
		 }; 

					 case "SLRECON":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ace_Morphine";};
			_unit addItemToUniform "ACE_EarPlugs";
			for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addVest "rhsusf_iotv_ocp_Grenadier";
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m18_red";};
			for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addBackpack "tf_rt1523g_rhs";
			for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addWeapon "rhs_weap_m4_carryhandle";
			_unit addPrimaryWeaponItem "rhsusf_acc_nt4_black";
			_unit addHeadgear "rhs_Booniehat_m81";
			_unit addWeapon "binocular";
			_unit addGoggles "G_Bandanna_oli";
			_unit linkItem "ItemGPS";
			_unit addPrimaryWeaponItem _Optic;
			
		 }; 

					  case "RIFLERECON":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ace_Morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addVest "rhsusf_iotv_ocp_Rifleman";
			for "_i" from 1 to 1 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 1 do {_unit addItemToVest "rhs_mag_an_m8hc";};
			for "_i" from 1 to 9 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			_unit addWeapon "rhs_weap_m4_carryhandle";
			_unit addHeadgear "rhs_Booniehat_m81";
			_unit addWeapon "binocular";
			_unit addGoggles "G_Bandanna_oli";
			_unit addPrimaryWeaponItem "rhsusf_acc_nt4_black";
			_unit addPrimaryWeaponItem _Optic;
			
		 }; 
		 


		 		 		 		 case "PILOT":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ace_Morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addVest "rhsusf_iotv_ocp";
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m18_red";};
			_unit addHeadgear "rhs_Booniehat_m81";
			_unit addWeapon "rhs_weap_m4a1_carryhandle_pmag";
		 }; 

		 		 		 		 case "CREWCOM":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ace_Morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addVest "rhsusf_iotv_ocp";
			for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m18_red";};
			_unit addHeadgear "rhsusf_cvc_ess";
			_unit addWeapon "rhs_weap_m4a1_carryhandle_pmag";
			_unit addWeapon "binocular";
		 }; 

		 		 		 		 case "CREW":
 		{
			_unit forceAddUniform "rhs_uniform_g3_m81";
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_fieldDressing";};
			_unit addItemToUniform "ace_Morphine";
			_unit addItemToUniform "ACE_EarPlugs";
			_unit addVest "rhsusf_iotv_ocp";
			for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m18_red";};
			_unit addHeadgear "rhsusf_cvc_ess";
			_unit addWeapon "rhs_weap_m4a1_carryhandle_pmag";
			_unit addWeapon "binocular";
		 }; 
		 
		 		 case "USVE":
 		{
			clearMagazineCargoGlobal _unit;
			clearWeaponCargoGlobal _unit;
			clearitemCargoGlobal _unit;
			clearbackpackCargoGlobal _unit;
			_unit setVariable ["AFI_vehicle_gear","west",true];
			_unit addWeaponCargoGlobal ["rhs_weap_m4_carryhandle",2];
			_unit addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",20];
			_unit addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",5];
			_unit addMagazineCargoGlobal ["rhs_mag_m67",10];
			_unit addItemCargoGlobal ["toolkit",1];
			_unit addMagazineCargoGlobal ["rhs_mag_an_m8hc",5];
			_unit addItemCargoGlobal ["ace_Morphine", 8];
			_unit addItemCargoGlobal ["ACE_fieldDressing", 20];
			_unit addItemCargoGlobal ["ACE_epinephrine", 4];
			_unit addItemCargoGlobal ["ace_CableTie",20];
			_unit addItemCargoGlobal ["ACE_bloodIV_500", 3];
			_unit addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m62_tracer",5];
			_unit addItemCargoGlobal ["ACE_EntrenchingTool",2];
			_unit addItemCargoGlobal ["ACE_SpraypaintRed",2];
			_unit additemCargoGlobal ["ace_DefusalKit",2];
			_unit addItemCargoGlobal ["ace_Clacker",4];
			_unit addItemCargoGlobal ["ACE_M26_Clacker",4];
			_unit addItemCargoGlobal ["SatchelCharge_Remote_Mag",2];
			_unit addItemCargoGlobal ["DemoCharge_Remote_Mag",6];

			
		 };  

		 		 case "TANKKI":
 		{
			clearMagazineCargoGlobal _unit;
			clearWeaponCargoGlobal _unit;
			clearitemCargoGlobal _unit;
			clearbackpackCargoGlobal _unit;
			_unit setVariable ["AFI_vehicle_gear","west",true];
			_unit addWeaponCargoGlobal ["rhs_weap_m4_carryhandle",2];
			_unit addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",40];
			_unit addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",8];
			_unit addMagazineCargoGlobal ["rhs_mag_m67",6];
			_unit addMagazineCargoGlobal ["rhs_mag_M433_HEDP",10];
			_unit addItemCargoGlobal ["toolkit",1];
			_unit addMagazineCargoGlobal ["rhs_mag_an_m8hc",10];
			_unit addItemCargoGlobal ["ace_Morphine", 9];
			_unit addItemCargoGlobal ["ACE_fieldDressing", 20];
			_unit addItemCargoGlobal ["ACE_epinephrine", 5];
			_unit addItemCargoGlobal ["ace_CableTie",10];
			_unit addItemCargoGlobal ["ACE_bloodIV_500", 3];
			_unit addBackpackCargoGlobal ["rhsusf_assault_eagleaiii_ocp",2];
			_unit additemCargoGlobal ["ace_DefusalKit",2];
			//_unit removeWeaponTurret ["Rhs_weap_TOW_Launcher",[0]];
			_unit disableTIEquipment true;
			if (_BRADHE == 2) then {
			{_unit removeMagazineTurret ["rhs_mag_230Rnd_25mm_M242_HEI",[0]]} foreach [1,2,3,4];
			{_unit addMagazineTurret ["rhs_mag_70Rnd_25mm_M242_APFSDS",[0]]} foreach [1,2,3,4];
			};
			_unit addItemCargoGlobal ["rhs_mine_M19_mag", 5];
		 };  


		 		 case "WEAHUM":
 		{
			clearMagazineCargoGlobal _unit;
			clearWeaponCargoGlobal _unit;
			clearitemCargoGlobal _unit;
			clearbackpackCargoGlobal _unit;
			_unit setVariable ["AFI_vehicle_gear","west",true];
			_unit addWeaponCargoGlobal ["rhs_weap_m4_carryhandle",2];
			_unit addWeaponCargoGlobal ["rhs_weap_M136",2];
			_unit addMagazineCargoGlobal ["rhs_mag_smaw_HEAA",6];
			_unit addMagazineCargoGlobal ["rhs_mag_smaw_HEDP",2];
			_unit addMagazineCargoGlobal ["rhs_mag_smaw_SR",20];
			_unit addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",40];
			_unit addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m62_tracer",12];
			_unit addMagazineCargoGlobal ["rhs_mag_m67",10];
			_unit addItemCargoGlobal ["toolkit",1];
			_unit addMagazineCargoGlobal ["rhs_mag_an_m8hc",5];
			_unit addItemCargoGlobal ["ace_Morphine", 10];
			_unit addItemCargoGlobal ["ACE_fieldDressing", 30];
			_unit addItemCargoGlobal ["ace_CableTie",20];
			_unit addItemCargoGlobal ["ACE_epinephrine", 8];
			_unit addItemCargoGlobal ["ACE_bloodIV_500", 5];
			_unit addItemCargoGlobal ["ACE_EntrenchingTool",2];
			_unit addItemCargoGlobal ["ACE_SpraypaintRed",2];
			_unit additemCargoGlobal ["ace_DefusalKit",2];
			_unit addMagazineCargoGlobal ["rhs_fim92_mag",2];
			_unit addBackpackCargoGlobal ["RHS_M2_Gun_Bag",1];
			_unit addBackpackCargoGlobal ["RHS_M2_Tripod_Bag",1];
			_unit addItemCargoGlobal ["rhs_mine_M19_mag", 5];

		 }; 

		 		 case "WEAHUMAA":
 		{
			clearMagazineCargoGlobal _unit;
			clearWeaponCargoGlobal _unit;
			clearitemCargoGlobal _unit;
			clearbackpackCargoGlobal _unit;
			_unit setVariable ["AFI_vehicle_gear","west",true];
			_unit addWeaponCargoGlobal ["rhs_weap_m4_carryhandle",2];
			_unit addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",10];
			_unit addMagazineCargoGlobal ["rhs_mag_m67",2];
			_unit addItemCargoGlobal ["toolkit",1];
			_unit addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
			_unit addItemCargoGlobal ["ace_Morphine", 3];
			_unit addItemCargoGlobal ["ACE_fieldDressing", 10];
			_unit addItemCargoGlobal ["ACE_epinephrine", 8];
			_unit addItemCargoGlobal ["ACE_bloodIV_500", 5];
			_unit addItemCargoGlobal ["ACE_EntrenchingTool",2];
			_unit addItemCargoGlobal ["ACE_SpraypaintRed",2];
			_unit additemCargoGlobal ["ace_DefusalKit",2];
			_unit addMagazineCargoGlobal ["rhs_fim92_mag",4];
			_unit addItemCargoGlobal ["rhs_mine_M19_mag", 5];
	

		 }; 
		 

		 		 case "COMHUM":
 		{
			clearMagazineCargoGlobal _unit;
			clearWeaponCargoGlobal _unit;
			clearitemCargoGlobal _unit;
			clearbackpackCargoGlobal _unit;
			_unit setVariable ["AFI_vehicle_gear","west",true];
			_unit addWeaponCargoGlobal ["rhs_weap_m4_carryhandle",2];
			_unit addWeaponCargoGlobal ["rhs_weap_M136",1];
			_unit addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",20];
			_unit addMagazineCargoGlobal ["rhs_mag_m67",10];
			_unit addMagazineCargoGlobal ["rhs_mag_an_m8hc",10];
			_unit addItemCargoGlobal ["toolkit",1];
			_unit addItemCargoGlobal ["ace_Morphine", 20];
			_unit addItemCargoGlobal ["ACE_fieldDressing", 40];
			_unit addItemCargoGlobal ["ACE_epinephrine", 10];
			_unit addItemCargoGlobal ["ACE_bloodIV_500", 8];
			_unit addItemCargoGlobal ["rhs_mine_M19_mag", 5];
			
		 };  	

		         case "tyhja":
 		
		{
			clearMagazineCargoGlobal _unit;
			clearWeaponCargoGlobal _unit;
			clearbackpackCargoGlobal _unit;
			clearitemCargoGlobal _unit;
	
		 };  	



		         case "USVEHEAVY":
 		
		{
			clearMagazineCargoGlobal _unit;
			clearWeaponCargoGlobal _unit;
			clearitemCargoGlobal _unit;
			clearbackpackCargoGlobal _unit;
			_unit setVariable ["AFI_vehicle_gear","west",true];
			_unit addWeaponCargoGlobal ["rhs_weap_m4_carryhandle",2];
			_unit addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",15];
			_unit addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",5];
			_unit addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m62_tracer",5];
			_unit addMagazineCargoGlobal ["rhs_mag_m67",10];
			_unit addItemCargoGlobal ["toolkit",1];
			_unit addMagazineCargoGlobal ["rhs_mag_an_m8hc",5];
			_unit addItemCargoGlobal ["ace_Morphine", 5];
			_unit addItemCargoGlobal ["ACE_fieldDressing", 20];
			_unit addItemCargoGlobal ["DemoCharge_Remote_Mag",2];
			_unit addItemCargoGlobal ["ace_Clacker",2];
		 };  
		 
		 		         case "STAATTINEN":
 		
		{
			clearMagazineCargoGlobal _unit;
			clearWeaponCargoGlobal _unit;
			clearitemCargoGlobal _unit;
			clearbackpackCargoGlobal _unit;
			_unit setVariable ["AFI_vehicle_gear","west",true];
			_unit disableTIEquipment true;

		 };  
		 
		 		         case "USVEAT":
 		
		{
			clearMagazineCargoGlobal _unit;
			clearWeaponCargoGlobal _unit;
			_unit addWeaponCargoGlobal ["rhs_weap_m4_carryhandle",2];
			_unit addMagazineCargoGlobal ["rhs_mag_smaw_HEAA",3];
			_unit addMagazineCargoGlobal ["rhs_mag_smaw_HEDP",1];
			_unit addMagazineCargoGlobal ["rhs_mag_smaw_SR",3];
			_unit addMagazineCargoGlobal ["rhs_mag_m67",5];
			_unit addItemCargoGlobal ["toolkit",1];
			_unit addMagazineCargoGlobal ["rhs_mag_an_m8hc",5];
			_unit addItemCargoGlobal ["ace_Morphine", 5];
			_unit addItemCargoGlobal ["ACE_fieldDressing", 20];
		 };  
		 
  
		 
};
_unit addItemToUniform "ace_CableTie";
_unit linkItem "ItemMap";