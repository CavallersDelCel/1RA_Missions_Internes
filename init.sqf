//=======================================================================================================//
// Arxiu: init.sqf                                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 22/02/2015                                                                      //
//=======================================================================================================//

// Desactivar guardar i guardar automàticament
enableSaving [false, false]

// Desactivar les ordres per radio o informes
enableSentences false;

cc_script_briefing = [] execVM "briefing.sqf";