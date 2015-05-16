_unitat = _this select 1;

switch (_unitat) do
{
	case Esq1_SL:
	{
		["sl",_unitat] call cc_fnc_configEquipacio;
	};
	case Esq1_RFL:
	{
		["rflat",_unitat] call cc_fnc_configEquipacio;
	};
	
	case Esq1_GR:
	{
		["gr",_unitat] call cc_fnc_configEquipacio;
	};
	
	case Esq1_AR:
	{
		["ar",_unitat] call cc_fnc_configEquipacio;
	};
	
	case Esq1_DM:
	{
		["dm",_unitat] call cc_fnc_configEquipacio;
	};
	
	case Esq1_ME:
	{
		["me",_unitat] call cc_fnc_configEquipacio;
	};
};