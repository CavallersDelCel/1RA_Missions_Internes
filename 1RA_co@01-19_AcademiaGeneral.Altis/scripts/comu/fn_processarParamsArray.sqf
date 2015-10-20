//=======================================================================================================//
// Arxiu: fn_processarParamsArray.sqf                                                                    //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 08/03/2015                                                                      //
// Descripció: Aquest document serveix per processar la matriu paramsArray. Fitxer basat en:             //
//             http://www.ferstaberinde.com/f3/en/)                                                      //
//=======================================================================================================//

_paramArray = paramsArray;
{
    _nomParametre = (configName ((missionConfigFile >> "Params") select _forEachIndex));
    _valorParametre = _nomParametre call BIS_fnc_getParamValue;
    call compile format["%1 = %2", _nomParametre, _valorParametre];
    if (isServer OR isDedicated) then {
      publicVariable _nomParametre;
    };
} forEach _paramArray;
    
//============================================ FI DEL FITXER ============================================//