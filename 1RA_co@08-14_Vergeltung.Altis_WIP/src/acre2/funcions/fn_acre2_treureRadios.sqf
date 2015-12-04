//=======================================================================================================//
// Arxiu: fn_acre2_treureRadios.sqf                                                                      //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/04/28                                                                      //
// Descripció: Aquest document serveix per esborrar les radios a l'inventari de forma que es pugui       //
//             decidir quines radios es fan servir durant la partida en cas de que no es vulguin fer     //
//             servir les que van per defecte als perfils. Advanced Combat Radio Environment 2 (ACRE2)   //
//             http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                         //
// Canvis: 0.1 (2015/04/28) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

// Declaració de variables.
private["_unitat"];

_unitat = player;

// Esperar a que l'ACRE2 estigui inicialitzat.
waitUntil{
    [] call acre_api_fnc_isInitialized;
};

// Treure totes les ràdios utilitzant les funcions de ACRE2.
{
    _unitat removeItem _x;
} forEach( [] call acre_api_fnc_getCurrentRadioList);

//============================================ FI DEL FITXER ============================================//
