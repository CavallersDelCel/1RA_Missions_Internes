//=======================================================================================================//
// File: fn_acre2_addRadios.sqf                                                                          //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/04/28                                                                             //
// Description: This function adds the defined radios to a unit's inventory in case the default radios   //
//              that are assigned are not suficient. Advanced Combat Radio Environment 2 (ACRE2)         //
//              http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                        //
//              Arguments:                                                                               //
//               - none                                                                                  //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Variable declarations.
private["_unit", "_unitRole"];

_unit = player;

_unitRole = _unit getVariable ["bmt_var_configEquipment", "NIL"];

// Assign radios depending on the unit role (fn_configEquipment).
if (!isNil "_unitRole") then {

    // Check if it is necessary to assign the radio defined in "bmt_acre2_riflemanRadio" to all units.
    if(bmt_acre2_riflemanRadioEverybody) then {
            if( _unit canAdd bmt_acre2_riflemanRadio ) then {
            _unit addItem bmt_acre2_riflemanRadio;
        } else {
            player sideChat format ["ERROR (fn_acre2_addRadios.sqf): Cannot add radio %1.", bmt_acre2_riflemanRadio];
        };
    } else {
        if (_unitRole in bmt_array_riflemanRadio) then {
            if( _unit canAdd bmt_acre2_riflemanRadio ) then {
                _unit addItem bmt_acre2_riflemanRadio;
            } else {
                player sideChat format ["ERROR (fn_acre2_addRadios.sqf): Cannot add radio %1.", bmt_acre2_riflemanRadio];
            };
        };
    };

    // Add short range radios.
    if (_unitRole in bmt_array_shortRangeRadio) then {
        if( _unit canAdd bmt_acre2_shortRangeRadio ) then {
            _unit addItem bmt_acre2_shortRangeRadio;
        } else {
            player sideChat format ["ERROR (fn_acre2_addRadios.sqf): Cannot add radio %1.", bmt_acre2_shortRangeRadio];
        };
    };

    // Add long range radios.
    if (_unitRole in bmt_array_longRangeRadio) then {
        if( _unit canAdd bmt_acre2_longRangeRadio ) then {
            _unit addItemToBackPack bmt_acre2_longRangeRadio;
        } else {
            player sideChat format ["ERROR (fn_acre2_addRadios.sqf): Cannot add radio %1.", bmt_acre2_longRangeRadio];
        };
    };
};

//============================================= END OF FILE =============================================//
