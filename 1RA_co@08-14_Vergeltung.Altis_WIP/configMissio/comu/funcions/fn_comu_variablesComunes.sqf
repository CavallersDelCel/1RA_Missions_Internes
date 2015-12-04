//=======================================================================================================//
// Arxiu: fn_comu_variablesComunes.sqf                                                                   //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/04/01                                                                      //
// Descripció: Aquest document serveix per declarar variables comunes als scripts.                       //
// Canvis: 0.1 (2015/04/01) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

// Variables privades.
private ["_llargada_grups1RA", "_llargada_frequencies1RA", "_llargada_frequencies1RALR"];

// Llista d'unitats amb "Rifleman Radio" (fn_configEquipacio.sqf).
cc_var_llistaRadioSoldats = ["rfl", "rflat", "gr", "ar", "dm", "mg", "amg", "at", "aat", "aa", "aaa", "en", "exp", "div", "hplt", "jplt"];

// Llista d'unitats amb "Short Range Radio ""(fn_configEquipacio.sqf).
cc_var_llistaRadioOficials = ["pl", "psg", "rto", "fo", "me", "sl", "tl", "sn", "sp", "divsl", "divme"];

// Llista d'unitats amb "Long Range Radio" (fn_configEquipacio.sqf).
cc_var_llistaRadioRTO = ["rto", "fo","sl"];

//=======================================================================================================//
// Configuració de les ràdios: Les següents variables ajuden a tenir una configuració automàtica de les  //
// ràdios i les seves freqüències. Valid per Task Force Arrowhead Radio (TFAR) i Advanced Combat Radio   //
// Environment 2 (ACRE2).                                                                                //
//                                                                                                       //
// - cc_var_grups1RA: defineix l'estructura de grups que es fa servir al 1er Regiment Aerotransportat    //
//                    (1RA) de la Comunitat Catalana de Simulació, Cavallers del Cel. Si s'afegeixen     //
//                    grups i es vol mantenir la configuració de les ràdios cal modificar-la variable    //
//                    per tal de que les mides siguin les mateixes. A l'hora d'afegir grups és important //
//                    també que es mantingui l'estructura:                                               //
//                                                                                                       //
//                                  [ GrupX, SubgrupX1, SubgrupX2, ... , SubgrupXn]                      //
//                                                                                                       //
//                    La configuració de les ràdios es pot trobar a:                                     //
//                      - "scripts/radios/tfar/fn_tfar_configurarCanals.sqf" en el cas del TFAR.         //
//                      - "scripts/radios/tfar/cc_acre2_configurarPresets.sqf" i                         //
//                        "scripts/radios/acre2/fn_acre2_configurarCanals.sqf" en el cas de ACRE2.       //
//                                                                                                       //
// - cc_var_frequencies1RA: s'utilitza de forma conjunta amb "cc_var_grups1RA" per tal de configurar les //
//                          freqüències de les ràdios del TFAR i del ACRE2. Cal que les dimensions de    //
//                          les dues variables siguin les mateixes.                                      //
//=======================================================================================================//

cc_var_grups1RA = [
    ["Freiheit", "Freiheit 1", "Freiheit 2", "Freiheit 3"],
    ["Himmelsaugen", "Himmelsaugen 1", "Himmelsaugen 2", "Himmelsaugen 3"],
    ["Charlie", "Charlie 1", "Charlie 2", "Charlie  3"],
    ["Comandament"],
    ["Infanteria"],
    ["Blindats"],
    ["Aeronaus"]
];

cc_var_frequencies1RA = [
    [200, 201, 202, 203],
    [600, 601, 602, 603],
    [220, 221, 222, 223],
    [30],
    [40],
    [50],
    [60]
];

cc_var_frequencies1RALR = [
    [41],
    [61],
    [43],
    [40],
    [30],
    [50],
    [60]
];

// Comprova que les dues variables tinguin la mateixa llargada.
_llargada_grups1RA = count cc_var_grups1RA;
_llargada_frequencies1RA = count cc_var_frequencies1RA;
_llargada_frequencies1RALR = count cc_var_frequencies1RALR;

if (_llargada_grups1RA != _llargada_frequencies1RA) then {
    player sideChat format ["ERROR (cc_variables_comunes.sqf): Les varibles ""_llargada_grups1RA"" i ""_llargada_frequencies1RA"" no tenen la mateixa mida."];
} else {
    {
        if ( count _x != count (cc_var_frequencies1RA select _forEachIndex) ) then {
            player sideChat format ["ERROR (cc_variables_comunes.sqf): El subgrup %1 de les varibles ""_llargada_grups1RA"" i ""_llargada_frequencies1RA"" no té la mateixa mida.", _forEachIndex];
        };
    } forEach cc_var_grups1RA;
};

if (_llargada_grups1RA != _llargada_frequencies1RALR) then {
    player sideChat format ["ERROR (cc_variables_comunes.sqf): Les varibles ""_llargada_grups1RA"" i ""_llargada_frequencies1RALR"" no tenen la mateixa mida."];
};

//=======================================================================================================//
// Configuració dels punts de teleport: Les següents variables defineixen els punts de teleport que hi   //
// ha disponibles a la missió. Aquests punts de teleport es configuren, durant la fase de postInit,      //
// a la funció cc_fnc_misc_teleport_configurarPunts.                                                     //
//                                                                                                       //
// - cc_var_puntsTeleport_Inici: són els diferents objectes que permetran a la unitat teletransportar-se //
//                               a través d'una acció. Aquests objectes són els que rebran la acció de   //
//                               teleport.                                                               //
// - cc_var_puntsTeleport_Desti: conté els noms dels marcadors on es teletransportarà la unitat. Per     //
//                               cada entrada a la variable cc_var_puntsTeleport_Inici cal posar una     //
//                               array amb els diferents possibles destins.                              //
//                                                                                                       //
// Exemple: Una missió amb 3 possibles punts de teleport. Des de la base es pot accedir tan al HQ1 com   //
//          al HQ2, però tan des de HQ1 com HQ2 només es pot accedir a la base.                          //                                                                                              //
//    puntsInici = [teleportBase, teleportHQ1, teleportHQ2];                                             //
//    puntsDesti = [["marker_teleportHQ1", "marker_teleportHQ2"],                                        //
//                  ["marker_teleportBase"],                                                             //
//                  ["marker_teleportBase"]                                                              //
//                 ];                                                                                    //
//=======================================================================================================//

cc_var_puntsTeleport_Desti = [];
cc_var_puntsTeleport_Inici = [];

if (count cc_var_puntsTeleport_Desti != count cc_var_puntsTeleport_Inici) exitWith {
    player sideChat format ["ERROR (fn_misc_teleport_configurarPunts.sqf): Les varibles ""puntsTeleport_Desti"" i ""puntsTeleport_Inici"" no tenen la mateixa mida."];
};
//============================================ FI DEL FITXER ============================================//
