//=======================================================================================================//
// File: bmt_jip_init.sqf                                                                                //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/04/03                                                                             //
// Description: This script checks whether JIP players are supported or not. If JIP is not allowed after //
//              a certain amount of time, the player is killed.                                          //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// If time limit is a positive value check until when JIP players are allowed. With a negative value, JIP
// players are allowed to enter the game at any time.
if (isServer && (bmt_param_jip_timeLimit > 0)) then {

    bmt_script_jipServerTime = [] spawn {
    	waitUntil {time > bmt_param_jip_timeLimit};
        missionNamespace setVariable ["bmt_var_jip_allowed", false, true];
    };
};

// Kill the player if JIP is not allowed.
if (hasInterface && !(missionnamespace getVariable ["bmt_var_jip_allowed", true])) then {

    player setDamage 1;

    sleep 5;
    cutText ["This mission does not support JIP. Be punctual next time!", "PLAIN DOWN"];
};

//============================================= END OF FILE =============================================//
