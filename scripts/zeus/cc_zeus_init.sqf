//=======================================================================================================//
// Arxiu: cc_zeus_init.sqf                                                                               //
// Autor: CC_Magnetar                                                                                    //
// Versi�: 0.1                                                                                           //
// Creaci� del Document: 04/06/2015                                                                      //
// Descripci�: Aquest document serveix per afegir al Zeus els diferents objectes, vehicles, i unitats    //
//             que s'han posat utilitzant l'editor. Els jugadors tamb� estan inclosos. D'aquesta manera  //
//             tots aquests els objectes seran editables.                                                //
// Canvis: 0.1 (2015/06/04) Versi� inicial.                                                              //
//=======================================================================================================//

// Surt si no �s un servidor
if( !isServer ) exitWith{}; 

// Afegir les unitats, vehicles i objectes a tots els zeus. 
{
    _x addCuratorEditableObjects [vehicles,true];                     // Afegeix els vehicles amb la tripulaci�
    _x addCuratorEditableObjects [(allMissionObjects "Man"),false];   // Afegeix les unitats d'infanteria
    _x addCuratorEditableObjects [(allMissionObjects "Air"),true];    // Afegeix les unitats a�ries amb la tripulaci�
    _x addCuratorEditableObjects [(allMissionObjects "Ammo"),false];  // Afegeix els objectes de tipus "Ammo"
    _x addCuratorEditableObjects [[player], true];                    // Afegeix el jugador en si.
} forEach allCurators;

//============================================ FI DEL FITXER ============================================//