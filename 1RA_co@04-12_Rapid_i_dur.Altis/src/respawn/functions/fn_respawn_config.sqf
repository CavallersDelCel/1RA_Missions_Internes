#include "..\..\..\missionConfig\bmt_missionParameters_definitions.hpp"
private ["_numRespawns"];

switch (bmt_param_respawn_numTickets) do {

    // Unlimited amount of respawns.
    case 0: {
        _numRespawns = -1;
    };

    // No respawn is allowed
    case 1: {
        _numRespawns = 1;
    };

    // The number of respawns is mission dependant.
    case 2: {
        _numRespawns = BMT_RESPAWN_NUM_ALLOWED_RESPAWNS + 1;
    };
    //cases (insertable by snippet)
};

switch (bmt_param_respawn_tickets) do {
    case 0: {
        if (isServer) then {
            player sidechat format ["DEBUG (respawn.sqf): Assigning respawn for sides."];
            [west, _numRespawns] call BIS_fnc_respawnTickets;
            [east, _numRespawns] call BIS_fnc_respawnTickets;
            [resistance, _numRespawns] call BIS_fnc_respawnTickets;
            [civilian, _numRespawns] call BIS_fnc_respawnTickets;
        };
    };
    case 1: {
        player sidechat format ["DEBUG (respawn.sqf): Assigning respawn for players."];
        [player, _numRespawns] remoteExecCall ["BIS_fnc_respawnTickets", 2, false];
    };
};
