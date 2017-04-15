    //////////
    //Kaikki//
    //////////

enableSaving [false, false];

//AFI safestartti päälle.
[] spawn afi_safestart;




    ////////////
    //Servuuri//
    ////////////
if (isServer) then
{


};



    ////////////
    //Pelaajat//
    ////////////
if (hasInterface) then {

    CHVD_allowNoGrass = false; // Set 'false' if you want to disable "Low" option for terrain (default: true)
    CHVD_maxView = 2000; // Set maximum view distance (default: 12000)
    CHVD_maxObj = 2000; // Set maximimum object view distance (default: 12000)


    [] call compile preprocessFileLineNumbers "briefing.sqf";

    [] spawn {
        finishMissionInit;
        waitUntil{!isNull player && time > 0};
        openMap [true, true];
        _camera = "camera" camCreate [(getPos player select 0),(getPos player select 1),100];
        _camera cameraEffect ["internal","back"];
        _camera camSetFOV 0.700;
        _camera camSetTarget player;
        _camera camCommit 0;
        waitUntil {camCommitted _camera};
        cutText["Ladataan Tehtävää", "PLAIN", 5, true];
        waitUntil {time > 15};
        player cameraEffect ["terminate","back"];
        camDestroy _camera;
        cutText["", "BLACK IN", 5];
        openMap [false, false];
    };
};



