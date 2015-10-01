//=======================================================================================================//
// Arxiu: cc_comprovar_configuracio.sqf                                                                  //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 2015/09/30                                                                      //
// Descripció: Aquest fitxer serveix per comprovar que la configuració dels paràmetres de la missió són  //
//             els que el creador de la missió ha especificat. Aquestes variables estan definides al     //
//             fitxer 'scripts/comu/cc_variables_comunes.sqf'.                                           //
// Canvis: 0.1 (2015/09/29) Versió inicial.                                                              //
//=======================================================================================================//


// Dynamic-AI-Creator (DAC).
if (cc_requereix_DAC != 2) then {
    if (cc_requereix_DAC != cc_param_utilitzarDAC) then {
        if (cc_param_utilitzarDAC == 1) then {
            player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): El DAC està activat però s'ha de desactivar per aquesta missió."];
        } else {
            player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): El DAC està està desactivat però s'ha d'activar per aquesta missió."];
        };
    };
};

if ((cc_param_utilitzarDAC == 0) and (cc_param_debugDAC == 1)) then {
    player sideChat format ["AVÍS (cc_comprovar_configuracio.sqf): El debug del DAC està activat però el DAC no ho està."];
};

// ASR AI 3.
if (cc_requereix_ASRAI != 2) then {
    if (cc_requereix_ASRAI != cc_param_utilitzarASRAI) then {
        if (cc_param_utilitzarASRAI == 1) then {
            player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): El mod ASR AI 3 es necessari per aquesta missió però no està carregat."];
        } else {
            player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): El ASR AI 3 està activat però s'ha de desactivar per aquesta missió."];
        };
    } else {
        if ((cc_param_utilitzarASRAI == 1) and !cc_mod_asrai) then {
            player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): El mod ASR AI 3 es necessari per aquesta missió però el fitxer asr_ai3_main.pbo no està carregat."];
        };
    };
} else {
    if ((cc_param_utilitzarASRAI == 1) and !cc_mod_asrai) then {
        player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): El mod ASR AI 3 s'utilitza en aquesta missió però el fitxer asr_ai3_main.pbo no està carregat."];
    };

    if ((cc_param_utilitzarASRAI == 0) and cc_mod_asrai) then {
        player sideChat format ["AVÍS (cc_comprovar_configuracio.sqf): El mod ASR AI 3 no s'utilitza en aquesta missió però el fitxer asr_ai3_main.pbo està carregat."];
    };
};

// Advanced Combat Environment 3 (ACE3)
if (cc_requereix_ACE3 != 2) then {
    if (cc_mod_ace3 and (cc_requereix_ACE3 == 0)) then {
        player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): El ACE3 està carregat però aquesta missió no el suporta."];
    };

    if (!cc_mod_ace3 and (cc_requereix_ACE3 == 1)) then {
        player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): El ACE3 és necessari per aquesta missió però no està carregat."];
    };
};

if ((cc_requereix_ACE3_BasMed == 0) and (cc_requereix_ACE3_AdvMed == 0) and cc_mod_ace3medical) then {
    player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): Tot i tenir desactivats el sistemes mèdics de ACE3 el fitxer ace_medical.pbo està carregat."];
};

// Advanced Combat Environment 3 (ACE3): Sistema mèdic bàsic.
if (cc_requereix_ACE3_BasMed != 2) then {
    if (cc_mod_ace3medical) then {
        if ((cc_requereix_ACE3_BasMed == 1) and (cc_param_sistemaMedic != 1)) then {
            player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): El sistema mèdic bàsic de ACE3 està desactivat però s'ha d'activar per aquesta missió."];
        };

        if ((cc_requereix_ACE3_BasMed == 0) and (cc_param_sistemaMedic == 1)) then {
            player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): El sistema mèdic avançat de ACE3 està activat però s'ha de desactivar per aquesta missió."];
        };
    } else {
        player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): Es requereix el sistema mèdic bàsic de ACE3 però el fitxer ace_medical.pbo no està carregat."];
    };
} else {
    if ((cc_param_sistemaMedic == 1) and !cc_mod_ace3medical) then {
        player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): El sistema mèdic bàsic de ACE3 està activat però el fitxer ace_medical.pbo no està carregat."];
    };

    if ((cc_param_sistemaMedic != 1) and cc_mod_ace3medical) then {
        player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): El sistema mèdic bàsic de ACE3 està desactivat però el fitxer ace_medical.pbo està carregat."];
    };
};

// Advanced Combat Environment 3 (ACE3): Sistema mèdic avançat.
if (cc_requereix_ACE3_AdvMed != 2) then {
    if (cc_mod_ace3medical) then {
        if ((cc_requereix_ACE3_AdvMed == 1) and (cc_param_sistemaMedic != 2)) then {
            player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): El sistema mèdic avançat de ACE3 està desactivat però s'ha d'activar per aquesta missió."];
        };

        if ((cc_requereix_ACE3_AdvMed == 0) and (cc_param_sistemaMedic == 2)) then {
            player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): El sistema mèdic avançat de ACE3 està activat però s'ha de desactivar per aquesta missió."];
        };
    } else {
        player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): Es requereix el sistema mèdic avançat de ACE3 però el fitxer ace_medical.pbo no està carregat."];
    };
} else {
    if ((cc_param_sistemaMedic == 2) and !cc_mod_ace3medical) then {
        player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): El sistema mèdic avançat de ACE3 està activat però el fitxer ace_medical.pbo no està carregat."];
    };

    if ((cc_param_sistemaMedic != 2) and cc_mod_ace3medical) then {
        player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): El sistema mèdic avançat de ACE3 està desactivat però el fitxer ace_medical.pbo està carregat."];
    };
};

// Advanced Combat Environment 3 (ACE3): Balística avançada.
if (cc_requereix_ACE3_AdvBal != 2) then {
    if (cc_mod_ace3advbal) then {
        if (cc_requereix_ACE3_AdvBal != cc_param_ace3Balistica) then {
            if (cc_param_ace3Balistica == 1) then {
                player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): La balísica avançada de ACE3 està activada però s'ha de desactivar per aquesta missió."];
            } else {
                player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): La balísica avançada de ACE3 està desactivada però s'ha d'activar per aquesta missió."];
            };
        };
    } else {
        player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): Es requereix la balística avançada de ACE3 però el fitxer ace_advanced_ballistics.pbo no està carregat."];
    };
} else {
    if ((cc_param_ace3Balistica == 1) and !cc_mod_ace3advbal) then {
        player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): La balística avançada de ACE3 està activada però el fitxer ace_advanced_ballistics.pbo no està carregat."];
    };

    if ((cc_param_ace3Balistica == 0) and cc_mod_ace3medical) then {
        player sideChat format ["AVÍS (cc_comprovar_configuracio.sqf): La balística avançada de ACE3 està desactivada però el fitxer ace_advanced_ballistics.pbo està carregat."];
    };
};

// Perfils de Virtual Arsenal del grup 1RA.
if (cc_requereix_perfils1RA != 2) then {
    if (cc_requereix_perfils1RA != cc_param_utilitzarPerfils) then {
        if (cc_param_utilitzarPerfils == 1) then {
            player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): Els perfils del grup 1RA estan seleccionats però no s'han d'utilitzar en aquesta missió."];
        } else {
            player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): Els perfils del grup 1RA no estan seleccionats però s'han d'utilitzar en aquesta missió."];
        };
    };
};

// Task Force Arrowhead Radio (TFAR)
if (cc_requereix_TFAR != 2) then {
    if (cc_mod_tfar and (cc_requereix_TFAR == 0)) then {
        player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): El TFAR està carregat però aquesta missió no el suporta."];
    };

    if (!cc_mod_tfar and (cc_requereix_TFAR == 1)) then {
        player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): El TFAR és necessari per aquesta missió però no està carregat."];
    };
};

// Advanced Combat Radio Environment 2 (ACRE2)
if (cc_requereix_ACRE2 != 2) then {
    if (cc_mod_acre2 and (cc_requereix_ACRE2 == 0)) then {
        player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): El ACRE2 està carregat però aquesta missió no el suporta."];
    };

    if (!cc_mod_acre2 and (cc_requereix_ACRE2 == 1)) then {
        player sideChat format ["ERROR (cc_comprovar_configuracio.sqf): El ACRE2 és necessari per aquesta missió però no està carregat."];
    };
};
