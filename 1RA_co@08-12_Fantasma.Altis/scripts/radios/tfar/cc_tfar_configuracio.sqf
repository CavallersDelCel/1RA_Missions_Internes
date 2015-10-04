//=======================================================================================================//
// Arxiu: cc_tfar_configuracio.sqf                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 2015/03/09                                                                      //
// Descripció: Aquest document serveix per definir parmàmetres bàsics per la configuració del Task Force //
//             Arrowhead Radio (TFAR) https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki   //
// Canvis: 0.1 (2015/03/09) Versió inicial.                                                              //
//=======================================================================================================//

// Deshabilita la distribució automàtica de radios de llarg abast als líders de grup.
tf_no_auto_long_range_radio = true;

// Generar configuracions idèntiques per les ràdios de curt abast per tota la facció.
tf_same_sw_frequencies_for_side = true;

// Generar configuracions idèntiques per les ràdios de llarg abast per tota la facció.
tf_same_lr_frequencies_for_side = true;

// Assignar rellotge (false) o microDAGR (true) per la radio Rifleman.
tf_give_microdagr_to_soldier = true;

// Variable per saber quines radios s'han d'equipar. Si les que venen per defecte amb el TFAR o
// si es volen customitzar.
//   - false: customitzar les radios (Editar el fitxer: fn_tfar_afegirRadios.sqf).
//   - true: les radios per defecte del TFAR seran assignades.
cc_tfar_config_utilitzarRadiosPerDefecte = false;

// Variable per controlar si es distribueixen radios a la partida. Pot ser útil en cas de missions
// de supervivència.
//   - false: no es distribueixen radios.
//   - true: es distribueixen radios.
cc_tfar_config_distribuirRadios = true;

// Variable per controlar si es configuren les freqüències de les ràdios per esquadra i equip o es deixen
// a les que venen per defecte al fitxer fn_tfar_configurarFreqRadios.sqf.
//   - false: s'utilitzen les freqüències especificades a fn_tfar_configurarFreqRadios.sqf.
//   - true: s'utilitzen les freqüències per esquadra i equip tal i com es descriu a "/scripts/comu/cc_variables_comunes.sqf".
cc_tfar_config_configurarFreqPerEquip = true;

// Variable per configurar el estèreo de les ràdios.
//   - false: no es configura el estèreo.
//   - true: el estèreo es configura en cas de tenir una ràdio que ho suporti.
cc_tfar_config_configurarEstereo = true;

// Llista d'unitats amb Rifleman Radio (fn_configEquipacio.sqf).
cc_tfar_llistaRF = ["rfl", "rflat", "gr", "ar", "dm", "mg", "amg", "at", "aat", "aa", "aaa", "en", "exp", "divme", "div"];

// Llista d'unitats amb Short Range Radio (fn_configEquipacio.sqf).
cc_tfar_llistaSR = ["pl", "psg", "rto", "fo", "me", "sl", "tl", "sn", "sp", "divsl"];

// Llista d'unitats amb Long Range Radio (fn_configEquipacio.sqf).
cc_tfar_llistaLR = ["rto", "fo"];

//============================================ FI DEL FITXER ============================================//
