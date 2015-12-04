//=======================================================================================================//
// Arxiu: cc_comu_comprovarConfiguracio_tfar.sqf                                                         //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/11/26                                                                      //
// Descripció: Aquest fitxer serveix per comprovar que els paràmetres de la missió són els que el        //
//             creador de la missió ha especificat. Aquest fitxer comprova només aquells paràmetres que  //
//             estan relacionats amb el Task Force Arrowhead Radio (TFAR).                               //
// Canvis: 1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

if (cc_comu_requereix_TFAR != 2) then {
    if (cc_mod_tfar and (cc_comu_requereix_TFAR == 0)) then {
        player sideChat format ["ERROR (cc_comu_comprovarConfiguracio_tfar.sqf): El TFAR està carregat però aquesta missió no el suporta."];
    };

    if (!cc_mod_tfar and (cc_comu_requereix_TFAR == 1)) then {
        player sideChat format ["ERROR (cc_comu_comprovarConfiguracio_tfar.sqf): El TFAR és necessari per aquesta missió però no està carregat."];
    };
};

//============================================ FI DEL FITXER ============================================//
