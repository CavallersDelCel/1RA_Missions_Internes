//=======================================================================================================//
// Arxiu: init.sqf                                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/02/22                                                                      //
// Descripció: Fitxer init.sqf. Aquest fitxer inclou aquelles funcions que en MP s'executen al final de  //
//             la cadena d'inicialització. Serveix per configurar mòduls, briefings, radios, etc.        //
// Canvis: 0.1 (2015/02/22) Versió inicial.                                                              //
//         0.2 (2015/05/26) Afegit el suport per ACE 3.                                                  //
//         0.3 (2015/06/10) Afegida la opció de carregar els perfils en cas de que es decideixi          //
//                          utilitzar-los als paràmetres de la missió.                                   //
//         0.4 (2015/06/12) Canvis deguts a les noves faccions a la versió 0.3.8 de RHS.                 //
//         0.5 (2015/09/29) Configuració de DAC i ASR AI.                                                //
//         0.6 (2015/09/30) Afegit un script per comprovar la configuració dels paràmetres de la missió. //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

//=======================================================================================================//
// Desactivar guardar i guardar automàticament: https://community.bistudio.com/wiki/enableSaving         //
//=======================================================================================================//
enableSaving [false, false];

//=======================================================================================================//
// Desactivar les ordres per radio o informes: https://community.bistudio.com/wiki/enableSentences       //
//=======================================================================================================//
enableSentences false;

//=======================================================================================================//
// Inicialitzar el Dynamic AI Creator 3.1b (DAC 3.1b): http://www.armaholic.com/page.php?id=25550        //
//=======================================================================================================//
if (cc_param_dac_habilitat == 1) then {
    cc_inicialitzar_DAC = [] execVM "src\dac\scripts\cc_dac_inicialitzar.sqf";
};

// Execució del script per generar els Briefings.
cc_script_briefing = [] execVM "src\briefing\scripts\cc_briefing.sqf";

onPreloadFinished {
    endLoadingScreen;
    cc_preload_completat = true;
};

if (cc_param_utilitzarPerfils == 1 && !isDedicated) then {
    cc_script_perfils = [] execVM "src\configEquipacio\scripts\cc_configEquipacio_perfils.sqf";
};

// Inicialitzar el sistema de ràdios.
if (cc_mod_tfar) then {
    // Configurar el Task Force Arrowhead Radio (TFAR)
    [] execVM "src\tfar\scripts\cc_inicialitzar_tfar.sqf";
};

if (cc_mod_acre2) then {
    // Advanced Combat Radio Environment 2 (ACRE 2)
    [] execVM "src\acre2\scripts\cc_inicialitzar_acre2.sqf";
};

// Pantalla d'introducció.
cc_script_intro = [] execVM "configMissio\intro\scripts\cc_intro.sqf";

if (isServer) then {
    cc_script_zeus = [] execVM "src\zeus\scripts\cc_zeus_init.sqf"
};

#include "configMissio\cc_init.sqf"

//============================================ FI DEL FITXER ============================================//
