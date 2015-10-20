//=======================================================================================================//
// Arxiu: fn_finalitzarMissio.sqf                                                                        //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 2015/10/02                                                                      //
//=======================================================================================================//

if ({alive _x} count allPlayers <= 0) then {
    ["FracasAbsolut",false] spawn BIS_fnc_endMission;
};
