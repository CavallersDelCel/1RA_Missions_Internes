//=======================================================================================================//
// Arxiu: cc_respawn_espectador.sqf                                                                      //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 2015/09/11                                                                      //
// Descripció: Aquest document serveix per configurar el respawn de les unitats com a espectadors. De    //
//             moment s'utilitza el respawn de ACE3 (http://ace3mod.com/wiki/feature/spectator.html)     //
//             si aquest està disponible o el que hi ha per defecte de bohemia en cas contrari.          //
// Canvis: 0.1 (2015/09/11) Versió inicial.                                                              //
//=======================================================================================================//

private ["_RscLayer"];

if (cc_mod_ace3) then {
    [true] call ace_spectator_fnc_setSpectator;
    
    if ( cc_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (cc_respawn_espectador.sqf): Utilitzant el mode espectador de ACE."];
    };
} else {

    RscSpectator_allowFreeCam = false;
    _RscLayer = "BIS_fnc_respawnSpectator" call bis_fnc_rscLayer;
    _RscLayer cutrsc ["RscSpectator","plain"];
    
    if ( cc_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (cc_respawn_espectador.sqf): Utilitzant el mode espectador de BI."];
    };
};

//============================================ FI DEL FITXER ============================================//