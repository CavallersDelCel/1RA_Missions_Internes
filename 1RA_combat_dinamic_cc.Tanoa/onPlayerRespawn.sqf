// Safety
waitUntil {alive player};

// Avoid annoying low ammo / map position message
[] spawn {
    _voice = speaker player;
	player setSpeaker "NoVoice";
	sleep 5;
	player setSpeaker _voice;
};

// onPlayerRespawn is also triggered by getting incapacited
if (player getVariable "BIS_revive_incapacitated") exitWith {
	if (paramsArray select 17 == 0) then {
		[player] call btc_qr_fnc_call_for_help
	};
};

// Support requester
switch (paramsArray select 9) do
{
	case 0: {};
	case 1: {player synchronizeObjectsAdd [AOW_Support_Logistic];};
	case 2: {player synchronizeObjectsAdd [AOW_Support_Offensive];};
	case 3: {player synchronizeObjectsAdd [AOW_Support_All];};
};

// Use saved loadout if it exist
_respawnloadout = profileNamespace getVariable "CD_Equipament_Check";
if (!isNil "_respawnloadout") then {

	_carregarPerfils = ["Carregar perfils (Si) o mantenir equipació prèvia al morir (No)?", "Perfils 1RA", true, true] call BIS_fnc_guiMessage;
	if (_carregarPerfils) then {
		cc_script_perfils = [] execVM "cc_equipacio_rhs_usarmy_d_perfils.sqf";
	} else {
		[player, [profileNamespace, "CD_Equipament"]] call BIS_fnc_loadInventory;
	};
} else {
	cc_script_perfils = [] execVM "cc_equipacio_rhs_usarmy_d_perfils.sqf";
};

sleep 1;
// If game just started then create base, if player jip or another player create base then teleport to base
if (player distance [0,0,0] < 100 && isNil "baseFlagPole") then {
 //   waitUntil {!isNil "AOW_base_creation_player"};
 //   if (AOW_can_create_base && player == AOW_base_creation_player) then {
//		AOW_can_create_base = false;
	//	publicVariable "AOW_can_create_base";
	//    [] execVM "AOW_MissionCreator\BaseCreator\DialogBase.sqf";
//	} else {
        hint localize "str_AOW_Respawn1";
        //waitUntil {getMarkerColor "VVS1" != ""};
        player setPosATL [(getMarkerpos "respawn_west" select 0) + random 4 - random 4, (getMarkerpos "respawn_west" select 1) + random 4 - random 4,0];
        //player setDir (markerDir "VVS1");
    //};
};
if (player distance [0,0,0] < 100 && !isNil "baseFlagPole") then {
	//waitUntil {getMarkerColor "VVS1" != ""};
	player setPosATL [(getMarkerpos "respawn_west" select 0) + random 4 - random 4, (getMarkerpos "respawn_west" select 1) + random 4 - random 4, 0];
	//player setDir (markerDir "VVS1");
};