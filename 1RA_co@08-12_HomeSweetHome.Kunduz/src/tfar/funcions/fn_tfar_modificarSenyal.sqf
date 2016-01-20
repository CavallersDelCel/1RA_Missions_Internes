//=======================================================================================================//
// Arxiu: fn_tfar_modificarSenyal.sqf                                                                    //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/05/26                                                                      //
// Descripció: Aquest document serveix per reduir/expandir la capacitat de les ràdios de per transmetre  //
//             i/o rebre senyals. D'aquesta manera es poden simular interferències addicionals o bé la   //
//             presència de torres de transmissió que amplifiquin la senyal. Utilitza les funcions del   //
//             Task Force Arrowhead Radio (TFAR).                                                        //
//             https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki                          //
//                                                                                                       //
//                  [factorRebre,factorTransmetre, this] call cc_fnc_tfar_modificarSenyal;               //
//                                                                                                       //
//             On:                                                                                       //
//                 factorRebre:      És un factor que multiplica la distància a la que es reb una senyal //
//                                   "correctament". Contra més gran és aquest número la qualitat baixa. //
//                 factorTransmetre: És un factor que multiplica la força de la senyal enviada per la    //
//                                   radio. Contra més alt, a més distància arribarà la senyal.          //
// Canvis: 0.1 (2015/05/26) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

params [["_factorRebre",1], ["_factorTransmetre",1], ["_unitat", objNull]];

if (_unitat != objNull) then {
    _unitat setVariable ["tf_receivingDistanceMultiplicator", _factorRebre];
    _unitat setVariable ["tf_sendingDistanceMultiplicator", _factorTransmetre];
} else {
    _unitat sideChat format ["ERROR(cc_fnc_tfar_modificarSenyal.sqf): el tercer paràmetre (objecte) no és vàlid o no està definit."];
};

//============================================ FI DEL FITXER ============================================//
