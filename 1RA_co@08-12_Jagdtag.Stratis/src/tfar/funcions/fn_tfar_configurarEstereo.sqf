//=======================================================================================================//
// Arxiu: fn_tfar_configurarEstereo.sqf                                                                  //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/07/25                                                                      //
// Descripció: Aquest document serveix per configurar l'estèreo  de les ràdios en cas de que aquestes    //
//             suportin els canals addicionals.                                                          //
//                 - Si la unitat està equipada amb una ràdio superior a la "Rifleman Radio" i el canal  //
//                   addicional està configurat, el canal actiu s'escoltarà per l'esquerra mentre que el //
//                   canal addicional s'escoltarà per la dreta.                                          //
//                 - En cas de que la unitat tingui dues ràdios que suportin canals addicionals, la      //
//                   ràdio de curt abast s'escoltarà per l'esquerra mentre que la de llarg abast         //
//                   s'escoltarà per la dreta.                                                           //
//             Task Force Arrowhead Radio (TFAR)                                                         //
//             https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki                          //
// Canvis: 0.1 (2015/07/25) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

// Declaració de variables.
private["_unitat","_tipusUnitat"];

_unitat = player;
_tipusUnitat = _unitat getVariable ["cc_var_configEquipacio", "NIL"];

if (_tipusUnitat != "nil") then {

    // La unitat està equipada únicament amb una ràdio d'ona curta.
    if ((_tipusUnitat in cc_var_llistaRadioOficials) and !(_tipusUnitat in cc_var_llistaRadioRTO)) then {
        // Canal actiu per l'esquerra.
        [(call TFAR_fnc_ActiveSWRadio), 1] call TFAR_fnc_setSwStereo;

        // Canal addicional per la dreta.
        [(call TFAR_fnc_ActiveSWRadio), 2] call TFAR_fnc_setAdditionalSwStereo;
    };

    // La unitat està equipada únicament amb una ràdio de llarg abast.
    if (!(_tipusUnitat in cc_var_llistaRadioOficials) and (_tipusUnitat in cc_var_llistaRadioRTO)) then {
        // Canal actiu per l'esquerra.
        [(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, 1] call TFAR_fnc_setLrStereo;

        // Canal addicional per la dreta.
        [(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, 2] call TFAR_fnc_setAdditionalLrStereo;
    };

    // La unitat està equipada amb una ràdio d'ona curta i una de llarg abast.
    if ((_tipusUnitat in cc_var_llistaRadioOficials) and (_tipusUnitat in cc_var_llistaRadioRTO)) then {
        // Els canals de la ràdio de curt abast s'escoltaran per l'esquerra.
        [(call TFAR_fnc_ActiveSWRadio), 1] call TFAR_fnc_setSwStereo;
        [(call TFAR_fnc_ActiveSWRadio), 1] call TFAR_fnc_setAdditionalSwStereo;

        // Els canals de la ràdio de llarg abast s'escoltaran per la dreta.
        [(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, 2] call TFAR_fnc_setLrStereo;
        [(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, 2] call TFAR_fnc_setAdditionalLrStereo;
    };
};

//============================================ FI DEL FITXER ============================================//
