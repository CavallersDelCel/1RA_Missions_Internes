//=======================================================================================================//
// Arxiu: cc_acre2_confCanals.sqf                                                                        //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 10/05/2015                                                                      //
// Descripció: Aquest document serveix per configurar els canals de les diferents radios del Advanced    //
//             Combat Radio Environment 2 (ACRE2)                                                        //
//             http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                         //
//=======================================================================================================//

private["_llistaRadios", "_llistaPreset", "_radio", "_fieldName","_presetName","_contador", "_contFreq", "_nomCanal", "_presetData", "_correcte"];
//private["_presetData"];

_llistaRadios = ["ACRE_PRC148","ACRE_PRC152","ACRE_PRC117F"];
_llistaPreset = ["default2","default3","default4"];

{
	_radio = _x;
	{
		_presetName = _x;
		_contador = 0;
		{
			_nomCanal = _x;
			// Donar un nom al canal
			//["ACRE_PRC152", "default2", _contador, "description", _nomCanal] call acre_api_fnc_setPresetChannelField;
			// Aplicar les freqüències a cada canal
			_presetData = [_radio, _presetName, _contador] call acre_api_fnc_getPresetChannelData;
			//player sideChat format ["ERROR (fn_acre2_confCanals.sqf): Preset %1, %2 ",_presetData select 0, _presetData select 1];
			(_presetData select 1) set [0, cc_acre2_config_FreqCanals select _contador];
			(_presetData select 1) set [1, cc_acre2_config_FreqCanals select _contador];
			(_presetData select 1) set [5, _nomCanal];
			[_radio, _presetName, _contador, _presetData] call acre_api_fnc_setPresetChannelData;

			_contador = _contador + 1;
		} forEach cc_acre2_config_llistaCanals;
	} forEach _llistaPreset;
} forEach _llistaRadios;

//============================================ FI DEL FITXER ============================================//