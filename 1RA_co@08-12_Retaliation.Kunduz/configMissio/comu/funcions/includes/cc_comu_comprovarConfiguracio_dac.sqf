//=======================================================================================================//
// Arxiu: cc_comu_comprovarConfiguracio_dac.sqf                                                          //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/11/26                                                                      //
// Descripció: Aquest fitxer serveix per comprovar que els paràmetres de la missió són els que el        //
//             creador de la missió ha especificat. Aquest fitxer comprova només aquells paràmetres que  //
//             estan relacionats amb el Dynamic-AI-Creator 3.1b (DAC).                                   //
// Canvis: 1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

if (cc_comu_requereix_dac != 2) then {
    if (cc_comu_requereix_dac != cc_param_dac_habilitat) then {
        if (cc_param_dac_habilitat == 1) then {
            player sideChat format ["ERROR (cc_comu_comprovarConfiguracio_dac.sqf): El DAC és necessari per aquesta missió però no està carregat."];
        } else {
            player sideChat format ["ERROR (cc_comu_comprovarConfiguracio_dac.sqf): El DAC està activat però s'ha de desactivar per aquesta missió."];
        };
    } else {
        if ((cc_param_dac_habilitat == 1) and !cc_mod_dac) then {
            player sideChat format ["ERROR (cc_comu_comprovarConfiguracio_dac.sqf): El DAC és necessari per aquesta missió però el fitxer dac_source.pbo no està carregat."];
        };
    };
} else {
    if ((cc_param_dac_habilitat == 1) and !cc_mod_dac) then {
        player sideChat format ["ERROR (cc_comu_comprovarConfiguracio_dac.sqf): El DAC s'utilitza en aquesta missió però el fitxer dac_source.pbo no està carregat."];
    };

    if ((cc_param_asrai3_habilitat == 0) and cc_mod_dac) then {
        player sideChat format ["AVÍS (cc_comu_comprovarConfiguracio_dac.sqf): El DAC no s'utilitza en aquesta missió però el fitxer dac_source.pbo està carregat."];
    };
};

if ((cc_param_dac_habilitat == 0) and (cc_param_dac_debug == 1)) then {
    player sideChat format ["AVÍS (cc_comu_comprovarConfiguracio_dac.sqf): El debug del DAC està activat però el DAC no ho està."];
};

//============================================ FI DEL FITXER ============================================//
