//=======================================================================================================//
// File: fn_tfar_addRadios.sqf                                                                           //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/03/09                                                                             //
// Description: This function adds the defined radios to a unit's inventory in case the default radios   //
//              that are assigned are not suficient. Task Force Arrowhead Radio (TFAR)                   //
//              https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki                         //
//              Arguments:                                                                               //
//               - none                                                                                  //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Variable declarations.
private["_unit", "_unitRole", "_longRangeRadio","_shortRangeRadio","_riflemanRadio", "_radioActiva" ,"_objectsBackpack"];

_unit = player;

_unitRole = _unit getVariable ["bmt_var_configEquipment", "NIL"];

// Assign radios depending on unit's side.

switch ((side player)) do {
    case (west):
    {
        _longRangeRadio = bmt_list_tfar_radiosWest select 0;
        _shortRangeRadio = bmt_list_tfar_radiosWest select 1;
        _riflemanRadio = bmt_list_tfar_radiosWest select 2;
    };
    case (east):
    {
        _longRangeRadio = bmt_list_tfar_radiosEast select 0;
        _shortRangeRadio = bmt_list_tfar_radiosEast select 1;
        _riflemanRadio = bmt_list_tfar_radiosEast select 2;
    };
    default {
        _longRangeRadio = bmt_list_tfar_radiosGuer select 0;
        _shortRangeRadio = bmt_list_tfar_radiosGuer select 1;
        _riflemanRadio = bmt_list_tfar_radiosGuer select 2;
    };
};

// Assign radios depending on unit role (fn_configEquipment).
if (!isNil "_unitRole") then {

    if( !tf_give_microdagr_to_soldier) then {
        _unit unlinkItem "ItemWatch";
        _unit linkItem "ItemWatch";
        };

    // Add rifleman and short range radios.
    if(_unitRole in bmt_array_riflemanRadio ) then {
        _unit linkItem _riflemanRadio;
    } else {
        if(_unitRole in bmt_array_shortRangeRadio) then {
            _unit linkItem _shortRangeRadio;
        };
    };

    // Add long range radios and all the objects that where originally in the backpack.
    if( _unitRole in bmt_array_longRangeRadio ) then {
        _objectsBackpack = backpackItems player;
        removeBackpack _unit;
        _unit addBackpack _longRangeRadio;
        {
            _unit addItemToBackpack _x
        } forEach _objectsBackpack;
    };
};

//============================================= END OF FILE =============================================//
