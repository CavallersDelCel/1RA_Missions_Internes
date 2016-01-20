//=======================================================================================================//
// Arxiu: fn__comu_processarMods.sqf                                                                     //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/06/09                                                                      //
// Descripció: Aquest document serveix per processar els mods que s'han carregat i configurar la partida //
//             de forma adequada. Els mods es pordran més endavant customitzar a init.sqf                //
// Canvis: 0.1 (2015/06/09) Versió inicial                                                               //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

cc_mod_acre2 = isClass (configFile >> "CfgPatches" >> "acre_main");         // Comprovar si ACRE 2 està carregat.
cc_mod_tfar = isClass (configFile >> "CfgPatches" >> "task_force_radio");   // Comprovar si TFAR està carregat.

cc_mod_ace3 = isClass (configFile >> "CfgPatches" >> "ace_common");         // Comprovar si ACE 3 està carregat.
cc_mod_ace3medical = isClass (configFile >> "CfgPatches" >> "ace_medical"); // Comprovar si ACE 3 (sistema mèdic) està carregat.
cc_mod_ace3advbal = isClass (configFile >> "CfgPatches" >> "ace_advanced_ballistics"); // Comprovar si ACE 3 (balística avançada) està carregat.

cc_mod_agm = isClass (configFile >> "CfgPatches" >> "agm_core");            // Comprovar si AGM està carregat.

cc_mod_dac = isClass (configFile >> "CfgPatches" >> "dac_source");          // Comprovar si el DAC està carregat.
cc_mod_asrai3 = isClass (configFile >> "CfgPatches" >> "asr_ai3_main");     // Comprovar si ASR AI està carregat.

if (isServer) then {
    publicVariable "cc_mod_acre2";
    publicVariable "cc_mod_tfar";
    publicVariable "cc_mod_ace3";
    publicVariable "cc_mod_ace3medical";
    publicVariable "cc_mod_ace3advbal";
    publicVariable "cc_mod_agm";
    publicVariable "cc_mod_dac";
    publicVariable "cc_mod_asrai";
};

//============================================ FI DEL FITXER ============================================//
