//=======================================================================================================//
// File: cc_intro_uav.sqf                                                                                //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/04/03                                                                             //
// Description: This document prepares a introduction screen with a UAV feed.                            //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

params ["_markerName", "_text", "_uavMovement", "_markers"];
private ["_colorWest", "_colorEast", "_colorInd"];

_colorWest = WEST call BIS_fnc_sideColor;
_colorEast = EAST call BIS_fnc_sideColor;
_colorInd = INDEPENDENT call BIS_fnc_sideColor;

// set transparency for colors
{
   _x set [3, 0.73]
} forEach [_colorWest, _colorEast];

waitUntil{!(isNil "cc_preload_completat")};

// Disable simulation for all units during the UAV feed.
{
    _x enableSimulation false;
} forEach allUnits;

enableEnvironment false;
0 fadeSound 0;

[
    markerPos _markerName,     // Target position/object
    format ["%1",_text],                     // Text to display
    _uavMovement select 0,     // Altitude (in meters)
    _uavMovement select 1,     // Radius of the circular movement (in meters)
    _uavMovement select 2,     // Viewing angle (in degrees)
    _uavMovement select 3,     // Direction of camera movement (0: anti-clockwise, 1: clockwise, default: random)
    [   
        // add Icon at enemy/target position
       ["\a3\ui_f\data\map\markers\nato\o_inf.paa", _colorEast, markerPos "markerRescue", 1, 1, 0, "Rescatar els marines", 0]
    ]
] spawn BIS_fnc_establishingShot;

waitUntil { !isNil { BIS_missionStarted } };
     
// Screen starts.
titleCut ["", "BLACK FADED", 5];
        
// Reenable simulation for all units.
{
    _x enableSimulation true;
} forEach allUnits;

[] spawn {
    sleep 5;
    titleCut ["", "BLACK IN", 5];
    "dynamicBlur" ppEffectEnable true;
    "dynamicBlur" ppEffectAdjust [6];
    "dynamicBlur" ppEffectCommit 0;
    "dynamicBlur" ppEffectAdjust [0.0];
    "dynamicBlur" ppEffectCommit 5;
    enableEnvironment true;
    5 fadeSound 1;  
};


//============================================= END OF FILE =============================================//