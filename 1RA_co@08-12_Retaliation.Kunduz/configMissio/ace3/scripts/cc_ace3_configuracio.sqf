//=======================================================================================================//
// Arxiu: cc_ace3_configuracio.sqf                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/04/27                                                                      //
// Descripció: Aquest document serveix configurar variables de ACE3 que afecten unitats, com ara metges, //
//             especialistes en explosius etc.                                                           //
// Canvis: 1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

private ["_metges", "_doctors", "_vehiclesMedics", "_edificisMedics", "_espExplosius", "_enginyers", "_vehiclesReparacio", "_tallers", "_surrenderedUnits"];

// Les variables de les unitats s'han de declarar com a string.
_metges = ["CC_Alfa1_5"];
_doctors = [];
_vehiclesMedics = [];
_edificisMedics = [];
_espExplosius = [];
_enginyers = [];
_vehiclesReparacio = [];
_tallers = [];
_surrenderedUnits = ["cc_marine1","cc_marine2","cc_marine3","cc_marine4"];
_handcuffedUnits = ["cc_marine1","cc_marine2","cc_marine3","cc_marine4"];

//============================================ FI DEL FITXER ============================================//
