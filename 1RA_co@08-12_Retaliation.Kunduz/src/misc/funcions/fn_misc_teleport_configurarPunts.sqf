//=======================================================================================================//
// Arxiu: fn_misc_teleport.sqf                                                                           //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/10/18                                                                      //
// Descripció: Aquest document serveix per fer el teletransport d'un jugador a un punt definit.          //
//             Arguments:                                                                                //
//               - 0: objecte a teletransportar <OBJECTE>.                                               //
//               - 1: marcador on es teletransportarà l'objecte <MARKER>.                                //
//               - 2: altitud de l'objecte a teletransportar al punt de destí <FLOAT><OPCIONAL>.         //
//               - 3: direcció al punt de destí <FLOAT><OPCIONAL>.                                       //
// Canvis: 0.1 (2015/10/18) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

private ["_descripcio", "_posicio", "_exp"];

{
    _posicio = _forEachIndex;
    {
        _descripcio = format ["<t color='#ff1111'>%1</t>", markerText ((cc_var_puntsTeleport_Desti select _posicio) select _forEachIndex)];
        _exp = format["{[_this select 1, ""%1""] call cc_fnc_misc_teleport;}", (cc_var_puntsTeleport_Desti select _posicio) select _forEachIndex];
        (cc_var_puntsTeleport_Inici select _posicio) addaction [_descripcio, call compile _exp, [], 5, false, true];
    } forEach (cc_var_puntsTeleport_Desti select _forEachIndex);
} forEach cc_var_puntsTeleport_Inici;

//============================================ FI DEL FITXER ============================================//
