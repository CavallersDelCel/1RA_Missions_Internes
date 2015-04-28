//=======================================================================================================//
// Arxiu: fn_acre2_configurarXatEspectador.sqf                                                           //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 28/04/2015                                                                      //
// Descripció: Configuració d'el xat d'espectador i deshabilitar la veu al morir utilitzant el Advanced  //
//             Combat Radio Environment 2 (ACRE2)                                                        //
//             http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                         //
//=======================================================================================================//

// Declaració de variables
private["_unitat"];

_unitat = player;

// Si la unitat està viva no cal forçar res.
if(alive _unitat) then {
	// Deshabilita el xat d'espectador
	[false] call acre_api_fnc_setSpectator;
} else {
	// En cas de que la unitat no estigui viva, forçar el xat d'espectador de l'ACRE2
	[true] call acre_api_fnc_setSpectator;
};


//if (local player) then {
 //   [false] call acre_api_fnc_setSpectator;
 //   player addEventHandler ["Killed", {[true] call acre_api_fnc_setSpectator;}];
 //   player addEventHandler ["Respawn", {[false] call acre_api_fnc_setSpectator;}];
//};
//============================================ FI DEL FITXER ============================================//