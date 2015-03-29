//=======================================================================================================//
// Arxiu: inicialitzar_tfar.sqf                                                                          //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 22/02/2015                                                                      //
// Descripció: Aquest document serveix per inicialitzar els paràmetres per les radios al Task Force      //
//             Arrowhead Radio (TFAR) https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki   //
//=======================================================================================================//

// Incloure el fitxer de configuració
#include "tfar_configuracio.sqf"

// Si el script s'està executant en un servidor
if(isDedicated) then {
	[] execVM "scripts\radios\tfar\tfar_initServidor.sqf";
} else {
	[] execVM "scripts\radios\tfar\tfar_initClient.sqf";
	
    // Si no s'utilitza un servidor dedicat però un jugador fa de host, s'ha d'executar també el script
	// de servidor
    if((!isDedicated) && (isServer)) then {
		[] execVM "scripts\radios\tfar\tfar_initServidor.sqf";
	};
};

//============================================ FI DEL FITXER ============================================//