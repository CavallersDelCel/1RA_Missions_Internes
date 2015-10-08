// Script adaptat de l'exemple nº 10 de DAC (activació/desactivació de zones per Silola)

switch ((_this select 3) select 0) do
{
	case 1:	{
				player removeAction pAction3;
				[[z3],"DAC_Activate",false,false, true] call BIS_fnc_MP;
				sleep 5;
				pAction3 = player addaction ["Desactivar Inf. + Veh. + Bli.","ActionInfVehBli.sqf",[2]];
                hint "Activant zona amb infanteria, vehicles i blindats.";
			};
	case 2:	{
				player removeAction pAction3;
				[[z3],"DAC_Deactivate",false,false, true] call BIS_fnc_MP;
				sleep 5;
				pAction3 = player addaction ["Activar Inf. + Veh. + Bli.","ActionInfVehBli.sqf",[1]];
                hint "Desactivant zona amb infanteria, vehicles i blindats.";
			};
	Default {};
};