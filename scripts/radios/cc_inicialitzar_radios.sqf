//=======================================================================================================//
// Arxiu: cc_inicialitzar_radios.sqf                                                                     //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.2                                                                                           //
// Creació del Document: 2015/02/22                                                                      //
// Descripció: Aquest document serveix per inicialitzar el sistema de radios. Actualment només el        //
//             Task Force Arrowhead Radio (TFAR) i el Advanced Combat Radio Environment 2 (ACRE2) estan  //
//             suportats.                                                                                //
// Canvis: 0.1 (2015/02/22) Versió inicial.                                                              //
//         0.2 (2015/06/09) Canviada la configuració de paràmetres de missió a mods carregats            //
//=======================================================================================================//

// Espera a que els paràmetres que controlen els sistemes de radio estigui ninicialitzats
//waitUntil(!isNil "cc_mod_tfar");
//waitUntil(!isNil "cc_mod_acre2");

// Configurar el sistema de ràdio carregat.
if (cc_mod_tfar) then {
	// Configurar el Task Force Arrowhead Radio (TFAR)
	[] execVM "scripts\radios\tfar\cc_inicialitzar_tfar.sqf";
};

if (cc_mod_acre2) then {
	// Advanced Combat Radio Environment 2 (ACRE 2)
	[] execVM "scripts\radios\acre2\cc_inicialitzar_acre2.sqf";
};

//============================================ FI DEL FITXER ============================================//
