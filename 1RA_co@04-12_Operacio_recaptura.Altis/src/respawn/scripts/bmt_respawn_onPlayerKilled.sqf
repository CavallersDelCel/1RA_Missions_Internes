//=======================================================================================================//
// File: bmt_respawn_onPlayerKilled.sqf                                                                  //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/10/02                                                                             //
// Description: This document configures the onPlayerKilled event. For the moment ACE3 spectator mode    //
//              (http://ace3mod.com/wiki/feature/spectator.html) in case it is available, defaulting to  //
//              the vanila one if ACE3 is not loaded.                                                    //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Parameters passed when onPlayerKilled.
params [["_unit",objNull], ["_killer",objNull], ["_respawn",0], ["_respawnDelay",0]];
private ["_numTickets", "_layer"];

// End the mission if there are no alive units and respawn of type "NONE" or "BIRD".
if ((_respawn <= 1) and ({alive _x} count allPlayers <= 0)) exitWith {
    [] remoteExecCall ["bmt_fnc_endMission", 0, true];
};

if (isNull _killer) then {
    _killer = _unit;
};

switch (bmt_param_respawn_tickets) do {
    case 0: { _numTickets = [side _unit] call BIS_fnc_respawnTickets;};
    case 1: { _numTickets = [player] call BIS_fnc_respawnTickets;};
};

//  Do not enter spectator mode if respawn time is less than 1 second.
if (playerRespawnTime <= 1) exitWith {}; 

// Do not enter spectator mode if there are still tickets available.
if (_numTickets >= 1) exitWith {
    _layer = "BIS_fnc_respawnCounter" call bis_fnc_rscLayer;
    _layer cutText ["", "plain"];

    missionnamespace setvariable ["RscRespawnCounter_description", format ["<t size='1' align='center'>%1</t>","Revivint. Tingues més cura el pròxim cop!"]];
    missionnamespace setvariable ["RscRespawnCounter_colorID", 0];
    missionnamespace setvariable ["RscRespawnCounter_Custom", playerRespawnTime];
    _layer cutRsc ["RscRespawnCounter", "plain"];
};

// Use ACE 3 spectator mode if it is configured and the mod is loaded. Use the vanila one otherwise
// (End Game Spectator).
if (bmt_mod_ace3 && (bmt_param_ace3_spectator ==  1)) then {
    if ( bmt_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (bmt_respawn_spectador.sqf): Using ACE3 spectator mode."];
    };

    // Configure ACE3 spectator camera.
    [0, _killer] call ace_spectator_fnc_setCameraAttributes;
    [true] call ace_spectator_fnc_setSpectator;
} else {
    if ( bmt_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (bmt_respawn_spectador.sqf): Using vanila spectator mode."];
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
    ["Initialize", [_unit, [], false]] call BIS_fnc_EGSpectator;
};
