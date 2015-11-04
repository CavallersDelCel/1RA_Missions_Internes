// Script adaptat de l'exemple nº 10 de DAC (activació/desactivació de zones per Silola)

switch ((_this select 3) select 0) do
{
	case 1:	{
				player removeAction pAction1;
				[z1] remoteExecCall ["DAC_Activate", 2, false];
				sleep 5;
				pAction1 = player addaction ["Desactivar Inf.","ActionInf.sqf",[2]];
                hint "Activant zona amb infanteria.";
			};
	case 2:	{
				player removeAction pAction1;
				[z1] remoteExecCall ["DAC_Deactivate", 2, false];
				sleep 5;
				pAction1 = player addaction ["Activar Inf.","ActionInf.sqf",[1]];
                hint "Desactivant zona amb infanteria.";
			};
	Default {};
};
