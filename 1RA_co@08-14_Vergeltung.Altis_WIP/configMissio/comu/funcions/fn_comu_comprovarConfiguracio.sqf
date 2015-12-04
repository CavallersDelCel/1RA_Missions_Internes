//=======================================================================================================//
// Arxiu: fn_comu_comprovarConfiguracio.sqf                                                              //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/09/29                                                                      //
// Descripció: Aquest fitxer serveix per comprovar que la configuració dels paràmetres de la missió són  //
//             els que el creador de la missió ha especificat.                                           //
// Canvis: 0.1 (2015/09/29) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

//=======================================================================================================//
// Configuració dels mods i scripts necessaris per la missió. Cada una de les següents variables pot     //
// tenir els següents valors:                                                                            //
//   - 0: El mod o script ha d'estar desactivat.                                                         //
//   - 1: El mod o script ha d'estar activat.                                                            //
//   - 2: No importa si el mod o script està activat o desactivat per la missió.                         //
//=======================================================================================================//

cc_comu_requereix_ACE3        = 2;  // Variable per controlar l'ús del Advanced Combat Environment 3.
cc_comu_requereix_ACE3_BasMed = 2;  // Variable per controlar l'ús del sistema mèdic bàsic de ACE 3.
cc_comu_requereix_ACE3_AdvMed = 2;  // Variable per controlar l'ús del sistema mèdic avançat de ACE 3.
cc_comu_requereix_ACE3_AdvBal = 2;  // Variable per controlar l'ús del sistema de balística avançada de ACE 3.
cc_comu_requereix_ACRE2       = 2;  // Variable per controlar l'ús del Advanced Combat Radio Environment 2.
cc_comu_requereix_asrai3      = 2;  // Variable per controlar l'ús del ASR AI 3.
cc_comu_requereix_dac         = 1;  // Variable per controlar l'ús del Dynamic-AI-Creator (DAC).
cc_comu_requereix_perfils1RA  = 2;  // Variable per controlar l'ús dels perfils de Virtual Arsenal del grup 1RA.
cc_comu_requereix_TFAR        = 2;  // Variable per controlar l'ús del Task Force Arrowhead Radio.


// Comprova que el TFAR i ACRE2 no estiguin marcats com a requisits simultàniament.
if ((cc_comu_requereix_TFAR == 1) and (cc_comu_requereix_ACRE2 == 1)) then {
    player sideChat format ["ERROR (cc_comu_comprovarConfiguracio.sqf): Tan el TFAR com el ACRE2 estan marcats com a necessaris."];
};

// Advanced Combat Environment 3 (ACE 3).
if (isClass(missionconfigfile>>"CfgComponents">>"ace3")) then {
    if (!cc_mod_ace3) then {
        player sideChat format ["ERROR: L'addon de ACE 3 està carregat però no és necessari per aquesta missió."];
    } else {
        #include "includes\cc_comu_comprovarConfiguracio_ace3.sqf"
    };
} else {
    if (cc_mod_ace3) then {
        player sideChat format ["ERROR: L'addon de ACE 3 no està carregat però és necessari per aquesta missió."];
    };
};

// Advanced Combat Radio Environment 2 (ACRE2)
if (isClass(missionconfigfile>>"CfgComponents">>"acre2")) then {
    if (!cc_mod_acre2) then {
        player sideChat format ["ERROR: L'addon de ACRE2 està carregat però no és necessari per aquesta missió."];
    } else {
        #include "includes\cc_comu_comprovarConfiguracio_acre2.sqf"
    };
} else {
    if (cc_mod_acre2) then {
        player sideChat format ["ERROR: L'addon de ACRE2 no està carregat però és necessari per aquesta missió."];
    };
};

// ASR AI 3.
if (isClass(missionconfigfile>>"CfgComponents">>"asrai3")) then {
    if (!cc_mod_asrai3) then {
        player sideChat format ["ERROR: L'addon de ASR AI 3 està carregat però no és necessari per aquesta missió."];
    } else {
        #include "includes\cc_comu_comprovarConfiguracio_asrai3.sqf"
    };
} else {
    if (cc_mod_asrai3) then {
        player sideChat format ["ERROR: L'addon de ASR AI 3 no està carregat però és necessari per aquesta missió."];
    };
};

// Dynamic-AI-Creator (DAC).
if (isClass(missionconfigfile>>"CfgComponents">>"dac")) then {
    if (cc_comu_requereix_dac == 0) then {
        player sideChat format ["ERROR: L'addon del DAC està carregat però no és necessari per aquesta missió."];
    } else {
        #include "includes\cc_comu_comprovarConfiguracio_dac.sqf"
    };
} else {
    if (cc_comu_requereix_dac == 1) then {
        player sideChat format ["ERROR: L'addon del DAC no està carregat però és necessari per aquesta missió."];
    };
};

// Perfils de Virtual Arsenal del grup 1RA.
if (cc_comu_requereix_perfils1RA != 2) then {
    if (cc_comu_requereix_perfils1RA != cc_param_utilitzarPerfils) then {
        if (cc_param_utilitzarPerfils == 1) then {
            player sideChat format ["ERROR: Els perfils del grup 1RA estan seleccionats però no s'han d'utilitzar en aquesta missió."];
        } else {
            player sideChat format ["ERROR: Els perfils del grup 1RA no estan seleccionats però s'han d'utilitzar en aquesta missió."];
        };
    };
};

// Task Force Arrowhead Radio (TFAR)
if (isClass(missionconfigfile>>"CfgComponents">>"tfar")) then {
    if (!cc_mod_tfar) then {
        player sideChat format ["ERROR: L'addon del TFAR està carregat però no és necessari per aquesta missió."];
    } else {
        #include "includes\cc_comu_comprovarConfiguracio_tfar.sqf"
    };
} else {
    if (cc_mod_tfar) then {
        player sideChat format ["ERROR: L'addon del TFAR no està carregat però és necessari per aquesta missió."];
    };
};

//============================================ FI DEL FITXER ============================================//
