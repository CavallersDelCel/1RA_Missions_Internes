//=======================================================================================================//
// Arxiu: fn_misc_teleport.sqf                                                                           //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/10/18                                                                      //
// Descripció: Aquest document serveix per fer el teletransport d'un jugador a un punt definit.          //
//             Arguments:                                                                                //
//               - 0: objecte a teletransportar <OBJECTE>.                                               //
//               - 1: marcador on es teletransportarà l'objecte <STRING>.                                //
//               - 2: altitud de l'objecte a teletransportar al punt de destí <FLOAT><OPCIONAL>.         //
//               - 3: direcció al punt de destí <FLOAT><OPCIONAL>.                                       //
// Canvis: 0.1 (2015/10/18) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

params["_objecte","_marcador", ["_altitud",0.0], "_direccio"];

_objecte setposatl [getmarkerpos _marcador select 0,getmarkerpos _marcador select 1, _altitud];

if (isNil "_direccio") then {
    _objecte setDir (markerDir _marcador);
} else {
    _objecte setDir _direccio;
};

//============================================ FI DEL FITXER ============================================//
