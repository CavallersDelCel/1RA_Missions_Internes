//=======================================================================================================//
// Arxiu: fn_misc_afegirAccio.sqf                                                                        //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 2015/10/18                                                                      //
// Descripció: Aquest document serveix per afegir una acció a un objecte.                                //
//             Arguments:                                                                                //
//               - 0: objecte que rebrà l'acció <OBJECTE>.                                               //
//               - 1: arguments de la funció addAction <STRING>.                                         //
//=======================================================================================================//

params ["_objecte", "_arguments"];

_objecte addAction _arguments;

//============================================ FI DEL FITXER ============================================//