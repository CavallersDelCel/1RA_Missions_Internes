//=======================================================================================================//
// File: bmt_ace3_configuration.sqf                                                                      //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/04/27                                                                             //
// Description: This document is used for configuring ACE3 variables that affect units like medics,      //
//              repair specialists, explosive specialists, etc.                                          //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

private ["_medics", "_doctors", "_medicVehicles", "_medicFacilities"];
private ["_expSpecialists", "_engineers", "_repairVehicles", "_repairFacilities"];
private ["_surrenderedUnits", "_handcuffedUnits"];

// Unit name variables must be declared as string.
_medics = ["bmt_alpha1_3", "bmt_alpha2_3"];
_medicVehicles = [];
_medicFacilities = ["bmt_hospital"];
_doctors = [];
_expSpecialists = [];
_engineers = [];
_repairVehicles = [];
_repairFacilities = [];
_surrenderedUnits = [];
_handcuffedUnits = [];

//============================================= END OF FILE =============================================//
