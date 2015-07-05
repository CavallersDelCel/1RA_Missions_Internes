//=======================================================================================================//
// Arxiu: fn_processarMods.sqf                                                                           //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 2015/06/09                                                                      //
// Descripció: Aquest document serveix per processar els mods que s'han carregat i configurar la partida //
//             de forma adequada. Els mods es pordran més endavant customitzar a init.sqf                //
// Canvis: 0.1 (2015/06/09) Versió inicial                                                               //
//=======================================================================================================//

cc_mod_acre2 = isClass (configFile >> "CfgPatches" >> "acre_main");        // Comprovar si ACRE 2 està carregat.
cc_mod_tfar = isClass (configFile >> "CfgPatches" >> "task_force_radio");  // Comprovar si TFAR està carregat.
cc_mod_ace3 = isClass (configFile >> "CfgPatches" >> "ace_common");        // Comprovar si ACE 3 està carregat.
cc_mod_agm = isClass (configFile >> "CfgPatches" >> "agm_core");           // Comprovar si AGM està carregat.

if ( isServer ) then {
    publicVariable "cc_mod_acre2";
    publicVariable "cc_mod_tfar";
    publicVariable "cc_mod_ace3";
    publicVariable "cc_mod_agm";
};
    
//============================================ FI DEL FITXER ============================================//