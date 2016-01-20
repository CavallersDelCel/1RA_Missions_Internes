//=======================================================================================================//
// Arxiu: cc_inicialitzar_tfar.sqf                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/02/22                                                                      //
// Descripció: Aquest document serveix per configurar el Task Force  Arrowhead Radio (TFAR)              //
//             https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki                          //
// Canvis: 0.1 (2015/02/22) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

// Incloure el fitxer de configuració.
#include "..\..\..\configMissio\tfar\scripts\cc_tfar_configuracio.sqf"

// Si el script s'està executant en un servidor.
if(isDedicated) then {
    [] execVM "src\tfar\scripts\cc_tfar_initServidor.sqf";
} else {
    [] execVM "src\tfar\scripts\cc_tfar_initClient.sqf";

    // Si no s'utilitza un servidor dedicat però un jugador fa de host, s'ha d'executar també el script
    // de servidor.
    if((!isDedicated) && (isServer)) then {
        [] execVM "src\tfar\scripts\cc_tfar_initServidor.sqf";
    };
};

//============================================ FI DEL FITXER ============================================//
