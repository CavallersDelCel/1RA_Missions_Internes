private ["_unit","_corpse"];

_unit = _this select 0;
_corpse = _this select 1;

if (local _unit) then {
	_corpse removeAction INS_REV_GVAR_id_settings;
	INS_REV_GVAR_id_settings = _unit addAction["<t size='1.2' shadow='2' color='#fffe80'>Parametres</t>","INS_revive\setting_dialog\act_open_settings.sqf",[],-99,false,false,"",''];

};
