//=======================================================================================================//
// Arxiu: cc_inicialitzar_acre2.sqf                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 27/04/2015                                                                      //
// Descripció: Aquest document serveix per configurar el Advanced Combat Radio Environment 2 (ACRE2)     //
//             http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                         //
//=======================================================================================================//

// Incloure el fitxer de configuració
#include "cc_acre2_configuracio.sqf"

// Si el script s'està executant en un servidor

if (hasInterface) then {
	[] execVM "scripts\radios\acre2\cc_acre2_initClient.sqf";
};

if(isDedicated) then {
	[] execVM "scripts\radios\tfar\cc_tfar_initServidor.sqf";
} else {
	[] execVM "scripts\radios\tfar\cc_tfar_initClient.sqf";
	
    // Si no s'utilitza un servidor dedicat però un jugador fa de host, s'ha d'executar també el script
	// de servidor
    if((!isDedicated) && (isServer)) then {
		[] execVM "scripts\radios\tfar\cc_tfar_initServidor.sqf";
	};
};

//============================================ FI DEL FITXER ============================================//