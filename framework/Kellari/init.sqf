



//Tfar Config

tf_same_sw_frequencies_for_side = true;
tf_no_auto_long_range_radio = true;
tf_same_lr_frequencies_for_side = true;
TF_give_personal_radio_to_regular_soldier = true;

//These must be in init.sqf
CHVD_allowNoGrass = true; 	// Set 'false' if you want to disable "Low" option for terrain (default: true)
CHVD_maxView = 1500; 		// Set maximum view distance (default: 12000) Don't tell players exact number you placed in here
CHVD_maxObj = 1500; 		// Set maximimum object view distance (default: 12000) Don't tell players exact number you placed in here

[] spawn afi_safestart;

afi_jip_enabled = true; 	// JIP restrincting system is on
afi_jip_allowed = true; 	// Jip is allowed
afi_jip_time = 300; 		// Time in which JIP is allowed to server. Number in seconds from the time which the mission started.

enableSaving [ false, false ];

/*//Execute scripts like this so they are properly ran only on server, not on clients.
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
	[]execvm "scripts\start_text\init.sqf";
	nul= ["AreaOfOperations"]execvm "scripts\coverMap\coverMap.sqf";

	if (hasInterface) then 
	{
		waitUntil {!isNull player};
		nul = [] execVM "briefing.sqf";
		if (side player == west) then //Hides the markers named below so blufor can't see it on map. Edit the WEST for intended case. EAST=Opfor/RESISTANCE=Indfor
		{
		"MarkerName" setMarkerAlphaLocal 0;
		};
	};
};

//JIP
if (!isServer && isNull player) then 
{ 
	waitUntil {!isNull player};
	[]execvm "scripts\start_text\init.sqf";
	nul= ["AreaOfOperations"]execvm "scripts\coverMap\coverMap.sqf";
	nul = [] execVM "briefing.sqf";
	if (hasInterface) then 
	{
	waitUntil {!isNull player};
		if (side player == west) then //Hides the markers named below so blufor can't see it on map. Edit the WEST for intended case. EAST=Opfor/RESISTANCE=Indfor
		{
		"MarkerName" setMarkerAlphaLocal 0;
		};
	};
}; 

