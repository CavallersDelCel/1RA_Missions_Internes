_paramDaytimeHour = "paramDaytimeHour" call BIS_fnc_getParamValue;
if (_paramDaytimeHour == 0) then {
setDate [2024, 3, 1, (round(random 24)), (round(random 55))];//(round(random 1440))
} else {
setDate [2024, 3, 1, _paramDaytimeHour, 0];
};
call ghst_fnc_acquirelocations;
[] spawn ghst_fnc_randweather;

//Spawn EBU C-130
_PARAM_C130 = "PARAM_C130" call BIS_fnc_getParamValue;
if (_PARAM_C130 == 1) then {
private ["_markarray","_namearray","_air","_marksel","_VarName"];
_markarray = ["c1","t1"];
_namearray = ["c130c_1","c130t_2"];
	{
	_VarName = _namearray select 0;
	_namearray = _namearray - [_VarName];
	_marksel = _markarray select 0;
	_markarray = _markarray - [_marksel];
	_air = createVehicle [_x,(getmarkerpos _marksel), [], 0, "NONE"];
	_air setVehicleVarName _VarName;
	missionNamespace setVariable [_VarName,_air];
	publicVariable _VarName;
	_air setdir (markerdir _marksel);
	nul = [_air,5,false] execfsm "scripts\ghst_vehrespawn.fsm";
	} foreach ["C130J_Cargo","C130J"];
};

//Spawn NIMITZ Carrier
_PARAM_NIMITZ = "PARAM_NIMITZ" call BIS_fnc_getParamValue;
if (_PARAM_NIMITZ == 1) then {
	_spawnpos = getposasl nimitz_spawn;
	deletevehicle nimitz_spawn;
	_ship = createVehicle ["JDG_carrier_Spawner",_spawnpos, [], 0, "NONE"];
	_ship setVehicleVarName "NIMITZ";
	missionNamespace setVariable ["NIMITZ",_ship];
	publicVariable "NIMITZ";
	_ship setdir 10;
	_ship setposasl getposasl _ship;
	_ship allowDamage false;
	_mark1 = [_spawnpos,"ColorBlack","USS Nimitz 360 Landing","b_naval",[],"Icon",""] call fnc_ghst_mark_point;
} else {
	deletevehicle nimitz_spawn;
};