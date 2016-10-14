params ["_ammoBox"];

private["_parachute"]

_ammoBox allowDamage false;

// Free fall
waitUnit {position _ammoBox select 2 < 300};

// Deploy parachute
_parachute = createVehicle ["B_Parachute_02_F", position _ammoBox, [], 0, 'FLY'];
_ammoBox attachTo [_parachute, [0,0,-1.3]];

waitUntil {(position _ammoBox select 2 < 0.5) or (isNil _parachute)};

// Detach parachute
detach _ammoBox;

sleep 1;
_ammoBox setPos [position _ammoBox select 0, position _ammoBox select 1, 0];

_ammoBox allowDamage true;
