//=======================================================================================================//
// Arxiu: fn_misc_teleport.sqf                                                                           //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 2015/10/18                                                                      //
// Descripció: Aquest document serveix per fer el teletransport d'un jugador a un punt definit.          //
//             Arguments:                                                                                //
//               - 0: objecte a teletransportar <OBJECTE>.                                               //
//               - 1: marcador on es teletransportarà l'objecte <MARKER>.                                //
//               - 2: altitud de l'objecte a teletransportar al punt de destí <FLOAT><OPCIONAL>.         //
//               - 3: direcció al punt de destí <FLOAT><OPCIONAL>.                                       //
//=======================================================================================================//

private ["_descripcio", "_posicio", "_exp"];

puntsDesti = [["tirmg_teleport_mark", "tirat_teleport_mark", "tirlg_teleport_mark", "patrulla_teleport_mark"],
              ["tir_teleport_mark", "tirat_teleport_mark", "tirlg_teleport_mark", "patrulla_teleport_mark"],
              ["tir_teleport_mark", "tirmg_teleport_mark", "tirlg_teleport_mark", "patrulla_teleport_mark"],
              ["tir_teleport_mark", "tirmg_teleport_mark", "tirat_teleport_mark", "patrulla_teleport_mark"],
              ["tir_teleport_mark", "tirmg_teleport_mark", "tirat_teleport_mark", "tirlg_teleport_mark"]
             ];
puntsInici = [tir_teleport, tirmg_teleport, tirat_teleport, tirlg_teleport, patrulla_teleport];

if (count puntsDesti != count puntsInici) exitWith {
    player sideChat format ["ERROR (fn_misc_teleport_configurarPunts.sqf): Les varibles ""puntsDesti"" i ""puntsInici"" no tenen la mateixa mida."];
};

{
    _posicio = _forEachIndex;
    {
        _descripcio = format ["<t color='#ff1111'>%1</t>", markerText ((puntsDesti select _posicio) select _forEachIndex)];
        _exp = format["{[_this select 1, ""%1""] call cc_fnc_misc_teleport;}", (puntsDesti select _posicio) select _forEachIndex];
        (puntsInici select _posicio) addaction [_descripcio, call compile _exp, [], 5, false, true];
    } forEach (puntsDesti select _forEachIndex);
} forEach puntsInici;

//============================================ FI DEL FITXER ============================================//
