//=======================================================================================================//
// File: bmt_t8_groupConfigs_blu_f.sqf                                                                   //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/11/26                                                                             //
// Description: This file defines group configurations for T8 Units. Only those groups in the vanilla    //
//              BLUFOR faction. Originally based on SavageCDN's configuration files:                     //
//              https://github.com/SavageCDN/T8Units_Group_Configs                                       //
//                                                                                                       //
//              Defined group configurations:                                                            //
//                    Group                             Array name                                       //
//                    Sentry (Infantry)                 _groupArray_BLU_F_BUS_InfSentry                  //
//                    Rifle Squad (Infantry)
//                    Sniper Team (Infantry)
//
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

//=======================================================================================================//
// Regular Infantry                                                                                      //
//=======================================================================================================//

// Air-aircraft Team
_groupArray_BLU_F_BUS_InfTeam_AA = [
	"B_soldier_TL_F",
	"B_soldier_AA_F",
	"B_soldier_AA_F",
	"B_soldier_AAA_F"
];

// Anti-armor Team
_groupArray_BLU_F_BUS_InfTeam_AT = [
	"B_soldier_TL_F",
	"B_soldier_AT_F",
	"B_soldier_AT_F",
	"B_soldier_AAT_F"
];

// Fire Team
_groupArray_BLU_F_BUS_InfTeam = [
	"B_soldier_TL_F",
	"B_soldier_AR_F",
	"B_soldier_GL_F",
	"B_soldier_LAT_F"
];

// Rifle Squad (Infantry)
_groupArray_BLU_F_BUS_InfSquad = [
	"B_soldier_SL_F",
	"B_soldier_TL_F",
	"B_soldier_AR_F",
	"B_soldier_AR_F",
	"B_soldier_AAR_F",
	"B_soldier_LAT_F",
	"B_medic_F",
	"B_soldier_F"
];

// Sentry (Infantry)
_groupArray_BLU_F_BUS_InfSentry = [
	"B_soldier_GL_F",
	"B_soldier_F"
];

// Sniper Team
_groupArray_BLU_F_BUS_SniperTeam = [
	"B_sniper_F",
	"B_spotter_F"
];

// Weapons Squad
_groupArray_BLU_F_BUS_InfSquad_Weapons = [
	"B_soldier_SL_F",
	"B_soldier_AR_F",
	"B_soldier_AAR_F",
	"B_soldier_AT_F",
	"B_soldier_AAT_F",
	"B_soldier_F",
	"B_soldier_A_F",
	"B_medic_F"
];

//=======================================================================================================//
// Support Infantry                                                                                      //
//=======================================================================================================//

// Support Team (CLS)
_groupArray_BLU_F_BUS_support_CLS = [
	"B_soldier_TL_F",
	"B_soldier_AR_F",
	"B_medic_F",
	"B_medic_F"
];

// Support Team (Engineer)
_groupArray_BLU_F_BUS_support_ENG = [
	"B_soldier_TL_F",
	"B_engineer_F",
	"B_engineer_F",
	"B_soldier_repair_F"
];
// Support Team (EOD)
_groupArray_BLU_F_BUS_support_EOD = [
	"B_soldier_TL_F",
	"B_soldier_F",
	"B_soldier_exp_F",
	"B_soldier_exp_F"
];
// GMG Team
_groupArray_BLU_F_BUS_support_GMG = [
	"B_soldier_TL_F",
	"B_support_GMG_F",
	"B_support_AMG_F"	//same for both GMG and HMG
];
// HMG Team
_groupArray_BLU_F_BUS_support_MG = [
	"B_soldier_TL_F",
	"B_support_MG_F",
	"B_support_AMG_F"	//same for both GMG and HMG
];
// Mortar Team
_groupArray_BLU_F_BUS_support_Mort = [
	"B_soldier_TL_F",
	"B_support_Mort_F",
	"B_support_AMort_F"
];

//=======================================================================================================//
// Recon Infantry                                                                                        //
//=======================================================================================================//

// Recon patrol
_groupArray_BLU_F_BUS_reconPatrol = [
	"B_recon_TL_F",
	"B_recon_M_F",
	"B_recon_medic_F",
	"B_recon_F"
];

// Recon Sentry
_groupArray_BLU_F_BUS_reconSentry = [
	"B_recon_M_F",
	"B_recon_F"
];
// Recon Team
_groupArray_BLU_F_BUS_reconTeam = [
	"B_recon_TL_F",
	"B_recon_M_F",
	"B_recon_medic_F",
	"B_recon_F",
	"B_recon_LAT_F",
	"B_recon_JTAC_F",
	"B_recon_exp_F"
];


//=======================================================================================================//
// Recon Support Infantry                                                                                //
//=======================================================================================================//

// Recon Support Team (EOD)
_groupArray_BLU_F_BUS_recon_EOD = [
	"B_recon_TL_F",
	"B_recon_exp_F",
	"B_recon_exp_F",
	"B_recon_F"
];


////////////////////
//	VEHICLES
// Cars and trucks
_groupArray_BLU_F_vehicle_all = [
	"B_Quadbike_01_F",			//Quadbike
	"B_MRAP_01_F",				//Hunter MRAP
	"B_MRAP_01_hmg_F",			//Hunter MRAP HMG
	"B_MRAP_01_gmg_F",			//Hunter MRAP GL
	"B_Truck_01_covered_F",		//HEMTT Transport covered
	"B_Truck_01_transport_F"	//HEMTT Truck open
];
// Armored
_groupArray_BLU_F_armor_all = [
	"B_APC_Wheeled_01_cannon_F",//AMV-7 Marshall APC
	"B_APC_Tracked_01_AA_F",	//IFV-6a Cheetah
	"B_APC_Tracked_01_rcws_F",	//IFV-6c Panther
	"B_MBT_01_arty_F",			//M4 Scorcher
	"B_MBT_01_cannon_F",		//M2A1 Slammer
	"B_MBT_01_TUSK_F",			//M2A1 Slammer UP
	"B_MBT_01_mlrs_F"			//M5 Sandstorm MLRS
];
// Heli
_groupArray_BLU_F_heli_all = [
	"B_Heli_Light_01_armed_F",	//AH9
	"B_Heli_Light_01_F",		//MH9
	"B_Heli_Attack_01_F",		//AH99
	"B_Heli_Transport_01_F"		//Ghosthawk
];
// Patrol
_groupArray_BLU_F_vehicle_patrol = [
	"B_MRAP_01_F",
	"B_MRAP_01_hmg_F"
];
// Team
_groupArray_BLU_F_vehicle_team = [
	"B_MRAP_01_hmgF",
	"B_MRAP_01_gmg_F"
];
// Transport
_groupArray_BLU_F_vehicle_trans = [
	"B_APC_Wheeled_01_cannon_F",
	"B_Truck_01_covered_F"
];
