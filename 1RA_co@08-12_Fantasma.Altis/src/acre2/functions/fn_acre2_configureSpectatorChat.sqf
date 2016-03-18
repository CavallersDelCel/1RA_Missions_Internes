//=======================================================================================================//
// File: fn_acre2_configureSpectatorChat.sqf                                                             //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 28/04/2015                                                                             //
// Description: Function to configure spectator chat using Advanced Combat Radio Environment 2 (ACRE2)   //
//              http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                        //
//              Arguments:                                                                               //
//               - none                                                                                  //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Variable declarations.
private["_unit"];

_unit = player;

if (alive _unit) then {
    // If unit is alive, disable ACRE 2 spectator chat.
    [false] call acre_api_fnc_setSpectator;
} else {
    // If unit is dead, force ACRE 2 spectator chat.
    [true] call acre_api_fnc_setSpectator;
};

//============================================= END OF FILE =============================================//
