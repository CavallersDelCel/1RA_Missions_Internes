//=======================================================================================================//
// File: bmt_respawn_onPlayerRespawn.sqf                                                                 //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/10/02                                                                             //
// Description: This document configures the onPlayerRespawn event. For the moment ACE3 spectator mode   //
//              (http://ace3mod.com/wiki/feature/spectator.html) in case it is available, defaulting to  //
//              the vanila one if ACE3 is not loaded.                                                    //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Parameters passed when onPlayerRespawn.
params [["_unit",objNull], ["_oldUnit",objNull], ["_respawn",0], ["_respawnDelay",0]];
private ["_unitRole", "_layer"];

// If there is respawn of type BIRD.
if (_respawn == 1) then {
    // Hide seagull body.
    if (_unit isKindOf "seagull") then {
        if (bmt_mod_ace3 && (bmt_param_ace3_spectator ==  1)) then {
            _oldUnit = selectRandom (allUnits - allDead);
            [_unit] call ace_spectator_fnc_stageSpectator;
        } else {
           //_unit remoteExecCall [0, true];
        };
    };

    // If ACE 3 is loaded use the spectator mode of ACE3. Use the vanila one otherwise (End Game Spectator).
    if (bmt_mod_ace3 && (bmt_param_ace3_spectator ==  1)) then {
        if ( bmt_param_debugOutput == 1) then {
            player sideChat format ["DEBUG (bmt_respawn_onPlayerRespawn.sqf): Using ACE3 spectator mode."];
        };

        // Configure ACE3 spectator camera.
        [2, _oldUnit] call ace_spectator_fnc_setCameraAttributes;
        [true] call ace_spectator_fnc_setSpectator;
    } else {
        if (bmt_param_debugOutput == 1) then {
            player sideChat format ["DEBUG (bmt_respawn_onPlayerRespawn.sqf): Using vanila spectator mode."];
        };

        // Put units into spectator mode depending on the radio system used.
        // Task Force Arrowhead Radio (TFAR)
        if (bmt_mod_tfar) then {
            [player, true] call TFAR_fnc_forceSpectator;
        };

        // Advanced Combat Radio Environment 2 (ACRE 2)
        if (bmt_mod_acre2) then {
            [true] call acre_api_fnc_setSpectator;
        };

        BIS_fnc_feedback_allowPP = false;  // Disable dying effects.
        // Start the End Game Spectator.
        // - All sides can be viewed.
        // - The AI cannot be observed.
        ["Initialize", [player, [], false]] call BIS_fnc_EGSpectator;  
    };
} else {

    _layer = "BIS_fnc_respawnCounter" call bis_fnc_rscLayer;
    _layer cutText ["", "plain"];

    if (bmt_mod_ace3 && (bmt_param_ace3_spectator ==  1)) then {
        [false] call ace_spectator_fnc_setSpectator;
    } else {

        // Exit spectator mode depending on which radio system is used.
        // Task Force Arrowhead Radio (TFAR)
        if (bmt_mod_tfar) then {
            [player, false] call TFAR_fnc_forceSpectator;
        };

        // Advanced Combat Radio Environment 2 (ACRE 2)
        if (bmt_mod_acre2) then {
            [false] call acre_api_fnc_setSpectator;
        };

        BIS_fnc_feedback_allowPP = true;  // Enable dying effects.
        // Exit the End Game Spectator mode.
        ["Terminate"] call BIS_fnc_EGSpectator;
    };

    // Assign equipment before death or default one depending on the role
    if (bmt_param_respawn_saveGear == 1) then {
        //_unitRole = getUnitLoadout _oldUnit;
        //_unit = setUnitLoadout [_unitRole, false];  // Do not rearm, partially emptied magazines will not be refilled.
    } else {
        _unitRole = _unit getVariable "bmt_var_configEquipment";
        [_unitRole, _unit] call bmt_fnc_configEquipment;
    };
};

//============================================= END OF FILE =============================================//
