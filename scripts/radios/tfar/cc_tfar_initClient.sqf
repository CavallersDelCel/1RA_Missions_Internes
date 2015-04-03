//=======================================================================================================//
// Arxiu: tfar_initServidor.sqf                                                                          //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 06/03/2015                                                                      //
// Descripció: Aquest document serveix per inicialitzar els paràmetres per les radios al Task Force      //
//             Arrowhead Radio (TFAR) https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki   //
//=======================================================================================================//

// Donar temps a TFAR per inicialitzar-se
sleep 3;

// Configurar el TFAR. Si el jugador està viu, les ràdios que venen per defecte es treuran i s'assinaran
// les radios que es desitgin utilitzant depenent del rol tal i com s'ha especificat al fitxer
// "tfar_configuracio.sqf". El xat d'espectador es configurarà depenent de si el jugador està viu o no.

// Si el jugador està viu, procedir
if(alive player) then {
	// Treure totes les ràdios de l'inventari
	[] call cc_fnc_tfar_treureRadios;

	// Esperar fins que l'equipació estigui assignada
	waitUntil{(player getVariable ["cc_var_configEquipacio_Llesta", false])};

	// Afegir les ràdios a cada unitat
	[] call cc_fnc_tfar_afegirRadios;

	// Configurar el xat d'espectador
	[] call cc_fnc_tfar_configurarXatEspectador;
	
	player sideChat format ["DEBUG (fn_tfar_initClient.sqf): Radios configurades."];
} else {
	// El jugador no està viu i per tant no cal configurar les ràdios.
	[] call cc_fnc_tfar_configurarXatEspectador;
};

//============================================ FI DEL FITXER ============================================//