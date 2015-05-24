_curator = _this select 0;

_curator addCuratorEditableObjects [vehicles,true];
_curator addCuratorEditableObjects [(allMissionObjects "Man"),false];
_curator addCuratorEditableObjects [(allMissionObjects "Air"),true];
_curator addCuratorEditableObjects [(allMissionObjects "Ammo"),false];