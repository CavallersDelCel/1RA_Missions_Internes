//=======================================================================================================//
// Arxiu: fn_zeus_eventHandlers.sqf                                                                      //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/06/04                                                                      //
// Descripció: Aquest document serveix per afegir al Zeus les diferents unitats i objectes que altres    //
//             zeus afegeixin durant la partida per tal de que puguin ser editables.                     //
// Canvis: 0.1 (2015/06/04) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

{
    _x addEventHandler ["CuratorGroupPlaced",{ _this remoteExecCall ["cc_fnc_zeus_afegirGrups", 2, false] }];
    _x addEventHandler ["CuratorObjectPlaced",{ _this remoteExecCall ["cc_fnc_zeus_afegirObjectes", 2, false] }];
} forEach allCurators;
