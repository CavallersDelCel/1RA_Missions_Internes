//=======================================================================================================//
// File: bmt_vcomai_init.sqf                                                                             //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/12/06                                                                             //
// Description: This file initialises VCOM AI script.                                                    //
// Changes: 1.0 (2015/12/06) Initial version.                                                            //
//=======================================================================================================//

if (bmt_param_vcomai_enabled == 0) exitWith {};

// missionEXEC -> Load the unit setup & more
[] execVM "externalScripts\VCOMAI\init.sqf";

//============================================= END OF FILE =============================================//
