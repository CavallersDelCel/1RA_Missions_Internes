//=======================================================================================================//
// Arxiu: cc_acre2_initClient.sqf                                                                        //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 28/04/2015                                                                      //
// Descripció: Aquest document serveix per configurar el Advanced Combat Radio Environment 2 (ACRE2)     //
//             http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                         //
//=======================================================================================================//

// Donar temps a ACRE2 per inicialitzar-se
sleep 3;

// Configurar el ACRE2. Si el jugador està viu, les ràdios que venen per defecte es treuran i s'assinaran
// les radios que es desitgin utilitzant depenent del rol tal i com s'ha especificat al fitxer
// "cc_acre2_configuracio.sqf". El xat d'espectador es configurarà depenent de si el jugador està viu o no.

// Si el jugador està viu, procedir
if(alive player) then {
	// Esperar fins que l'equipació estigui assignada
	waitUntil{(player getVariable ["cc_var_configEquipacio_Llesta", false])};
	
	// Treure totes les ràdios de l'inventari
	[] call cc_fnc_acre2_treureRadios;

	// Afegir les ràdios a cada unitat
	[] call cc_fnc_acre2_afegirRadios;
	
	player sideChat format ["DEBUG (fn_acre2_initClient.sqf): Radios configurades."];
} else {
	// El jugador no està viu i per tant no cal configurar les ràdios.
	[] call cc_fnc_acre2_configurarXatEspectador;
};