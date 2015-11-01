
private ["_tipusAccio", "_zones"];

_tipusAccio = (_this select 3) select 0;
_zones = (_this select 3) select 1;

switch (_tipusAccio) do {
    case 1:	{
        (_this select 0) removeAction pAction;
        [_zones,"DAC_Activate",false,false, true] call BIS_fnc_MP;
        sleep 2;
        pAction = (_this select 0) addaction [" <t color='#ff0000'>Des. Patrulla</t>","scripts\DAC\cc_DAC_activarZona.sqf",[2, [z1,z2,z3]];
        hint "Activant la patrulla a la zona.";
    };
    case 2:	{
        (_this select 0) removeAction pAction;
        [_zones,"DAC_Activate",false,false, true] call BIS_fnc_MP;
        sleep 2;
        pAction = (_this select 0) addaction ["<t color='#ff0000'>Act. Patrulla</t>","scripts\DAC\cc_DAC_activarZona.sqf",[1, [z1,z2,z3]];
        hint "Desactivant la patrulla a la zona.";
    };
    Default {};
};
