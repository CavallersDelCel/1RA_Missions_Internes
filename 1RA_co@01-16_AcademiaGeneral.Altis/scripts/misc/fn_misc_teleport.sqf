//=======================================================================================================//
// Arxiu: fn_misc_teleport.sqf                                                                           //
// Autor: CC_Magnetar                                                                                    //
// Versi�: 0.1                                                                                           //
// Creaci� del Document: 2015/10/18                                                                      //
// Descripci�: Aquest document serveix per fer el teletransport d'un jugador a un punt definit.          //
//             Arguments:                                                                                //
//               - 0: objecte a teletransportar <OBJECTE>.                                               //
//               - 1: marcador on es teletransportar� l'objecte <STRING>.                                //
//               - 2: altitud de l'objecte a teletransportar al punt de dest� <FLOAT><OPCIONAL>.         //
//               - 3: direcci� al punt de dest� <FLOAT><OPCIONAL>.                                       //
//=======================================================================================================//

params["_objecte","_marcador", ["_altitud",0.0], "_direccio"];

_objecte setposatl [getmarkerpos _marcador select 0,getmarkerpos _marcador select 1, _altitud];

if (isNil "_direccio") then {
    _objecte setDir (markerDir _marcador);
} else {
    _objecte setDir _direccio;
};

//============================================ FI DEL FITXER ============================================//