//=======================================================================================================//
// Arxiu: fn_processarParamsArray.sqf                                                                    //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 08/03/2015                                                                      //
// Descripció: Aquest document serveix per processar la matriu paramsArray. Fitxer basat en:             //
//             http://www.ferstaberinde.com/f3/en/)                                                      //
//             INIT de l'editor el següent:                                                              //
//=======================================================================================================//

_paramArray = paramsArray;
{
	_paramName =(configName ((missionConfigFile >> "Params") select _forEachIndex));
	_paramValue = (_paramArray select _forEachIndex);
	_paramCode = ( getText (missionConfigFile >> "Params" >> _paramName >> "code"));
	_code = format[_paramCode, _paramValue];
	call compile _code;
	if (isServer) then {
		publicVariable _paramName;
	};
} foreach _paramArray;

//============================================ FI DEL FITXER ============================================//