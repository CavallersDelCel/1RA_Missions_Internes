//=======================================================================================================//
// Arxiu: fn_tfar_configurarCanals.sqf                                                                   //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 2015/07/25                                                                      //
// Descripció: Aquest document serveix per configurar els canals i les freqüències de les radios en      //
//             funció del grup on estigui assignada la unitat. Task Force Arrowhead Radio (TFAR)         //
//             https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki                          //
// Canvis: 0.1 (2015/07/25) Versió inicial.                                                              //
//=======================================================================================================//

// Declaració de variables.
private["_unitat","_grupUnitat", "_tipusUnitat", "_frequencies", "_canal", "_canalEsquadra", "_canalEquipFoc", "_canalComandament"];

_unitat = player;
_grupUnitat = _unitat getVariable ["cc_var_grupUnitat", ["nil", -1]];
_tipusUnitat = _unitat getVariable ["cc_var_configEquipacio", "NIL"];

if ((_grupUnitat select 0 != "nil") and (_grupUnitat select 1 != -1)) then {

    // Configurar les freqüències de les ràdios curtes.
    if ((_tipusUnitat in cc_tfar_llistaSR) or (_tipusUnitat in cc_tfar_llistaRF)) then {
        _canal = 0;
        {
            _frequencies = cc_var_frequencies1RA select _forEachIndex;
            if (_grupUnitat select 0 in _x) then {
                _canalEsquadra = _canal;
                _canalEquipFoc = _canalEsquadra + (_grupUnitat select 1);

                if (_grupUnitat select 1 >= count _x) exitWith {
                   _unitat sideChat format ["ERROR (fn_tfar_configurarCanals.sqf): L'equip %1-%2 no està definit.", _x select 0, _grupUnitat select 1];
                };

                {
                    [(call TFAR_fnc_activeSwRadio), _canal + 1, format ["%1",_x]] call TFAR_fnc_SetChannelFrequency;
                    _canal = _canal + 1;
                } forEach _frequencies;

            } else {
                [(call TFAR_fnc_activeSwRadio), _canal + 1, format ["%1",_frequencies select 0]] call TFAR_fnc_SetChannelFrequency;
                _canal = _canal + 1;
            };
        } forEach cc_var_grups1RA;

        // Seleccionar el canal de ràdio depenent de l'equip de foc
        [(call TFAR_fnc_activeSwRadio), _canalEquipFoc ] call TFAR_fnc_setSwChannel;

        // Les unitats amb una ràdio superior a la "Rifleman Radio", tenen el canal alternatiu configurat,
        // que per defecte és el canal de l'esquadra on es troben.
        if (_tipusUnitat in cc_tfar_llistaSR) then {
            [(call TFAR_fnc_activeSwRadio), _canalEsquadra] call TFAR_fnc_setAdditionalSwChannel;
        };
    };

    // Configurar les freqüències de les ràdios de llarg abast.
    // Les unitats amb ràdio de llarg abast tenen la ràdio configurada per contactar amb l'esquadra on estan
    // assignats i amb comandament al canal alternatiu.
    if (_tipusUnitat in cc_tfar_llistaLR) then {

        _canal = 0;
        {
            _frequencies = cc_var_frequencies1RA select _forEachIndex;
            [(call TFAR_fnc_activeLrRadio), _canal + 1, format ["%1",_frequencies select 0]] call TFAR_fnc_SetChannelFrequency;
            if ("Comandament" in _x) then {
                _canalComandament = _canal;
            };
            _canal = _canal + 1;
        } forEach cc_var_grups1RA;

        [(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, _canalEsquadra] call TFAR_fnc_setLrChannel;
        [(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, _canalComandament] call TFAR_fnc_setAdditionalLrChannel;
    };
};

//============================================ FI DEL FITXER ============================================//
