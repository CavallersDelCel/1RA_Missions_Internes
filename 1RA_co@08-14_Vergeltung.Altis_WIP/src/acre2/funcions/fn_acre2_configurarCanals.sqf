//=======================================================================================================//
// Arxiu: fn_acre2_configurarCanals.sqf                                                                  //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/07/26                                                                      //
// Descripció: Aquest document serveix per configurar els canals en actiu de les diferents radios del    //
//             Advanced Combat Radio Environment 2 (ACRE2)                                               //
//             http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                         //
// Canvis: 0.1 (2015/07/26) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

// Declaració de variables.
private["_unitat","_grupUnitat", "_tipusUnitat", "_canal", "_canalEsquadra", "_canalEquipFoc", "_canalComandament"];
private["_llistaRadios"];

sleep 3;

_unitat = player;
_grupUnitat = _unitat getVariable ["cc_var_grupUnitat", ["nil", -1]];
_tipusUnitat = _unitat getVariable ["cc_var_configEquipacio", "NIL"];

if ((_grupUnitat select 0 == "nil") or (_grupUnitat select 1 == -1)) exitWith {
    _unitat sideChat format ["ERROR (fn_acre2_configurarCanals.sqf): No es poden configurar els canals ja que la variable ""cc_var_grupUnitat"" no està correctament definida: [%1,%2].", _grupUnitat select 0, _grupUnitat select 1];
};

_canal = 1;
// Obtenir el canal d'esquadra
{
    if (_grupUnitat select 0 in _x) then {
        _canalEsquadra = _canal;
        if (_grupUnitat select 1 >= count _x) exitWith {
            _unitat sideChat format ["ERROR (fn_acre2_configurarCanals.sqf): L'equip %1-%2 no està definit.", _grupUnitat select 0, _grupUnitat select 1];
        };
        _canalEquipFoc = _canalEsquadra + (_grupUnitat select 1);
    };

    if ("Comandament" in _x) then {
        _canalComandament = _canal;
    };
    _canal = _canal + (count _x);
} forEach cc_var_grups1RA;

// Obtenir la llista de radios de la unitat.
_llistaRadios = call acre_api_fnc_getCurrentRadioList;
{

    // Les ràdios PRC343 utilitzaran per defecte el canal associat a l'equip de foc.
    if ([_x, "ACRE_PRC343"] call acre_api_fnc_isKindOf) then {
        [_x, _canalEquipFoc] call acre_api_fnc_setRadioChannel;
    };

    // Les ràdios PRC148 utilitzaran com a canal actiu el de la malla de l'esquadra.
    if ([_x, "ACRE_PRC148"] call acre_api_fnc_isKindOf) then {
        [_x, _canalEsquadra] call acre_api_fnc_setRadioChannel;
    };

    // Les ràdios PRC148 utilitzaran com a canal actiu el de la malla de l'esquadra.
    if ([_x, "ACRE_PRC152"] call acre_api_fnc_isKindOf) then {
        [_x, _canalEsquadra] call acre_api_fnc_setRadioChannel;
    };

    // Les ràdios PRC117F utilitzaran com a canal actiu el de comandament.
    if ([_x, "ACRE_PRC117F"] call acre_api_fnc_isKindOf) then {
        [_x, _canalComandament] call acre_api_fnc_setRadioChannel;
    };
} forEach(_llistaRadios);

//============================================ FI DEL FITXER ============================================//
