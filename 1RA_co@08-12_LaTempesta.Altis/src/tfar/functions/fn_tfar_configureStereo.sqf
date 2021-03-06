//=======================================================================================================//
// File: fn_tfar_configureStereo.sqf                                                                     //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/07/25                                                                             //
// Description: This function configures the stereo channels in radios that support additional channels. //
//               - If the unit is equiped with a short range radio or a long range radio and it has the  //
//                 additional channel configured, the active channel will be heard on the left while the //
//                 additional channel will be heard on the right.                                        //
//               - If the unit is equiped with a short range and a long range radio, the short range     //
//                 radio will be heard on the left and the long range radio on the right.                //
//              Task Force Arrowhead Radio (TFAR)                                                        //
//              https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki                         //
//              Arguments:                                                                               //
//               - none                                                                                  //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Variable declarations.
private["_unit","_unitRole"];

_unit = player;
_unitRole = _unit getVariable ["bmt_var_configEquipment", "NIL"];

if (_unitRole != "nil") then {

    // Unit is equiped only with a short range radio.
    if ((_unitRole in bmt_array_shortRangeRadio) and !(_unitRole in bmt_array_longRangeRadio)) then {
        // Active channel will be heard on the left.
        [(call TFAR_fnc_ActiveSWRadio), 1] call TFAR_fnc_setSwStereo;

        // Additional channel will be heard on the right.
        [(call TFAR_fnc_ActiveSWRadio), 2] call TFAR_fnc_setAdditionalSwStereo;
    };

    // Unit is equiped only with a long range radio.
    if (!(_unitRole in bmt_array_shortRangeRadio) and (_unitRole in bmt_array_longRangeRadio)) then {
        // Active channel will be heard on the left.
        [(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, 1] call TFAR_fnc_setLrStereo;

        // Additional channel will be heard on the right.
        [(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, 2] call TFAR_fnc_setAdditionalLrStereo;
    };

    // Unit is equiped with a short range and a long range radios.
    if ((_unitRole in bmt_array_shortRangeRadio) and (_unitRole in bmt_array_longRangeRadio)) then {
        // Short range radio will be heard on the left.
        [(call TFAR_fnc_ActiveSWRadio), 1] call TFAR_fnc_setSwStereo;
        [(call TFAR_fnc_ActiveSWRadio), 1] call TFAR_fnc_setAdditionalSwStereo;

        /// Long range radio will be heard on the right.
        [(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, 2] call TFAR_fnc_setLrStereo;
        [(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, 2] call TFAR_fnc_setAdditionalLrStereo;
    };
};

//============================================= END OF FILE =============================================//
