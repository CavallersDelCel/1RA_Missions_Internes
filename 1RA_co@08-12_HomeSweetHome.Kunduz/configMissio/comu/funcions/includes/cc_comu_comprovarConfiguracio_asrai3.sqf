//=======================================================================================================//
// Arxiu: cc_comu_comprovarConfiguracio_asrai3.sqf                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/11/26                                                                      //
// Descripció: Aquest fitxer serveix per comprovar que els paràmetres de la missió són els que el        //
//             creador de la missió ha especificat. Aquest fitxer comprova només aquells paràmetres que  //
//             estan relacionats amb el ASR AI 3.                                                        //
// Canvis: 1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

if (cc_comu_requereix_asrai3 != 2) then {
    if (cc_comu_requereix_asrai3 != cc_param_asrai3_habilitat) then {
        if (cc_param_asrai3_habilitat == 1) then {
            player sideChat format ["ERROR (cc_comu_comprovarConfiguracio_asrai3_asrai3.sqf): El mod ASR AI 3 és necessari per aquesta missió però no està carregat."];
        } else {
            player sideChat format ["ERROR (cc_comu_comprovarConfiguracio_asrai3.sqf): El ASR AI 3 està activat però s'ha de desactivar per aquesta missió."];
        };
    } else {
        if ((cc_param_asrai3_habilitat == 1) and !cc_mod_asrai3) then {
            player sideChat format ["ERROR (cc_comu_comprovarConfiguracio_asrai3.sqf): El mod ASR AI 3 és necessari per aquesta missió però el fitxer asr_ai3_main.pbo no està carregat."];
        };
    };
} else {
    if ((cc_param_asrai3_habilitat == 1) and !cc_mod_asrai3) then {
        player sideChat format ["ERROR (cc_comu_comprovarConfiguracio_asrai3.sqf): El mod ASR AI 3 s'utilitza en aquesta missió però el fitxer asr_ai3_main.pbo no està carregat."];
    };

    if ((cc_param_asrai3_habilitat == 0) and cc_mod_asrai3) then {
        player sideChat format ["AVÍS (cc_comu_comprovarConfiguracio_asrai3.sqf): El mod ASR AI 3 no s'utilitza en aquesta missió però el fitxer asr_ai3_main.pbo està carregat."];
    };
};

//============================================ FI DEL FITXER ============================================//
