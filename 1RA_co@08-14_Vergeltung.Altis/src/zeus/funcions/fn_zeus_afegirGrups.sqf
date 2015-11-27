//=======================================================================================================//
// Arxiu: fn_zeus_afegirGrups.sqf                                                                        //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/06/04                                                                      //
// Descripció: Aquest document serveix per afegir al Zeus les diferents unitats que altres zeus          //
//             afegeixen durant la partida per tal de que puguin ser editables.                          //
// Canvis: 0.1 (2015/06/04) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

params["_zeus", "_nouGrup"];

{
    _x addCuratorEditableObjects [(units _nouGrup),true]
} forEach (allCurators - [_zeus]);

//============================================ FI DEL FITXER ============================================//
