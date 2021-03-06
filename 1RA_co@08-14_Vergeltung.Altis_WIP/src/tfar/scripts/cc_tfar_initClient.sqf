//=======================================================================================================//
// Arxiu: cc_tfar_initClient.sqf                                                                         //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/03/06                                                                      //
// Descripció: Aquest document serveix per configurar les radios del Task Force Arrowhead Radio (TFAR)   //
//             (https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki) en el client.          //
// Canvis: 0.1 (2015/03/06) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

// Donar temps a TFAR per inicialitzar-se.
sleep 3;

// Configurar el TFAR. Si el jugador està viu, les ràdios que venen per defecte es treuran i s'assinaran
// les radios que es desitgin utilitzant depenent del rol tal i com s'ha especificat al fitxer
// "cc_tfar_configuracio.sqf". El xat d'espectador es configurarà depenent de si el jugador està viu o no.

// Si el jugador està viu, procedir.
if(alive player) then {
    // Treure totes les ràdios de l'inventari.
    [] call cc_fnc_tfar_treureRadios;

    // Esperar fins que l'equipació estigui assignada.
    waitUntil{(player getVariable ["cc_var_configEquipacio_Llesta", false])};

    // Afegir les ràdios a cada unitat.
    [] call cc_fnc_tfar_afegirRadios;

    sleep 10;
    if (cc_tfar_config_configurarFreqPerEquip) then {
        // Configurar els canals.
        [] call cc_fnc_tfar_configurarCanals;
    };

    if (cc_tfar_config_configurarEstereo) then {
        [] call cc_fnc_tfar_configurarEstereo;
    };

    //Configurar el xat d'espectador.
    [] call cc_fnc_tfar_configurarXatEspectador;

    // DEBUG OUTPUT
    if (cc_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (fn_tfar_initClient.sqf): Radios configurades."];
    };
} else {
    // El jugador no està viu i per tant no cal configurar les ràdios.
    [] call cc_fnc_tfar_configurarXatEspectador;
};

//============================================ FI DEL FITXER ============================================//
