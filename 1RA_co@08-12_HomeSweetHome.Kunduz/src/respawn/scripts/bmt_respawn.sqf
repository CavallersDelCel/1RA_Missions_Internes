//=======================================================================================================//
// File: bmt_respawn.sqf                                                                                 //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/10/02                                                                             //
// Description: This document configures the unit respawn. For the moment ACE3 spectator mode            //
//              (http://ace3mod.com/wiki/feature/spectator.html) in case it is available, defaulting to  //
//              the vanila one if ACE3 is not loaded.                                                    //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Parameters passed when onPlayerRespawn and onPlayerKilled.
params [["_unit",objNull], ["_assassin",objNull], ["_respawn",0], ["_respawnDelay",0]];

if (isNull _assassin) then {
    _assassin = _unit;
};

if ((_respawn == 0) or (_respawn == 1) and ({alive _x} count allPlayers <= 0)) exitWith {
    remoteExec ["bmt_fnc_endMission", 0, true];
};

if (alive _unit) then {
    // If there is respawn of type BIRD.
    if (_respawn == 1) then {
        // Hide seagull body.
       if (_unit isKindOf "seagull") then {
           if (bmt_mod_ace3 && (bmt_param_ace3_spectator ==  1)) then {
              [true] call ace_spectator_fnc_stageSpectator;
           } else {
               _unit remoteExecCall [0, true];
           };
       };

        // If ACE 3 is loaded use the spectator mode of ACE3. Use the vanila one otherwise (End Game Spectator).
        if (bmt_mod_ace3 && (bmt_param_ace3_spectator ==  1)) then {
            if ( bmt_param_debugOutput == 1) then {
                player sideChat format ["DEBUG (bmt_respawn_espectador.sqf): Using ACE3 spectator mode."];
            };

            // Configure ACE3 spectator camera.
            [0, _assassin] call ace_spectator_fnc_setCameraAttributes;
            [true] call ace_spectator_fnc_setSpectator;
        } else {
            if (bmt_param_debugOutput == 1) then {
                player sideChat format ["DEBUG (bmt_respawn_espectador.sqf): Using vanila spectator mode."];
            };

            // Put units into spectator mode depending on the radio system used.
            // Task Force Arrowhead Radio (TFAR)
            if (bmt_mod_tfar) then {
                [_unit, true] call TFAR_fnc_forceSpectator;
            };

            // Advanced Combat Radio Environment 2 (ACRE 2)
            if (bmt_mod_acre2) then {
                [true] call acre_api_fnc_setSpectator;
            };

            // Start the End Game Spectator.
            // - All sides can be viewed.
            // - The AI cannot be observed.
            ["Initialize", [_unit, [], false]] call BIS_fnc_EGSpectator;
        };
    } else {
        if (bmt_mod_ace3 && (bmt_param_ace3_spectator ==  1)) then {
            [false] call ace_spectator_fnc_setSpectator;
        } else {

            // Exit spectator mode depending on which radio system is used.
            // Task Force Arrowhead Radio (TFAR)
            if (bmt_mod_tfar) then {
                [_unit, false] call TFAR_fnc_forceSpectator;
            };

            // Advanced Combat Radio Environment 2 (ACRE 2)
            if (bmt_mod_acre2) then {
                [false] call acre_api_fnc_setSpectator;
            };

            // Exit the End Game Spectator mode.
            ["Terminate"] call BIS_fnc_EGSpectator;
        };

        // Assign equipment
        _unitRole = _unit getVariable "bmt_var_configEquipment";
        [_unitRole, _unit] call bmt_fnc_configEquipment;
    };
} else {

    // If respawn time is less than 1 second, do not enter spectator mode.
    if (playerRespawnTime <= 1) exitWith {};

    // If ACE 3 is loaded use the spectator mode of ACE3. Use the vanila one otherwise (End Game Spectator).
    if (bmt_mod_ace3 && (bmt_param_ace3_spectator ==  1)) then {
        if ( bmt_param_debugOutput == 1) then {
            player sideChat format ["DEBUG (bmt_respawn_espectador.sqf): Using ACE3 spectator mode."];
        };

        // Configure ACE3 spectator camera.
        [0, _assassin] call ace_spectator_fnc_setCameraAttributes;
        [true] call ace_spectator_fnc_setSpectator;
    } else {
        if ( bmt_param_debugOutput == 1) then {
            player sideChat format ["DEBUG (bmt_respawn_espectador.sqf): Using vanila spectator mode."];
        };

        // Put units into spectator mode depending on the radio system used.
        // Task Force Arrowhead Radio (TFAR)
        if (bmt_mod_tfar) then {
            [_unit, true] call TFAR_fnc_forceSpectator;
        };

        // Advanced Combat Radio Environment 2 (ACRE 2)
        if (bmt_mod_acre2) then {
            [true] call acre_api_fnc_setSpectator;
        };

        // Start the End Game Spectator.
        // - All sides can be viewed.
        // - The AI cannot be observed.
        ["Initialize", [_unit, [], false]] call BIS_fnc_EGSpectator;
    };
};

//============================================= END OF FILE =============================================//
