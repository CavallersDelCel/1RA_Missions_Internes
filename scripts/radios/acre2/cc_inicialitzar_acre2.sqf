//=======================================================================================================//
// Arxiu: cc_inicialitzar_acre2.sqf                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 27/04/2015                                                                      //
// Descripció: Aquest document serveix per configurar el Advanced Combat Radio Environment 2 (ACRE2)     //
//             http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                         //
//=======================================================================================================//

// Incloure el fitxer de configuració.
#include "cc_acre2_configuracio.sqf"

// Configurar els presets per cada radio.
[] execVM "scripts\radios\acre2\cc_acre2_confCanals.sqf";

// Si el script s'està executant en un servidor.
if (hasInterface) then {

    {
        _x call acre_api_fnc_babelAddLanguageType;
    } foreach cc_acre2_config_idomes;
    
    [] execVM "scripts\radios\acre2\cc_acre2_initClient.sqf";
};

//============================================ FI DEL FITXER ============================================//