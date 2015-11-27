//=======================================================================================================//
// Arxiu: cc_acre2_configurarPresets.sqf                                                                 //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/05/10                                                                      //
// Descripció: Aquest document serveix per configurar els presets de les diferents radios del Advanced   //
//             Combat Radio Environment 2 (ACRE2)                                                        //
//             http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                         //
// Canvis: 0.1 (2015/05/10) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

private["_llistaRadios", "_llistaPreset", "_radio", "_presetName", "_nomCanals", "_canal", "_presetData"];
//private["_presetData"];

_llistaRadios = ["ACRE_PRC343","ACRE_PRC148","ACRE_PRC152","ACRE_PRC117F"];
_llistaPreset = ["default2","default3","default4"];

{
    _radio = _x;
    {
        _presetName = _x;
        _canal = 0;
        {
            _nomCanals = _x;
            _frequencies = cc_var_frequencies1RA select _forEachIndex;
            {
                _presetData = [_radio, _presetName, _canal] call acre_api_fnc_getPresetChannelData;
                (_presetData select 1) set [0, _frequencies select _forEachIndex];
                (_presetData select 1) set [1, _frequencies select _forEachIndex];
                (_presetData select 1) set [5, toUpper (_nomCanals select _forEachIndex)];
                [_radio, _presetName, _canal, _presetData] call acre_api_fnc_setPresetChannelData;
                _canal = _canal + 1;
            } forEach _nomCanals;
        } forEach cc_var_grups1RA;
    } forEach _llistaPreset;
} forEach _llistaRadios;

//============================================ FI DEL FITXER ============================================//
