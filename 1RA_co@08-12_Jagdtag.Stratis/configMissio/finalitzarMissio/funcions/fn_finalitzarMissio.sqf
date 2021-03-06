//=======================================================================================================//
// Arxiu: fn_finalitzarMissio.sqf                                                                        //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/10/02                                                                      //
// Descripció: Aquest document serveix per definir sota quines circumstàncies s'activen els diferents    //
//             finals de la missió. Cal remarcar que és necessari executar aquesta funció de forma que   //
//             afecti tan a clients com a servidors.                                                     //
//             Els diferents finals han d'estar definits en el fitxer cc_debriefingMissio.hpp.           //                                                    //
// Canvis: 0.1 (2015/10/02) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
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

// Si tots els personatges han mort i no s'ha assolit cap objectiu, la missió ha sigut un fracàs absolut.
if ({alive _x} count allPlayers <= 0) then {
    ["FracasAbsolut",false] spawn BIS_fnc_endMission;
};

//============================================ FI DEL FITXER ============================================//
