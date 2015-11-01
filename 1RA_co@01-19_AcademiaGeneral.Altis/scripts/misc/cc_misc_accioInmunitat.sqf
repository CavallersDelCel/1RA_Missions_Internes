private ["_tipusAccio"];

_tipusAccio = (_this select 3) select 0;

switch (_tipusAccio) do {
    case 1:	{
        (_this select 0) removeAction pInmunitat;
        [{{
            if (local _x) then {
                _x allowDamage false;
            };
        } forEach playableUnits;},"BIS_fnc_spawn", true, true, false] call BIS_fnc_MP;
        //(_this select 0) allowDamage false;
        sleep 2;
        pInmunitat = (_this select 0) addaction ["<t color='#ff0000'>Des. Inmunitat</t>","scripts\misc\cc_misc_accioInmunitat.sqf",[2]];
        //hint "Els jugadors són inmunes al mal.";
    };
    case 2:	{
        (_this select 0) removeAction pInmunitat;
        [{{
            if (local _x) then {
                _x allowDamage true;
                hint "Inmune al mal.";
            };
        } forEach playableUnits;},"BIS_fnc_spawn", true, true, false] call BIS_fnc_MP;
        sleep 2;
        pInmunitat = (_this select 0) addaction ["<t color='#ff0000'>Act. Inmunitat</t>","scripts\misc\cc_misc_accioInmunitat.sqf",[1]];
        hint "Els jugadors tornen a ser mortals.";
    };
    Default {};
};
