
// This script executes only on the server.

if (!isServer) exitWith {};

params ["_missionType"];

switch (_missionType) do {
	case "bmt_dynMission_assassinate": { [] call bmt_fnc_dynMission_assassinate;};
};

//============================================= END OF FILE =============================================//
