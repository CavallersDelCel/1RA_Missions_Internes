//=======================================================================================================//
// Arxiu: cc_finalitzrMissio.sqf                                                                         //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 24/09/2015                                                                      //
//=======================================================================================================//

if (coronelMort == 1 && ({alive _x} count playableUnits > 0)) then {
    ["FinalExit1",true] call BIS_fnc_endMission;
};

if (coronelMort == 0 && ({alive _x} count playableUnits > 0)) then {
    ["FinalFallit2",false] call BIS_fnc_endMission;
};