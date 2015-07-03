//=======================================================================================================//
// Arxiu: init.sqf                                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.4                                                                                           //
// Creació del Document: 2015/02/22                                                                      //
// Descripció: Fitxer init.sqf. Aquest fitxer inclou aquelles funcions que en MP s'executen al final de  //
//             la cadena d'inicialització. Serveix per configurar mòduls, briefings, radios, etc.        //
// Canvis: 0.1 (2015/02/22) Versió inicial.                                                              //
//         0.2 (2015/05/26) Afegit el suport per ACE 3.                                                  //
//         0.3 (2015/06/10) Afegida la opció de carregar els perfils en cas de que es decideixi          //
//                          utilitzar-los als paràmetres de la missió.                                   //
//         0.4 (2015/06/12) Canvis deguts a les noves faccions a la versió 0.3.8 de RHS.                 //
//=======================================================================================================//

//=======================================================================================================//
// Desactivar guardar i guardar automàticament: https://community.bistudio.com/wiki/enableSaving         //
//=======================================================================================================//
enableSaving [false, false];

//=======================================================================================================//
// Desactivar les ordres per radio o informes: https://community.bistudio.com/wiki/enableSentences       //
//=======================================================================================================//
enableSentences false;

// Execució del script per generar els Briefings
cc_script_briefing = [] execVM "briefing.sqf";

onPreloadFinished {
    endLoadingScreen; 
    cc_preload_completat = true; 
};

if (cc_param_utilitzarPerfils == 1 && !isDedicated) then {
	cc_script_perfils = [] execVM "scripts\configEquipacio\cc_equipacio_rhs_usarmy_d_perfils.sqf";
};

// Pantalla d'introducció
cc_script_intro = [] execVM "scripts\intro\cc_intro.sqf";

// Inicialitzar el sistema de radios
cc_script_radio = [] execVM "scripts\radios\cc_inicialitzar_radios.sqf";

if ( isServer ) then {
	cc_script_zeus = [] execVM "scripts\zeus\cc_zeus_init.sqf"
};

//============================================ FI DEL FITXER ============================================//
