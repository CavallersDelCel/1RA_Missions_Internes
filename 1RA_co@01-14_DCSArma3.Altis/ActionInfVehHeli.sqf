// Script adaptat de l'exemple nº 10 de DAC (activació/desactivació de zones per Silola)

switch ((_this select 3) select 0) do
{
	case 1:	{
				player removeAction pAction5;
				[[z5],"DAC_Activate",false,false, true] call BIS_fnc_MP;
				sleep 5;
				pAction5 = player addaction ["Desactivar Inf. + Veh. + Heli","ActionInfVehHeli.sqf",[2]];
                hint "Activant zona amb infanteria, vehicles i helicòpters.";
			};
	case 2:	{
				player removeAction pAction5;
				[[z5],"DAC_Deactivate",false,false, true] call BIS_fnc_MP;
				sleep 5;
				pAction5 = player addaction ["Activar Inf. + Veh. + Heli","ActionInfVehHeli.sqf",[1]];
                hint "Desactivant zona amb infanteria, vehicles i helicòpters.";
			};
	Default {};
};