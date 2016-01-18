//=======================================================================================================//
// Arxiu: cc_t8units_init.sqf                                                                            //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/12/06                                                                      //
// Descripció: Aquest fitxer serveix per inicialitzar el T8 Units.                                       //
// Canvis: 1.0 (2015/12/06) Versió inicial.                                                              //
//=======================================================================================================//

if (cc_param_t8units_habilitat == 0) exitWith {};

// missionEXEC -> Load the unit setup & more
[] execVM "configMissio\t8units\scripts\T8_missionEXEC.sqf";

//============================================ FI DEL FITXER ============================================//
