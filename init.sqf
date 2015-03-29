//=======================================================================================================//
// Arxiu: init.sqf                                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 22/02/2015                                                                      //
//=======================================================================================================//

// Desactivar guardar i guardar automàticament
enableSaving [false, false];

// Desactivar les ordres per radio o informes
enableSentences false;

// Execució del script per generar els Briefings
cc_script_briefing = [] execVM "briefing.sqf";

// Inicialitzar el sistema de radios
cc_script_radio = [] execVM "scripts\radios\inicialitzar_radios.sqf";

//============================================ FI DEL FITXER ============================================//
