//=======================================================================================================//
// Arxiu: cc_inicialitzar_tfar.sqf                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 2015/02/22                                                                      //
// Descripció: Aquest document serveix per configurar el Task Force  Arrowhead Radio (TFAR)              //
//             https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki                          //
// Canvis: 0.1 (2015/02/22) Versió inicial.                                                              //
//=======================================================================================================//

// Incloure el fitxer de configuració.
#include "cc_tfar_configuracio.sqf"

// Si el script s'està executant en un servidor.
if(isDedicated) then {
    [] execVM "scripts\radios\tfar\cc_tfar_initServidor.sqf";
} else {
    [] execVM "scripts\radios\tfar\cc_tfar_initClient.sqf";

    // Si no s'utilitza un servidor dedicat però un jugador fa de host, s'ha d'executar també el script
    // de servidor.
    if((!isDedicated) && (isServer)) then {
        [] execVM "scripts\radios\tfar\cc_tfar_initServidor.sqf";
    };
};

//============================================ FI DEL FITXER ============================================//
