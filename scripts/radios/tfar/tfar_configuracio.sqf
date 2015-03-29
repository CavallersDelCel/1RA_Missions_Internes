//=======================================================================================================//
// Arxiu: tfar_configuracio.sqf                                                                          //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 09/03/2015                                                                      //
// Descripció: Aquest document serveix per definir parmàmetres bàsics per la configuració del Task Force //
//             Arrowhead Radio (TFAR) https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki   //
//=======================================================================================================//

// Deshabilita la distribució automàtica de radios de llarg abast als líders de grup
tf_no_auto_long_range_radio = true;

// Generar configuracions idèntiques per les ràdios de curt abast per tota la facció
tf_same_sw_frequencies_for_side = true;

// Generar configuracions idèntiques per les ràdios de llarg abast per tota la facció
tf_same_lr_frequencies_for_side = true;

// Variable per saber quines radios s'han d'equipar. Si les que venen per defecte amb el TFAR o
// si es volen customitzar.
//   - false: customitzar les radios (Editar el fitxer: fn_tfar_afegirRadios.sqf)
//   - true: les radios per defecte del TFAR seran assignades.
cc_tfar_config_utilitzarRadiosPerDefecte = false;

// Variablee per controlar si es distribueixen radios a la partida. Pot ser útil en cas de missions
// de supervivència.
//   - false: no es distribueixen radios
//   - true: es distribueixen radios
cc_tfar_config_distribuirRadios = true;

// Assignar el canal per defecte i l'alternatiu
cc_tfar_config_assignarCanals = true;

// Llista d'unitats amb Rifleman Radio (fn_configEquipacio.sqf)
cc_tfar_llistaRF = ["FUM4A1OCP", "GRM4A1OCP", "FAM249OCP", "ME240BOCP", "ATM4A1OCP", "TISR25OCP", "EXM4A1OCP"];

// Llista d'unitats amb Short Range Radio (fn_configEquipacio.sqf)
cc_tfar_llistaSR = ["LSM4A1OCP", "LEM4A1OCP", "MGM4A1OCP", "FM2010OCP"];

// Llista d'unitats amb Long Range Radio (fn_configEquipacio.sqf)
cc_tfar_llistaLR = ["LSM4A1OCP", "LEM4A1OCP"];

//============================================ FI DEL FITXER ============================================//