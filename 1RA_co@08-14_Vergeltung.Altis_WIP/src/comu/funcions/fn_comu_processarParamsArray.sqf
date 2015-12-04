//=======================================================================================================//
// Arxiu: fn_comu_processarParamsArray.sqf                                                               //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/03/08                                                                      //
// Descripció: Aquest document serveix per processar la matriu paramsArray. Fitxer basat en:             //
//             http://www.ferstaberinde.com/f3/en/)                                                      //
// Canvis: 0.1 (2015/03/08) Versió inicial                                                               //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

_paramArray = paramsArray;
{
    _nomParametre = (configName ((missionConfigFile >> "Params") select _forEachIndex));
    if (!(["paramLinia", _nomParametre, true] call BIS_fnc_inString)) then {
        _valorParametre = _nomParametre call BIS_fnc_getParamValue;
        call compile format["%1 = %2", _nomParametre, _valorParametre];
        if (isServer) then {
          publicVariable _nomParametre;
        };
    };
} forEach _paramArray;

//============================================ FI DEL FITXER ============================================//
