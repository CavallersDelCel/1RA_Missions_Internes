_unit = _this select 0;
_corpse = _this select 1;

if (local _unit) then {
	_corpse removeAction tawvd_action;
	
	tawvd_action = _unit addAction["<t color='#fffe80'>Par�metres</t>","INS_revive\taw_vd\open.sqf",[],-99,false,false,"",''];
};