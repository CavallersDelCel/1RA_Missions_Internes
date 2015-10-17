//=======================================================================================================//
// Arxiu: cc_respawn.sqf                                                                                 //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 2015/10/02                                                                      //
// Descripció: Aquest document serveix per configurar el respawn de les unitats com a espectadors. De    //
//             moment s'utilitza el respawn de ACE3 (http://ace3mod.com/wiki/feature/spectator.html)     //
//             si aquest està disponible o el que hi ha per defecte de bohemia en cas contrari.          //
// Canvis: 0.1 (2015/10/02) Versió inicial.                                                              //
//=======================================================================================================//

// Paràmetres que es passen al fer onPlayerRespawn i onPlayerKilled.
params [["_unitat",objNull], ["_assassi",objNull], ["_respawn",0], ["_respawnDelay",0]];

private ["_rscLayer"];
_rscLayer = "BIS_fnc_respawnSpectator" call bis_fnc_rscLayer;

if (isNull _assassi) then {
    _assassi = _unitat;
};

if ((_respawn == 0) or (_respawn == 1) and ({alive _x} count allPlayers <= 0)) exitWith {
    [[],"cc_fnc_finalitzarMissio",true] spawn BIS_fnc_MP;
};

if (alive _unitat) then {
    // Si hi ha respawn de tipus BIRD.
    if (_respawn == 1) then {
        // Amaga el cos en cas de que sigui una gavina.
       if (_unitat isKindOf "seagull") then {
           if (cc_mod_ace3) then {
              [true] call ace_spectator_fnc_stageSpectator;
           } else {
               [[_unitat], "hideBody", true, true] call BIS_fnc_MP;
           };
       };

        // Si hi ha ACE3 carregat utilitza el mode espectador de ACE 3. En cas contrari s'utilitza el mode
        // per defecte de Bohemia.
        if (cc_mod_ace3) then {
            if ( cc_param_debugOutput == 1) then {
                player sideChat format ["DEBUG (cc_respawn_espectador.sqf): Utilitzant el mode espectador de ACE."];
            };

            // Configura la càmera de l'espectador de ACE3.
            [0, _assassi] call ace_spectator_fnc_setCameraAttributes;
            [true] call ace_spectator_fnc_setSpectator;
        } else {
            if ( cc_param_debugOutput == 1) then {
                player sideChat format ["DEBUG (cc_respawn_espectador.sqf): Utilitzant el mode espectador de BI."];
            };

            // Posar les unitats en mode espectador depenent del sistema de ràdio.
            // Task Force Arrowhead Radio (TFAR)
            if (cc_mod_tfar) then {
                [_unitat, true] call TFAR_fnc_forceSpectator;
            };

            // Advanced Combat Radio Environment 2 (ACRE 2)
            if (cc_mod_acre2) then {
                [true] call acre_api_fnc_setSpectator;
            };

            RscSpectator_allowFreeCam = true;
            BIS_fnc_feedback_allowPP = false;   // Deshabilita els effectes de morir.
            _rscLayer cutrsc ["RscSpectator","plain"];
        };
    } else {
        if (cc_mod_ace3) then {
            [false] call ace_spectator_fnc_setSpectator;
        } else {

            // Sortir del mode espectador depenent del sistema de ràdio.
            // Task Force Arrowhead Radio (TFAR)
            if (cc_mod_tfar) then {
                [_unitat, false] call TFAR_fnc_forceSpectator;
            };

            // Advanced Combat Radio Environment 2 (ACRE 2)
            if (cc_mod_acre2) then {
                [true] call acre_api_fnc_setSpectator;
            };

            RscSpectator_allowFreeCam = false;
            BIS_fnc_feedback_allowPP = true;
            _rscLayer cuttext ["","plain"];
        };

        // Assignar l'equipació
        _tipusUnitat = _unitat getVariable "cc_var_configEquipacio";
        [_tipusUnitat, _unitat] call cc_fnc_configEquipacio;
    };
} else {

    // No s'entra en mode respawn si el temps és menys de 1s.
    if (playerRespawnTime <= 1) exitWith {};

    // Si hi ha ACE3 carregat utilitza el mode espectador de ACE 3. En cas contrari s'utilitza el mode
    // per defecte de Bohemia.
    if (cc_mod_ace3) then {
        if ( cc_param_debugOutput == 1) then {
            player sideChat format ["DEBUG (cc_respawn_espectador.sqf): Utilitzant el mode espectador de ACE."];
        };

        // Configura la càmera de l'espectador de ACE3.
        [0, _assassi] call ace_spectator_fnc_setCameraAttributes;
        [true] call ace_spectator_fnc_setSpectator;
    } else {
        if ( cc_param_debugOutput == 1) then {
            player sideChat format ["DEBUG (cc_respawn_espectador.sqf): Utilitzant el mode espectador de BI."];
        };

        // Posar les unitats en mode espectador depenent del sistema de ràdio.
        // Task Force Arrowhead Radio (TFAR)
        if (cc_mod_tfar) then {
            [_unitat, true] call TFAR_fnc_forceSpectator;
        };

        // Advanced Combat Radio Environment 2 (ACRE 2)
        if (cc_mod_acre2) then {
            [true] call acre_api_fnc_setSpectator;
        };

        RscSpectator_allowFreeCam = true;
        BIS_fnc_feedback_allowPP = false;   // Deshabilita els effectes de morir.
        _rscLayer cutrsc ["RscSpectator","plain"];
    };
};

//============================================ FI DEL FITXER ============================================//
