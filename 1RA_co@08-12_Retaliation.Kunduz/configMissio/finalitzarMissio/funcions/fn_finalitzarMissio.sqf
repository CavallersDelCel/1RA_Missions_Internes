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

// All marines rescued. Warlord dead.
if ((rescuedMarines == 4) and (warlordDead == 1)) then {
    ["FinalExit1",true] spawn BIS_fnc_endMission;
};

// Not all marines rescued. Warlord dead.
if (((rescuedMarines > 0) and (rescuedMarines < 4)) and (warlordDead == 1)) then {
    ["FinalExit2",true] spawn BIS_fnc_endMission;
};

// All marines rescued. Warlord alive.
if ((rescuedMarines == 4) and (warlordDead == 0)) then {
    ["FinalExit3",true] spawn BIS_fnc_endMission;
};

// Not all marines rescued. Warlord alive.
if (((rescuedMarines > 0) and (rescuedMarines < 4)) and (warlordDead == 0)) then {
    ["FinalExit4",true] spawn BIS_fnc_endMission;
};

// No marines rescued. Warlord dead.
if ((rescuedMarines == 0) and (warlordDead == 1)) then {
    ["FinalExit5",true] spawn BIS_fnc_endMission;
};

// None of the objectives were accomplished. Players quited AO.
if ((rescuedMarines == 0) and (warlordDead == 0)) then {
    ["FinalFallit1",false] spawn BIS_fnc_endMission;
};

// All players are dead. Warlord dead.
if (({alive _x} count allPlayers <= 0) and (warlordDead == 1)) then {
    ["FinalFallit2",false] spawn BIS_fnc_endMission;
};

// All players are dead without accomplishing any objectives.
if (({alive _x} count allPlayers <= 0) and (warlordDead == 0)) then {
    ["FracasAbsolut",false] spawn BIS_fnc_endMission;
};

//============================================ FI DEL FITXER ============================================//
