//=======================================================================================================//
// Arxiu: fn_finalitzarMissio.sqf                                                                        //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 2015/10/02                                                                      //
//=======================================================================================================//

if (torresDestruides == 3 && traidorMort == 1 && ({alive _x} count playableUnits > 0) && intelTropes == 0) then {
    ["FinalExit1",true] call BIS_fnc_endMission;
};

if (torresDestruides < 3 && traidorMort == 1 && ({alive _x} count playableUnits > 0) && intelTropes == 0) then {
    ["FinalExit2",true] call BIS_fnc_endMission;
};

if (torresDestruides < 3 && traidorMort == 1 && ({alive _x} count playableUnits > 0) && intelTropes == 1) then {
    ["FinalExit3",true] call BIS_fnc_endMission;
};

if (torresDestruides == 3 && traidorMort == 0 && ({alive _x} count playableUnits > 0) && intelTropes == 0) then {
    ["FinalExit4",true] call BIS_fnc_endMission;
};

if (torresDestruides == 3 && traidorMort == 0 && ({alive _x} count playableUnits > 0) && intelTropes == 1) then {
    ["FinalExit5",true] call BIS_fnc_endMission;
};

if (torresDestruides == 3 && traidorMort == 1 && ({alive _x} count playableUnits > 0) && intelTropes == 1) then {
    ["FinalExit6",true] call BIS_fnc_endMission;
};

if (torresDestruides == 3 && traidorMort == 0 && ({alive _x} count playableUnits == 0)) then {
    ["FinalFallit1",false] call BIS_fnc_endMission;
};

if (torresDestruides < 3 && traidorMort == 1 && ({alive _x} count playableUnits == 0)) then {
    ["FinalFallit2",false] call BIS_fnc_endMission;
};

if (torresDestruides == 3 && traidorMort == 1 && ({alive _x} count playableUnits == 0)) then {
    ["FinalFallit3",false] call BIS_fnc_endMission;
};

if (torresDestruides < 3 && traidorMort == 0 && ({alive _x} count playableUnits > 0) && intelTropes == 0) then {
    ["FinalFallit4",false] call BIS_fnc_endMission;
};

if (torresDestruides < 3 && traidorMort == 0 && ({alive _x} count playableUnits > 0) && intelTropes == 1) then {
    ["FinalFallit5",false] call BIS_fnc_endMission;
};

if ({alive _x} count allPlayers <= 0) then {
    ["FracasAbsolut",false] spawn BIS_fnc_endMission;
};

//============================================ FI DEL FITXER ============================================//