//=======================================================================================================//
// Arxiu: cc_variables_comunes.sqf                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 01/04/2015                                                                      //
// Descripció: Aquest document serveix per declarar variables comunes als scripts.                       //
//=======================================================================================================//

// Aquesta variable defineix l'estructura de grups que es fa servir al 1er Regiment Aerotransportat (1RA)
// de la Comunitat Catalana de Simulació, Cavallers del Cel. Si s'afegeixen grups i es vol mantenir la
// configuració de les ràdios cal modificar la variable "cc_var_frequencies1RA" per tal de que les mides
// siguin les mateixes. A l'hora d'afegir grups és important també que es mantingui l'estructura:
//
//                       [ GrupX, SubgrupX1, SubgrupX2, ... , SubgrupXn]
//
// La configuració de les ràdios es pot trobar a "scripts/radios/tfar/fn_tfar_configurarCanals.sqf" (TFAR) i
// "scripts/radios/tfar/cc_acre2_configurarPresets.sqf" i "scripts/radios/acre2/fn_acre2_configurarCanals.sqf"
// en el cas de ACRE 2.
cc_var_grups1RA = [
    ["Alfa", "Alfa 1", "Alfa 2", "Alfa 3"],
    ["Bravo", "Bravo 1", "Bravo 2", "Bravo 3"],
    ["Charlie", "Charlie 1", "Charlie 2", "Charlie  3"],
    ["Comandament"],
    ["Suport"],
    ["Artilleria"]
];

// Aquesta variable, si s'utilitza de forma conjunta amb "cc_var_grups1RA" permet configurar les freqüències
// de les ràdios del Task Force Arrowhead Radio (TFAR) i del Advanced Combat Radio Environment 2 (ACRE2). Cal
// que les dimensions de les dues variables siguin les mateixes.
cc_var_frequencies1RA = [
    [200, 201, 202, 203],
    [210, 211, 212, 213],
    [220, 221, 222, 223],
    [41],
    [51],
    [61]
];
//============================================ FI DEL FITXER ============================================//