

private ["_marker", "_spawnPos"];

_spawnPos = [];

_marker = createMarker ["Assassinate", _position];
_marker setMarkerType "hd_objective";
_marker setMarkerColor "ColorBLUFOR";
_marker setMarkerText "Assassinate";
_marker setMarkerSize [1,1];

_spawnPos = [(getMarkerPos _marker select 0) + floor random [-25, 0, 25], (getMarkerPos _marker select 1) + floor random [-25, 0, 25], 0];

switch (_faction) do {

    case "civilian": {
        if (isNil "bmt_group_dynMission_ass_civ") then {
            bmt_group_dynMission_ass_civ = createGroup civilian;
        };

        "C_Nikos" createUnit [_spawnPos, bmt_group_dynMission_ass_civ, "this disableAI ""MOVE""; bmt_dynMission_assCiv = this;"];
        [playableUnits, ["bmt_dynMission_assassinate"], ["Assassinate the local insurgent","Assassinate",_marker],[0,0,0],1,2,true] call BIS_fnc_taskCreate;
    };

};
    _Aciv = createGroup civilian;
    "C_Nikos" createUnit [[(getMarkerpos _Amarker select 0) + random 50 - random 50, (getMarkerpos _Amarker select 1) + random 50 - random 50,0], _Aciv,"AOW_TA1 = this"];
    AOW_TA1 disableAI "MOVE";

    if !("Task3" call SHK_Taskmaster_hasTask) then {
    	    ["Task3",localize "str_AOW_Assassinate1",localize "str_AOW_Assassinate2"] call SHK_Taskmaster_add;
    	} else {["Task3","created"] call SHK_Taskmaster_upd;};

    deleteMarker "TempTask";
	waitUntil {sleep 1; !alive AOW_TA1};
	deleteMarker "AOW_Assassinate1";
	["Task3","succeeded"] call SHK_Taskmaster_upd;
