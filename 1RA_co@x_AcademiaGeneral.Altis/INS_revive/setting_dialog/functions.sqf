FNC_check_display = {
	if (INS_REV_CFG_taw_view) then {
		if (GVAR_is_arma3) then {
			closeDialog 0;
			[] execVM 'INS_revive\taw_vd\open.sqf';
		} else {
			closeDialog 0;
			[] execVM "INS_revive\mission_settings\create.sqf";
		};
	} else {
		systemChat "La configuraci� de pantalla no es disponible.";
	};
};

FNC_check_squad = {
	if (INS_REV_CFG_squad_management) then {
		closeDialog 0;
		[] execVM 'INS_revive\DOM_squad\open_dialog.sqf';
	} else {
		systemChat "La gesti� de jugadors no es disponible.";
	};
};

FNC_check_uav = {
	if (INS_REV_CFG_uav && INS_REV_CFG_uav_setting_dialog) then {
		if (GVAR_is_arma3) then {
			closeDialog 0;
			[] execVM 'INS_revive\personal_uav\open_settings.sqf';
		} else {
			systemChat "La configuraci� de UAV no es disponible.";
		};
	} else {
		systemChat "La configuraci� de UAV no es disponible.";
	};
};
