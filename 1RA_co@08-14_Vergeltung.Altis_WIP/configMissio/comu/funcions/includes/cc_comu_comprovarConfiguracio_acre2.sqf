//=======================================================================================================//
// Arxiu: cc_comu_comprovarConfiguracio_acre2.sqf                                                        //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/11/26                                                                      //
// Descripció: Aquest fitxer serveix per comprovar que els paràmetres de la missió són els que el        //
//             creador de la missió ha especificat. Aquest fitxer comprova només aquells paràmetres que  //
//             estan relacionats amb el Advanced Combat Radio Environent 2 (ACRE2).                      //
// Canvis: 1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

if (cc_comu_requereix_ACRE2 != 2) then {
    if (cc_mod_acre2 and (cc_comu_requereix_ACRE2 == 0)) then {
        player sideChat format ["ERROR (cc_comu_comprovarConfiguracio_acre2.sqf): El ACRE2 està carregat però aquesta missió no el suporta."];
    };

    if (!cc_mod_acre2 and (cc_comu_requereix_ACRE2 == 1)) then {
        player sideChat format ["ERROR (cc_comu_comprovarConfiguracio_acre2.sqf): El ACRE2 és necessari per aquesta missió però no està carregat."];
    };
};

//============================================ FI DEL FITXER ============================================//
