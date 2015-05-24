_spawnPos = getPos TrigInitExtraccio; 
_creation = [_spawnPos, -90, "RHS_CH_47F", WEST] call bis_fnc_spawnvehicle;

heloUnits = [];
if (!isNil "CC_GrupMaritim") then {heloUnits = heloUnits + (units CC_GrupMaritim);};
if (!isNil "CC_EquipTerra") then {heloUnits = heloUnits + (units CC_EquipTerra);};
if (!isNil "CC_Test") then {heloUnits = heloUnits + (units CC_Test);};

heloGroup = _creation select 2;
helo = _creation select 0;
     
    _waypoint1 = heloGroup addWaypoint [ position player, 12];
    _waypoint1 setWayPointBehaviour "CARELESS";
    _waypoint1 setWayPointSpeed "NORMAL";
    _waypoint1 setWayPointType "LOAD";
    _waypoint1 setWayPointCombatMode "WHITE";
    _waypoint1 setWaypointStatements ["true","helo land 'LAND';"];
	helo engineOn true;
     
    waitUntil {{alive _x} count heloUnits == {_x in helo} count heloUnits;};
	     
    _waypoint2 = heloGroup addWaypoint [ getPos TrigExtraccio, 12];
    _waypoint2 setWayPointBehaviour "CARELESS";
    _waypoint2 setWayPointSpeed "NORMAL";
    _waypoint2 setWayPointType "MOVE";
    _waypoint2 setWayPointCombatMode "WHITE";