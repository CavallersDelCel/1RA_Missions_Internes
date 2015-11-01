//=======================================================================================================//
// Arxiu: cc_acre2_configuracio.sqf                                                                      //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 2015/04/27                                                                      //
// Descripció: Aquest document serveix per definir parmàmetres bàsics per la configuració del Advanced   //
//             Combat Radio Environment 2 (ACRE2)                                                        //
//             http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                         //
// Canvis: 0.1 (2015/04/27) Versió inicial.                                                              //
//=======================================================================================================//

//=======================================================================================================//
// Configuració de la missió.                                                                            //
//=======================================================================================================//

// ACRE2: funció per configurar la missió.
//        - BABEL:
//            * false: Deshabilitar els idiomes per bàndol.
//            * true: Habilitar els idiomes per bàndol.
//        - RADIOS:
//            * false: Els canals es configuren igual per bàndol.
//            * true: Els canals s'han de configurar de forma diferent per bàndol.
[true, true] call acre_api_fnc_setupMission;

// ACRE2: Permetre que la IA detecti els jugadors quan parlen.
//        - false: La IA no pot escoltar els jugadors.
//        - true: La IA pot escoltar els jugadors segons un model un model quadràtic invertit.
[true] call acre_api_fnc_setRevealToAI;

//=======================================================================================================//
// Configuració de les funcionalitats de BABEL.                                                          //
//=======================================================================================================//

cc_acre2_config_idomes = [["angles","Anglès"],["rus","Rus"],["persa","Persa"],["grec","Grec"]];

cc_acre2_config_idioma_rhsusaf = ["angles"];
cc_acre2_config_idioma_rhsafrf = ["rus"];
cc_acre2_config_idioma_blufor = ["angles"];
cc_acre2_config_idioma_opfor = ["persa"];
cc_acre2_config_idioma_indfor = ["grec"];
cc_acre2_config_idioma_fia = ["angles","grec"];
cc_acre2_config_idioma_civ = ["grec"];

//=======================================================================================================//
// Configuració de la dificultat.                                                                        //
//=======================================================================================================//

// ACRE2: Modelat de la pèrdua de senyal degut al terreny. Valor entre 0 i 1.
//        - 0: Pèrdua de senyal degut al terreny desactivada.
//        - 1: Pèrdua de senyal degut al terreny totalment simulada.
[1] call acre_api_fnc_setLossModelScale;

// ACRE2: Duplex
//        - false: No es rebran transmissions mentre s'utilitza la ràdio.
//        - true: Es rebran transmissions mentre es parla.
[false] call acre_api_fnc_setFullDuplex;

// ACRE2: Interferències entre jugadors.
//        - false: no es modelaran interferències per transmissions simultànies a la mateixa freqüència.
//        - true: interferències per transmissions simultànies a la mateixa freqüència.
[true] call acre_api_fnc_setInterference;

//=======================================================================================================//
// Configuració de l'assignació de ràdios en funció del rol.                                             //
//=======================================================================================================//

// Variable per controlar si es distribueixen ràdios a la partida. Pot ser útil en cas de missions
// de supervivència.
//   - false: no es distribueixen radios.
//   - true: es distribueixen radios.
cc_acre2_config_distribuirRadios = true;

// Variable per controlar si les freqüències s'han de dividir per bàndol.
//   - false: els bàndols comparteixen freqüències.
//   - true: les freqüències es divideixen per bàndols.
cc_acre2_config_dividirFrequencies = true;

// Variable per controlar si es distribueix la ràdio definida a la variable "cc_acre2_radioSoldats", per
// defecte una AN/PRC 343, a totes les unitats.
//    - false: només les unitats a la llista "cc_acre2_llistaRadioSoldats" rebran aquesta ràdio.
//    - true: totes les unitats rebran la ràdio definida a "cc_acre2_radioSoldats".
cc_acre2_config_tothomRadioSoldats = true;

// Variable per controlar si es configuren els canals de les ràdios per esquadra i equip. Les freqüències utilitzades
// són les que venen per defecte al fitxer "/scripts/comu/cc_variables_comunes.sqf".
//   - false: els canals es deixen sense configurar.
//   - true: els canals es configuren depenent de l'esquadra, de l'equip de foc i del tipus de ràdio.
cc_acre2_config_configurarCanalsPerEquip = true;

// Ràdio assignada als soldats.
cc_acre2_radioSoldats = "ACRE_PRC343";

// Ràdio assignada als oficials.
cc_acre2_radioOficials = "ACRE_PRC152";

// Ràdio extra.
cc_acre2_radioRTO = "ACRE_PRC117F";

// Noms dels canals a les ràdios AN/PRC 148, AN/PRC 152 i AN/PRC 117F.
cc_acre2_config_llistaCanals = ["ALFA","ALFA 1","ALFA 2","ALFA 3","COMANDAMENT","SUPORT","ARTILLERIA"];
cc_acre2_config_FreqCanals = [200, 201, 202, 203, 41, 51, 61];

// Llista d'unitats amb "Rifleman Radio" (fn_configEquipacio.sqf).
cc_acre2_llistaRadioSoldats = ["rfl", "rflat", "gr", "ar", "dm", "mg", "amg", "at", "aat", "aa", "aaa", "en", "exp", "div", "hplt", "jplt", "stcc"];

// Llista d'unitats amb "Short Range Radio ""(fn_configEquipacio.sqf).
cc_acre2_llistaRadioOficials = ["pl", "psg", "rto", "fo", "me", "sl", "tl", "sn", "sp", "divsl", "divme", "cinst", "inst","trnr"];

// Llista d'unitats amb "Long Range Radio" (fn_configEquipacio.sqf).
cc_acre2_llistaRadioRTO = ["rto", "fo", "sl"];

//============================================ FI DEL FITXER ============================================//
