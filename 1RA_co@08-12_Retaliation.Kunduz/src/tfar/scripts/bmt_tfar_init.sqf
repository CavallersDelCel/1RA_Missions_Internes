//=======================================================================================================//
// File: bmt_tfar_init.sqf                                                                               //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/02/22                                                                             //
// Description: This script configures the Task Force Arrowhead Radio (TFAR) mod that can be found in    //
//              https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki                         //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

waitUntil {!isNil "TF_defaultWestPersonalRadio"};

// Include the configuration file.
#include "..\..\..\missionConfig\tfar\scripts\bmt_tfar_configuration.sqf"

if (isDedicated) then {
    // Configure the server side (dedicated).
    [] execVM "src\tfar\scripts\bmt_tfar_initServer.sqf";
} else {
    // Configure the client side.
    [] execVM "src\tfar\scripts\bmt_tfar_initClient.sqf";

    // Configure the server side (non-dedicated).
    if (isServer) then {
        [] execVM "src\tfar\scripts\bmt_tfar_initServer.sqf";
    };
};

//============================================= END OF FILE =============================================//
