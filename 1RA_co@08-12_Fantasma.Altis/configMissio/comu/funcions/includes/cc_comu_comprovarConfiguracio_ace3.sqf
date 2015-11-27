//=======================================================================================================//
// Arxiu: cc_comu_comprovarConfiguracio_ace3.sqf                                                         //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/11/26                                                                      //
// Descripció: Aquest fitxer serveix per comprovar que els paràmetres de la missió són els que el        //
//             creador de la missió ha especificat. Aquest fitxer comprova només aquells paràmetres que  //
//             estan relacionats amb el Advanced Combat Environent 3 (ACE3).                             //
// Canvis: 1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

// Comprova que el sistema mèdic bàsic i avançat no estan actius al mateix temps.
if ((cc_comu_requereix_ACE3_BasMed == 1) and (cc_comu_requereix_ACE3_AdvMed == 1)) then {
    player sideChat format ["ERROR (cc_comprovarConfiguracio_ace3.sqf): Tan el sistema mèdic bàsic com l'avançat de ACE3 estan marcats com a necessaris."];
};

// Assegurar-se de que ACE3 està configurat com a requeriment si s'utilitza el sistema mèdic bàsic.
if ((cc_comu_requereix_ACE3_BasMed == 1) and (cc_comu_requereix_ACE3 != 1)) then {
    player sideChat format ["AVÍS (cc_comprovarConfiguracio_ace3.sqf): ACE3 no està marcat com a necessàri però el sistema mèdic bàsic el necessita. Marcant ACE3 com a necessari."];
    cc_comu_requereix_ACE3 = 1;
};

// Assegurar-se de que ACE3 està configurat com a requeriment si s'utilitza el sistema mèdic avançat.
if ((cc_comu_requereix_ACE3_AdvMed == 1) and (cc_comu_requereix_ACE3 != 1)) then {
    player sideChat format ["AVÍS (cc_comprovarConfiguracio_ace3.sqf): ACE3 no està marcat com a necessàri però el sistema mèdic avançat el necessita. Marcant ACE3 com a necessari."];
    cc_comu_requereix_ACE3 = 1;
};

// Assegurar-se de que ACE3 està configurat com a requeriment si s'utilitza el mòdul de balística avançada.
if ((cc_comu_requereix_ACE3_AdvBal == 1) and (cc_comu_requereix_ACE3 != 1)) then {
    player sideChat format ["AVÍS (cc_comprovarConfiguracio_ace3.sqf): ACE3 no està marcat com a necessàri però el mòdul de balística avançada el necessita. Marcant ACE3 com a necessari."];
    cc_comu_requereix_ACE3 = 1;
};

if ((cc_comu_requereix_ACE3_BasMed == 0) and (cc_comu_requereix_ACE3_AdvMed == 0) and cc_mod_ace3medical) then {
    player sideChat format ["ERROR (cc_comprovarConfiguracio_ace3.sqf): Tot i tenir desactivats el sistemes mèdics de ACE3 el fitxer ace_medical.pbo està carregat."];
};

// Advanced Combat Environment 3 (ACE3): Sistema mèdic bàsic.
if (cc_comu_requereix_ACE3_BasMed != 2) then {
    if (cc_mod_ace3medical) then {
        if ((cc_comu_requereix_ACE3_BasMed == 1) and (cc_param_ace3_sistemaMedic != 1)) then {
            player sideChat format ["ERROR (cc_comprovarConfiguracio_ace3.sqf): El sistema mèdic bàsic de ACE3 està desactivat però s'ha d'activar per aquesta missió."];
        };

        if ((cc_comu_requereix_ACE3_BasMed == 0) and (cc_param_ace3_sistemaMedic == 1)) then {
            player sideChat format ["ERROR (cc_comprovarConfiguracio_ace3.sqf): El sistema mèdic avançat de ACE3 està activat però s'ha de desactivar per aquesta missió."];
        };
    } else {
        player sideChat format ["ERROR (cc_comprovarConfiguracio_ace3.sqf): Es requereix el sistema mèdic bàsic de ACE3 però el fitxer ace_medical.pbo no està carregat."];
    };
} else {
    if ((cc_param_ace3_sistemaMedic == 1) and !cc_mod_ace3medical) then {
        player sideChat format ["ERROR (cc_comprovarConfiguracio_ace3.sqf): El sistema mèdic bàsic de ACE3 està activat però el fitxer ace_medical.pbo no està carregat."];
    };

    if ((cc_param_ace3_sistemaMedic != 1) and (cc_param_ace3_sistemaMedic != 2) and cc_mod_ace3medical) then {
        player sideChat format ["ERROR (cc_comprovarConfiguracio_ace3.sqf): El sistema mèdic bàsic de ACE3 està desactivat però el fitxer ace_medical.pbo està carregat."];
    };
};

// Advanced Combat Environment 3 (ACE3): Sistema mèdic avançat.
if (cc_comu_requereix_ACE3_AdvMed != 2) then {
    if (cc_mod_ace3medical) then {
        if ((cc_comu_requereix_ACE3_AdvMed == 1) and (cc_param_ace3_sistemaMedic != 2)) then {
            player sideChat format ["ERROR (cc_comprovarConfiguracio_ace3.sqf): El sistema mèdic avançat de ACE3 està desactivat però s'ha d'activar per aquesta missió."];
        };

        if ((cc_comu_requereix_ACE3_AdvMed == 0) and (cc_param_ace3_sistemaMedic == 2)) then {
            player sideChat format ["ERROR (cc_comprovarConfiguracio_ace3.sqf): El sistema mèdic avançat de ACE3 està activat però s'ha de desactivar per aquesta missió."];
        };
    } else {
        player sideChat format ["ERROR (cc_comprovarConfiguracio_ace3.sqf): Es requereix el sistema mèdic avançat de ACE3 però el fitxer ace_medical.pbo no està carregat."];
    };
} else {
    if ((cc_param_ace3_sistemaMedic == 2) and !cc_mod_ace3medical) then {
        player sideChat format ["ERROR (cc_comprovarConfiguracio_ace3.sqf): El sistema mèdic avançat de ACE3 està activat però el fitxer ace_medical.pbo no està carregat."];
    };

    if ((cc_param_ace3_sistemaMedic != 1) and (cc_param_ace3_sistemaMedic != 2) and cc_mod_ace3medical) then {
        player sideChat format ["ERROR (cc_comprovarConfiguracio_ace3.sqf): El sistema mèdic avançat de ACE3 està desactivat però el fitxer ace_medical.pbo està carregat."];
    };
};

// Advanced Combat Environment 3 (ACE3): Balística avançada.
if (cc_comu_requereix_ACE3_AdvBal != 2) then {
    if (cc_mod_ace3advbal) then {
        if (cc_comu_requereix_ACE3_AdvBal != cc_param_ace3_Balistica) then {
            if (cc_param_ace3_Balistica == 1) then {
                player sideChat format ["ERROR (cc_comprovarConfiguracio_ace3.sqf): La balísica avançada de ACE3 està activada però s'ha de desactivar per aquesta missió."];
            } else {
                player sideChat format ["ERROR (cc_comprovarConfiguracio_ace3.sqf): La balísica avançada de ACE3 està desactivada però s'ha d'activar per aquesta missió."];
            };
        };
    } else {
        player sideChat format ["ERROR (cc_comprovarConfiguracio_ace3.sqf): Es requereix la balística avançada de ACE3 però el fitxer ace_advanced_ballistics.pbo no està carregat."];
    };
} else {
    if ((cc_param_ace3_Balistica == 1) and !cc_mod_ace3advbal) then {
        player sideChat format ["ERROR (cc_comprovarConfiguracio_ace3.sqf): La balística avançada de ACE3 està activada però el fitxer ace_advanced_ballistics.pbo no està carregat."];
    };

    if ((cc_param_ace3_Balistica == 0) and cc_mod_ace3medical) then {
        player sideChat format ["AVÍS (cc_comprovarConfiguracio_ace3.sqf): La balística avançada de ACE3 està desactivada però el fitxer ace_advanced_ballistics.pbo està carregat."];
    };
};

//============================================ FI DEL FITXER ============================================//
