//=======================================================================================================//
// Arxiu: fn_configUnitat.sqf                                                                            //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/10/03                                                                      //
// Descripció: Aquest document serveix per configurar les unitats jugables. Primerament es configura el  //
//             grup al que pertany la unitat i acte seguit es configura l'equipació de la unitat en      //
//             concret depenent del seu tipus.                                                           //
// Canvis: 0.1 (2015/10/03) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

params [["_nomGrup", nil], ["_indexSubgrup", -1], ["_tipusUnitat", nil], "_unitat", ["_faccioUnitat", nil]];

if (isNil "_tipusUnitat") exitwith {
    _unitat sideChat format ["DEBUG (fn_configUnitat.sqf): el tipus d'unitat no està definit. Abortant."];
};

// Configurar el grup.
[_nomGrup, _indexSubgrup, _unitat] call cc_fnc_configGrup;

// Configurar l'equipació de la unitat.
[_tipusUnitat, _unitat, _faccioUnitat] call cc_fnc_configEquipacio;
//============================================ FI DEL FITXER ============================================//
