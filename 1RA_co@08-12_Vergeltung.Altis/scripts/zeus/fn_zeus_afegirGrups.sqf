//=======================================================================================================//
// Arxiu: fn_zeus_afegirGrups.sqf                                                                        //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 04/06/2015                                                                      //
// Descripció: Aquest document serveix per afegir al Zeus les diferents unitats que altres zeus          //
//             afegeixen durant la partida per tal de que puguin ser editables.                          //
// Canvis: 0.1 (2015/06/04) Versió inicial.                                                              //
//=======================================================================================================//

params["_zeus", "_nouGrup"];

{
    _x addCuratorEditableObjects [(units _nouGrup),true]
} forEach (allCurators - [_zeus]);

//============================================ FI DEL FITXER ============================================//