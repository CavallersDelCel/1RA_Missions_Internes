//=======================================================================================================//
// File: bmt_acre2_configurePresets.sqf                                                                  //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/05/10                                                                             //
// Description: This script configures the presets for the different radios of Advanced Combat Radio     //
//              Environment 2 (ACRE2) http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home  //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

private["_radioList", "_presetList", "_radio", "_presetName", "_channelName", "_channel", "_presetData"];

_radioList = ["ACRE_PRC343","ACRE_PRC148","ACRE_PRC152","ACRE_PRC117F"];
_presetList = ["default2","default3","default4"];

{
    _radio = _x;
    {
        _presetName = _x;
        _channel = 1;
        {
            _channelName = _x;
            _frequencies = bmt_array_frequenciesShortRange select _forEachIndex;
            {
                _presetData = [_radio, _presetName, _channel] call acre_api_fnc_getPresetChannelData;
                //diag_log format ["ACRE 2 preset info %1", _presetData];
                (_presetData select 1) set [0, _frequencies select _forEachIndex];
                (_presetData select 1) set [1, _frequencies select _forEachIndex];
                (_presetData select 1) set [5, toUpper (_channelName select _forEachIndex)];
                [_radio, _presetName, _channel, _presetData] call acre_api_fnc_setPresetChannelData;
                _channel = _channel + 1;
            } forEach _channelName;
        } forEach bmt_array_groups;
    } forEach _presetList;
} forEach _radioList;

//============================================= END OF FILE =============================================//
