//=======================================================================================================//
// Arxiu: fn_acre2_afegirRadios.sqf                                                                      //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 28/04/2015                                                                      //
// Descripció: Aquest document serveix per afegir les radios a l'inventari de forma que es pugui         //
//             decidir quines radios es fan servir durant la partida en cas de que no es vulguin fer     //
//             servir les que van per defecte als perfils. Advanced Combat Radio Environment 2 (ACRE2)   //
//             http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                         //
//=======================================================================================================//

// Declaració de variables
private["_unitat", "_tipusUnitat"];

_unitat = player;

_tipusUnitat = _unitat getVariable ["cc_var_configEquipacio", "NIL"];

// Assignar radios depenent del tipus d'unitat (fn_configEquipacio)
if(_tipusUnitat != "nil") then {

	// Si les radios estan habilitades, cal assignar-les depenent del rol
	if(cc_acre2_config_distribuirRadios) then {
	
		// Comprova si cal assignar la radio definida a "cc_acre2_radioSoldats" per defecte a totes les
		// unitats
		if(cc_acre2_config_tothomRadioSoldats) then {
			
			if( _unitat canAdd cc_acre2_radioSoldats ) then {
				_unitat addItem cc_acre2_radioSoldats;
			} else {
				player sideChat format ["ERROR (fn_acre2_afegirRadios.sqf): No es pot afegir la radio %1.", cc_acre2_radioSoldats];
			};
		} else {
			if (_tipusUnitat in cc_acre2_llistaRadioSoldats) then {
				if( _unitat canAdd cc_acre2_radioSoldats ) then {
					_unitat addItem cc_acre2_radioSoldats;
				} else {
					player sideChat format ["ERROR (fn_acre2_afegirRadios.sqf): No es pot afegir la radio %1.", cc_acre2_radioSoldats];
				};
			};
		};
		
		if (_tipusUnitat in cc_acre2_llistaRadioOficials) then {
			if( _unitat canAdd cc_acre2_radioOficials ) then {
				_unitat addItem cc_acre2_radioOficials;
			} else {
				player sideChat format ["ERROR (fn_acre2_afegirRadios.sqf): No es pot afegir la radio %1.", cc_acre2_radioOficials];
			};
		};
		
		if (_tipusUnitat in cc_acre2_llistaRadioRTO) then {
			if( _unitat canAdd cc_acre2_radioRTO ) then {
				_unitat addItemToBackPack cc_acre2_radioRTO;
			} else {
				player sideChat format ["ERROR (fn_acre2_afegirRadios.sqf): No es pot afegir la radio %1.", cc_acre2_radioRTO];
			};
		};
	};
};

//============================================ FI DEL FITXER ============================================//
