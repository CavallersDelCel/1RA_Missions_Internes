//=======================================================================================================//
// Arxiu: fn_tfar_modificarSenyal.sqf                                                                    //
// Autor: CC_Magnetar                                                                                    //
// Versi�: 0.1                                                                                           //
// Creaci� del Document: 2015/05/26                                                                      //
// Descripci�: Aquest document serveix per reduir/expandir la capacitat de les r�dios de per transmetre  //
//             i/o rebre senyals. D'aquesta manera es poden simular interfer�ncies addicionals o b� la   //
//             pres�ncia de torres de transmissi� que amplifiquin la senyal. Utilitza les funcions del   //
//             Task Force Arrowhead Radio (TFAR).                                                        //
//             https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki                          //
//                                                                                                       //
//                  [factorRebre,factorTransmetre, this] call cc_fnc_tfar_modificarSenyal;               //
//                                                                                                       //
//             On:                                                                                       //
//                 factorRebre:      �s un factor que multiplica la dist�ncia a la que es reb una senyal //
//                                   "correctament". Contra m�s gran �s aquest n�mero la qualitat baixa. //
//                 factorTransmetre: �s un factor que multiplica la for�a de la senyal enviada per la    //
//                                   radio. Contra m�s alt, a m�s dist�ncia arribar� la senyal.          //
// Canvis: 0.1 (2015/05/26) Versi� inicial.
//=======================================================================================================//

private["_factorRebre","_factorTransmetre", "_unitat"];

_factorRebre = _this select 0;
_factorTransmetre = _this select 1;
_unitat = _this select 2;

_unitat setVariable ["tf_receivingDistanceMultiplicator", _factorRebre];
_unitat setVariable ["tf_sendingDistanceMultiplicator", _factorTransmetre];

//============================================ FI DEL FITXER ============================================//