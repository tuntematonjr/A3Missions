



//Tfar Config

tf_same_sw_frequencies_for_side = true;
tf_no_auto_long_range_radio = true;
tf_same_lr_frequencies_for_side = true;
TF_give_personal_radio_to_regular_soldier = true;

  
CHVD_allowNoGrass = true; // Set 'false' if you want to disable "Low" option for terrain (default: true)
CHVD_maxView = 1500; // Set maximum view distance (default: 12000)
CHVD_maxObj = 1500; // Set maximimum object view distance (default: 12000) 

[] spawn afi_safestart;


enableSaving [ false, false ];

/*
[] execVM "VCOMAI\init.sqf";

if (isServer) then {
[] execvm "reinforcementopfor.sqf";
[] execvm "extract\init.sqf";
[] execvm "extract.sqf";
execvm "moveukot.sqf";
};
*/

//NON-JIP
if (!isNull player) then 
{
[]execvm "start_text\init.sqf";

	if (hasInterface) then 
	{
		waitUntil {!isNull player};
		nul = [] execVM "briefing.sqf";
	
		/*if(side player == WEST) then 
		{
			[]execvm "valitsealoitus.sqf";
			sleep 2;
			_type = player getVariable "plank_class";
			_rakennusaika = "planktime" call BIS_fnc_getParamValue;
			[_type, player, _rakennusaika] execVM "plank_settings.sqf";
		};*/
	};
};

//JIP
if (!isServer && isNull player) then 
{ 
waitUntil {!isNull player};
[]execvm "start_text\init.sqf";
nul = [] execVM "briefing.sqf";
	/*if (hasInterface) then 
	{
	waitUntil {!isNull player};
		if(side player == WEST) then 
		{
		sleep 2;
		_type = player getVariable "plank_class";
		_rakennusaika = "planktime" call BIS_fnc_getParamValue;
		[_type, player, _rakennusaika] execVM "plank_settings.sqf";
		};
	};*/
}; 

