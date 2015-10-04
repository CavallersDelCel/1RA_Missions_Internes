//=======================================================================================================//
// Arxiu: fn_tfar_configurarXatEspectador.sqf                                                            //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 2015/03/06                                                                      //
// Descripció: Configuració d'el xat d'espectador i deshabilitar la veu al morir utilitzant el Task Force//
//             Arrowhead Radio (TFAR) https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki   //
// Canvis: 0.1 (2015/03/06) Versió inicial.                                                              //
//=======================================================================================================//

// Declaració de variables.
private["_unitat"];

_unitat = player;

// Si la unitat està viva no cal forçar res.
if(alive _unitat) then {
    // Deshabilita el xat d'espectador.
    [_unitat, false] call TFAR_fnc_forceSpectator;
} else {
    // En cas de que la unitat no estigui viva, forçar el xat d'espectador del TFAR.
    [_unitat, true] call TFAR_fnc_forceSpectator;
};

//============================================ FI DEL FITXER ============================================//
