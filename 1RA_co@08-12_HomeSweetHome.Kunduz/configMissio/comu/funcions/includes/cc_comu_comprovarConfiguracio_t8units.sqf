//=======================================================================================================//
// Arxiu: cc_comu_comprovarConfiguracio_t8units.sqf                                                      //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/12/06                                                                      //
// Descripció: Aquest fitxer serveix per comprovar que els paràmetres de la missió són els que el        //
//             creador de la missió ha especificat. Aquest fitxer comprova només aquells paràmetres que  //
//             estan relacionats amb el T8 Units.                                                        //
// Canvis: 1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

if (cc_comu_requereix_t8units != 2) then {
    if (cc_comu_requereix_t8units != cc_param_t8units_habilitat) then {
        if (cc_param_t8units_habilitat == 1) then {
            player sideChat format ["ERROR (cc_comu_comprovarConfiguracio_t8units.sqf): El T8 Units està activat però s'ha de desactivar per aquesta missió."];
        } else {
            player sideChat format ["ERROR (cc_comu_comprovarConfiguracio_t8units.sqf): El T8 Units està desactivat però s'ha d'activar per aquesta missió."];
        };
    };
};

if ((cc_param_t8units_habilitat == 0) and (cc_param_t8units_debug == 1)) then {
    player sideChat format ["AVÍS (cc_comu_comprovarConfiguracio_t8units.sqf): El debug del T8 Units està activat però el T8 Units no ho està."];
};

if (cc_param_t8units_dac == 1) then {
    if (isNil "cc_param_dac_habilitat") then {
        player sideChat format ["ERROR (cc_comu_comprovarConfiguracio_t8units.sqf): El T8 Units està configurat per utilitzar el DAC però aquest últim no està carregat."];
    } else {
        if (cc_param_dac_habilitat == 0) then {
            player sideChat format ["ERROR (cc_comu_comprovarConfiguracio_t8units.sqf): El T8 Units està configurat per utilitzar el DAC però aquest últim, tot i estar carregat, no està activat."];
        };
    };
};

//============================================ FI DEL FITXER ============================================//
