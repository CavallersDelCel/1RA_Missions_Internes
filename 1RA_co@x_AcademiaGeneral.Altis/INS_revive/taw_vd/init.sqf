if(isDedicated) exitWith {};

private ["_playerRespawn"];

[] Call Compile preprocessFileLineNumbers "INS_revive\taw_vd\functions.sqf";
//tawvd_action = player addAction["<t color='#fffe80'>Settings</t>","INS_revive\taw_vd\open.sqf",[],-99,false,false,"",''];

//FNC_respawn = Compile preprocessFileLineNumbers "INS_revive\taw_vd\onPlayerRespawn.sqf";
//_playerRespawn = player addEventHandler ["Respawn", {_this Call FNC_respawn;}]; 


if(isNil {tawvd_foot}) then 
{
	tawvd_foot = 2200;//viewDistance;
	tawvd_car = 2500;//viewDistance;
	tawvd_air = 5000;//viewDistance;
};

[] spawn 
{
	private["_old","_recorded"];
	while {true} do
	{
		_recorded = vehicle player;
		
		if((vehicle player) isKindOf "Man" && viewdistance != tawvd_foot) then
		{
			setViewDistance tawvd_foot;
		};
		
		if((vehicle player) isKindOf "LandVehicle" || (vehicle player) isKindOf "Ship" && viewdistance != tawvd_car) then
		{
			setViewDistance tawvd_car;
		};
		
		if((vehicle player) isKindOf "Air" && viewdistance != tawvd_air) then
		{
			setViewDistance tawvd_air;
		};
		waitUntil {sleep 1; _recorded != vehicle player || !alive player};
	};
};