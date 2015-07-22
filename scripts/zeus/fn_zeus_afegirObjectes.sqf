//=======================================================================================================//
// Arxiu: fn_zeus_afegirObjectes.sqf                                                                     //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 04/06/2015                                                                      //
// Descripció: Aquest document serveix per afegir al Zeus els diferents objectes que altres zeus         //
//             afegeixen durant la partida per tal de que puguin ser editables.                          //
// Canvis: 0.1 (2015/06/04) Versió inicial.                                                              //
//=======================================================================================================//

// Surt si no és un servidor
if( !isServer ) exitWith{}; 

params["_zeus", "_nouObjecte"];

{
    _x addCuratorEditableObjects [[_nouObjecte],true]
} forEach (allCurators - [_zeus]);

//============================================ FI DEL FITXER ============================================//