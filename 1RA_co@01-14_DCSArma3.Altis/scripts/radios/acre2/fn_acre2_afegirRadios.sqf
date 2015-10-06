//=======================================================================================================//
// Arxiu: fn_acre2_afegirRadios.sqf                                                                      //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 2015/04/28                                                                      //
// Descripció: Aquest document serveix per afegir les ràdios a l'inventari de forma que es pugui         //
//             decidir quines ràdios es fan servir durant la partida en cas de que no es vulguin fer     //
//             servir les que van per defecte als perfils. Advanced Combat Radio Environment 2 (ACRE2)   //
//             http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                         //
// Canvis: 0.1 (2015/04/28) Versió inicial.                                                              //
//=======================================================================================================//

// Declaració de variables.
private["_unitat", "_tipusUnitat"];

_unitat = player;

_tipusUnitat = _unitat getVariable ["cc_var_configEquipacio", "NIL"];

// Assignar ràdios depenent del tipus d'unitat (fn_configEquipacio).
if(_tipusUnitat != "nil") then {

    // Si les ràdios estan habilitades, cal assignar-les depenent del rol
    if(cc_acre2_config_distribuirRadios) then {

        // Comprova si cal assignar la ràdio definida a "cc_acre2_radioSoldats" per defecte a totes les
        // unitats.
        if(cc_acre2_config_tothomRadioSoldats) then {

            if( _unitat canAdd cc_acre2_radioSoldats ) then {
                _unitat addItem cc_acre2_radioSoldats;
            } else {
                player sideChat format ["ERROR (fn_acre2_afegirRadios.sqf): No es pot afegir la ràdio %1.", cc_acre2_radioSoldats];
            };
        } else {
            if (_tipusUnitat in cc_acre2_llistaRadioSoldats) then {
                if( _unitat canAdd cc_acre2_radioSoldats ) then {
                    _unitat addItem cc_acre2_radioSoldats;
                } else {
                    player sideChat format ["ERROR (fn_acre2_afegirRadios.sqf): No es pot afegir la ràdio %1.", cc_acre2_radioSoldats];
                };
            };
        };

        if (_tipusUnitat in cc_acre2_llistaRadioOficials) then {
            if( _unitat canAdd cc_acre2_radioOficials ) then {
                _unitat addItem cc_acre2_radioOficials;
            } else {
                player sideChat format ["ERROR (fn_acre2_afegirRadios.sqf): No es pot afegir la ràdio %1.", cc_acre2_radioOficials];
            };
        };

        if (_tipusUnitat in cc_acre2_llistaRadioRTO) then {
            if( _unitat canAdd cc_acre2_radioRTO ) then {
                _unitat addItemToBackPack cc_acre2_radioRTO;
            } else {
                player sideChat format ["ERROR (fn_acre2_afegirRadios.sqf): No es pot afegir la ràdio %1.", cc_acre2_radioRTO];
            };
        };
    };
};

//============================================ FI DEL FITXER ============================================//
