//=======================================================================================================//
// File: fn_tfar_configureSpectatorChat.sqf                                                              //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/03/06                                                                             //
// Description: Function to configure spectator chat using Task Force Arrowhead Radio (TFAR)             //
//              https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki                         //
//              Arguments:                                                                               //
//               - none                                                                                  //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Variable declarations.
private["_unit"];

_unit = player;

if(alive _unit) then {
    // If unit is alive, disable TFAR spectator chat.
    [_unit, false] call TFAR_fnc_forceSpectator;
} else {
    // If unit is dead, force TFAR spectator chat.
    [_unit, true] call TFAR_fnc_forceSpectator;
};

//============================================= END OF FILE =============================================//
