//=======================================================================================================//
// Arxiu: fn_zeus_afegirObjectes.sqf                                                                     //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/06/04                                                                      //
// Descripció: Aquest document serveix per afegir al Zeus els diferents objectes que altres zeus         //
//             afegeixen durant la partida per tal de que puguin ser editables.                          //
// Canvis: 0.1 (2015/06/04) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

// Surt si no és un servidor
if( !isServer ) exitWith{};

params["_zeus", "_nouObjecte"];

{
    _x addCuratorEditableObjects [[_nouObjecte],true]
} forEach (allCurators - [_zeus]);

//============================================ FI DEL FITXER ============================================//
