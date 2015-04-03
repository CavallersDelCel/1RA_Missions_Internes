//=======================================================================================================//
// Arxiu: inicialitzar_radios.sqf                                                                                   //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 22/02/2015                                                                      //
// Descripció: Aquest document serveix per inicialitzar el sistema de radios. Actualment només el        //
//             Task Force Arrowhead (TFR) està suportat                                                  //
//=======================================================================================================//

// Espera a que el paràmetre que controla el sistema de radios estigui inicialitzat
waitUntil{!isNil "cc_var_radios"};

// Si es selecciona algun sistema de radios s'ha d'inicialitzar.
if(cc_var_radios != 0) then {

  switch (cc_var_radios) do {
		// Task Force Arrowhead (TFAR)
		case 1: {
			[] execVM "scripts\radios\tfar\cc_inicialitzar_tfar.sqf";
		};
		// Advanced Combat Radio Environment 2 (ACRE 2)
		case 2: {
//			[] execVM "scripts\radios\acre2\inicialitzar_acre2.sqf";
		};
	};
};

//============================================ FI DEL FITXER ============================================//
