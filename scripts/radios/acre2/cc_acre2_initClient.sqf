//=======================================================================================================//
// Arxiu: cc_acre2_initClient.sqf                                                                        //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 28/04/2015                                                                      //
// Descripció: Aquest document serveix per configurar el Advanced Combat Radio Environment 2 (ACRE2)     //
//             http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                         //
//=======================================================================================================//

private["_unitat","_nomPreset"];

// Donar temps a ACRE2 per inicialitzar-se
sleep 3;

_unitat = player;

// Configurar els presets de radio depenent del bàndol
if (cc_acre2_config_dividirFrequencies) then {
	switch(side _unitat) do {
		case blufor: {_nomPreset = "default2"};
		case opfor: {_nomPreset = "default3"};
		case independent: {_nomPreset = "default4"};
		default {_nomPreset = "default"};
	};
} else {
	_nomPreset = "default";
};

["ACRE_PRC343", _nomPreset] call acre_api_fnc_setPreset;
["ACRE_PRC148", _nomPreset] call acre_api_fnc_setPreset;
["ACRE_PRC152", _nomPreset] call acre_api_fnc_setPreset;
["ACRE_PRC117F", _nomPreset] call acre_api_fnc_setPreset;

// Configurar el ACRE2. Si el jugador està viu, les ràdios que venen per defecte es treuran i s'assinaran
// les radios que es desitgin utilitzant depenent del rol tal i com s'ha especificat al fitxer
// "cc_acre2_configuracio.sqf". El xat d'espectador es configurarà depenent de si el jugador està viu o no.

// Si el jugador està viu, procedir
if(alive _unitat) then {
	// Esperar fins que l'equipació estigui assignada
	waitUntil{(_unitat getVariable ["cc_var_configEquipacio_Llesta", false])};
	
	// Definir els idiomes per cada bàndol
	[] call cc_fnc_acre2_determinarIdiomes;
	
	// Treure totes les ràdios de l'inventari
	[] call cc_fnc_acre2_treureRadios;

	// Afegir les ràdios a cada unitat
	[] call cc_fnc_acre2_afegirRadios;
	
	if ( cc_param_debugOutput == 1 ) then {
		_unitat sideChat format ["DEBUG (fn_acre2_initClient.sqf): Radios configurades."];
	};
} else {
	// El jugador no està viu i per tant no cal configurar les ràdios.
	[] call cc_fnc_acre2_configurarXatEspectador;
};

//============================================ FI DEL FITXER ============================================//