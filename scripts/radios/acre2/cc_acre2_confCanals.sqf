//=======================================================================================================//
// Arxiu: cc_acre2_confCanals.sqf                                                                        //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 10/05/2015                                                                      //
// Descripció: Aquest document serveix per configurar els canals de les diferents radios del Advanced    //
//             Combat Radio Environment 2 (ACRE2)                                                        //
//             http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                         //
//=======================================================================================================//

private["_llistaRadios", "_llistaPreset", "_radio", "_fieldName","_presetName","_contador", "_nomCanal"];

_llistaRadios = ["ACRE_PRC148","ACRE_PRC152","ACRE_PRC117F"];
_llistaPreset = ["default2","default3","default4"];

{
	_radio = _x;
	switch (_radio) do {
		case "ACRE_PRC148": {_fieldName = "label"};
		case "ACRE_PRC152": {_fieldName = "description"};
		case "ACRE_PRC117F": {_fieldName = "name"};
		default {_fieldName = ""};
	};
	
	{
		_presetName = _x;
		_contador = 1;
		{
			_nomCanal = _x;
			[_radio, _presetName, _contador, _fieldName, _nomCanal] call acre_api_fnc_setPresetChannelField;
			_contador = _contador + 1;
		} forEach cc_acre2_config_llistaCanals;		
	} forEach _llistaPreset;
	
} forEach _llistaRadios;

//============================================ FI DEL FITXER ============================================//