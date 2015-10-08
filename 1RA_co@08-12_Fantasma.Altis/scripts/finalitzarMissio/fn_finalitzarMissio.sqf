//=======================================================================================================//
// Arxiu: fn_finalitzarMissio.sqf                                                                        //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 2015/10/02                                                                      //
//=======================================================================================================//

if (coronelMort == 1 && ({alive _x} count playableUnits > 0)) then {
    ["FinalExit1",true] call BIS_fnc_endMission;
};

if (coronelMort == 1 && ({alive _x} count playableUnits > 0)) then {
    ["FinalFallit1",false] call BIS_fnc_endMission;
};

if (coronelMort == 0 && ({alive _x} count playableUnits > 0)) then {
    ["FinalFallit2",false] call BIS_fnc_endMission;
};

if ({alive _x} count allPlayers <= 0) then {
    ["FracasAbsolut",false] spawn BIS_fnc_endMission;
};