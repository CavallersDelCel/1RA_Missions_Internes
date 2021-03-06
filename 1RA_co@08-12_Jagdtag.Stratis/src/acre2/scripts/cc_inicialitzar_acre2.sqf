//=======================================================================================================//
// Arxiu: cc_inicialitzar_acre2.sqf                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/04/27                                                                      //
// Descripció: Aquest document serveix per configurar el Advanced Combat Radio Environment 2 (ACRE2)     //
//             http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                         //
// Canvis: 0.1 (2015/04/27) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

// Incloure el fitxer de configuració.
#include "..\..\..\configMissio\acre2\scripts\cc_acre2_configuracio.sqf"

// Configurar els presets per cada radio.
[] execVM "src\acre2\scripts\cc_acre2_configurarPresets.sqf";

// Si el script s'està executant en un servidor.
if (hasInterface) then {

    {
        _x call acre_api_fnc_babelAddLanguageType;
    } foreach cc_acre2_config_idomes;

    [] execVM "src\acre2\scripts\cc_acre2_initClient.sqf";
};

//============================================ FI DEL FITXER ============================================//
