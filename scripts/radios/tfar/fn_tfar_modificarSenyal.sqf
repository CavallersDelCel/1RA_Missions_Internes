//=======================================================================================================//
// Arxiu: fn_tfar_modificarSenyal.sqf                                                                    //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
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
// Canvis: 0.1 (2015/05/26) Versió inicial.
//=======================================================================================================//

private["_factorRebre","_factorTransmetre", "_unitat"];

_factorRebre = _this select 0;
_factorTransmetre = _this select 1;
_unitat = _this select 2;

_unitat setVariable ["tf_receivingDistanceMultiplicator", _factorRebre];
_unitat setVariable ["tf_sendingDistanceMultiplicator", _factorTransmetre];

//============================================ FI DEL FITXER ============================================//