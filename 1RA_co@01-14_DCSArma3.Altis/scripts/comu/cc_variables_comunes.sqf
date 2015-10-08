//=======================================================================================================//
// Arxiu: cc_variables_comunes.sqf                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.3                                                                                           //
// Creació del Document: 2015/04/01                                                                      //
// Descripció: Aquest document serveix per declarar variables comunes als scripts.                       //
//=======================================================================================================//

// Variables privades.
private ["_llargada_grups1RA", "_llargada_frequencies1RA", "_llargada_frequencies1RALR"];

//=======================================================================================================//
// Configuració dels mods i scripts necessaris per la missió. Cada una de les següents variables pot     //
// tenir els següents valors:                                                                            //
//   - 0: El mod o script ha d'estar desactivat.                                                         //
//   - 1: El mod o script ha d'estar activat.                                                            //
//   - 2: No importa si el mod o script està activat o desactivat per la missió.                         //
//=======================================================================================================//
cc_requereix_DAC         = 1;  // Variable per controlar l'ús del Dynamic-AI-Creator (DAC).
cc_requereix_ASRAI       = 2;  // Variable per controlar l'ús del ASR AI 3.
cc_requereix_ACE3        = 2;  // Variable per controlar l'ús del Advanced Combat Environment 3.
cc_requereix_ACE3_BasMed = 2;  // Variable per controlar l'ús del sistema mèdic bàsic de ACE 3.
cc_requereix_ACE3_AdvMed = 2;  // Variable per controlar l'ús del sistema mèdic avançat de ACE 3.
cc_requereix_ACE3_AdvBal = 2;  // Variable per controlar l'ús del sistema de balística avançada de ACE 3.
cc_requereix_perfils1RA  = 2;  // Variable per controlar l'ús dels perfils de Virtual Arsenal del grup 1RA.
cc_requereix_TFAR        = 2;  // Variable per controlar l'ús del Task Force Arrowhead Radio.
cc_requereix_ACRE2       = 2;  // Variable per controlar l'ús del Advanced Combat Radio Environment 2.

// Comprova que el sistema mèdic bàsic i avançat no estan actius al mateix temps.
if ((cc_requereix_ACE3_BasMed == 1) and (cc_requereix_ACE3_AdvMed == 1)) then {
    player sideChat format ["ERROR (cc_variables_comunes.sqf): Tan el sistema mèdic bàsic com l'avançat de ACE3 estan marcats com a necessaris."];
};

// Assegurar-se de que ACE3 està configurat com a requeriment si s'utilitza el sistema mèdic bàsic.
if ((cc_requereix_ACE3_BasMed == 1) and (cc_requereix_ACE3 != 1)) then {
    player sideChat format ["AVÍS (cc_variables_comunes.sqf): ACE3 no està marcat com a necessàri però el sistema mèdic bàsic el necessita. Marcant ACE3 com a necessari."];
    cc_requereix_ACE3 = 1;
};

// Assegurar-se de que ACE3 està configurat com a requeriment si s'utilitza el sistema mèdic avançat.
if ((cc_requereix_ACE3_AdvMed == 1) and (cc_requereix_ACE3 != 1)) then {
    player sideChat format ["AVÍS (cc_variables_comunes.sqf): ACE3 no està marcat com a necessàri però el sistema mèdic avançat el necessita. Marcant ACE3 com a necessari."];
    cc_requereix_ACE3 = 1;
};

// Assegurar-se de que ACE3 està configurat com a requeriment si s'utilitza el mòdul de balística avançada.
if ((cc_requereix_ACE3_AdvBal == 1) and (cc_requereix_ACE3 != 1)) then {
    player sideChat format ["AVÍS (cc_variables_comunes.sqf): ACE3 no està marcat com a necessàri però el mòdul de balística avançada el necessita. Marcant ACE3 com a necessari."];
    cc_requereix_ACE3 = 1;
};

// Comprova que el TFAR i ACRE2 no estiguin marcats com a requisits simultàniament.
if ((cc_requereix_TFAR == 1) and (cc_requereix_ACRE2 == 1)) then {
    player sideChat format ["ERROR (cc_variables_comunes.sqf): Tan el TFAR com el ACRE2 estan marcats com a necessaris."];
};

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
    ["Alfa", "Alfa 1", "Alfa 2", "Alfa 3"],
    ["Bravo", "Bravo 1", "Bravo 2", "Bravo 3"],
    ["Charlie", "Charlie 1", "Charlie 2", "Charlie  3"],
    ["Comandament"],
    ["Infanteria"],
    ["Blindats"],
    ["Aeronaus"],
    ["Artilleria"]
];

cc_var_frequencies1RA = [
    [200, 201, 202, 203],
    [210, 211, 212, 213],
    [220, 221, 222, 223],
    [30],
    [40],
    [50],
    [60],
    [70]
];

cc_var_frequencies1RALR = [
    [41],
    [42],
    [43],
    [40],
    [30],
    [50],
    [60],
    [70]
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
//============================================ FI DEL FITXER ============================================//
