//=======================================================================================================//
// Arxiu: cc_finalitzrMissio.sqf                                                                         //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 13/05/2015                                                                      //
//=======================================================================================================//

//=======================================================================================================//
//=======================================================================================================//
// Finals Capturant Kill Farm Morint                                     30-79                           //
// Finals Capturant Kill Farm i Camp Rogain Morint                       82-131                          //
// Finals Capturant Kill Farm, Camp Rogain i Kamino Morint               134-183                         //
// Finals Capturant Kill Farm Sense Morir                                186-235                         //
// Finals Capturant Kill Farm i Camp Rogain Sense Morir                  238-287                         //
// Finals Capturant Kill Farm, Camp Rogain i Kamino Sense Morir          290-339                         //
// Finals Capturant Camp Rogain Morint                                   342-391                         //
// Finals Capturant Kamino Morint                                        394-443                         //
// Finals Capturant Kill Farm i Kamino Morint                            446-495                         //
// Finals Capturant Camp Rogain i Kamino  Morint                         498-547                         //
// Finals Capturant Camp Rogain Sense Morir                              550-599                         //
// Finals Capturant Kamino Sense Morir                                   602-651                         //
// Finals Capturant Kill Farm i Kamino Sense Morir                       654-703                         //
// Finals Capturant Camp Rogain i Kamino Sense Morir                     706-755                         //
// Finals Sense Capturar Objectius Rebels Morint                         758-807                         //
// Finals Sense Capturar Objectius Rebels Sense Morir                    810-859                         //
//=======================================================================================================//
//=======================================================================================================//	


//=======================================================================================================//
// Finals Capturant Kill Farm Morint                                                                     //
//=======================================================================================================//
if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils == 0 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_Fallit1",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_Fallit2",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils == 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_Fallit3",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils == 0 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_Fallit4",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_Fallit5",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils == 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_Fallit6",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils == 0 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_Fallit7",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_Fallit8",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils == 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_Fallit9",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils == 0 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_Fallit10",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_Fallit11",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils == 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_Fallit12",false] call BIS_fnc_endMission;
};


//=======================================================================================================//
// Finals Capturant Kill Farm i Camp Rogain Morint                                                       //
//=======================================================================================================//
if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils == 0 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_Fallit1",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_Fallit2",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils == 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_Fallit3",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils == 0 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_Fallit4",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_Fallit5",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils == 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_Fallit6",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils == 0 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_Fallit7",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_Fallit8",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils == 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_Fallit9",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils == 0 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_Fallit10",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_Fallit11",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils == 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_Fallit12",false] call BIS_fnc_endMission;
};


//=======================================================================================================//
// Finals Capturant Kill Farm, Camp Rogain i Kamino Morint                                               //
//=======================================================================================================//
if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils == 0 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_K_Fallit1",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_K_Fallit2",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils == 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_K_Fallit3",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils == 0 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_K_Fallit4",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_K_Fallit5",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils == 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_K_Fallit6",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils == 0 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_K_Fallit7",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_K_Fallit8",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils == 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_K_Fallit9",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils == 0 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_K_Fallit10",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_K_Fallit11",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils == 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_CR_K_Fallit12",false] call BIS_fnc_endMission;
};


//=======================================================================================================//
// Finals Capturant Kill Farm Sense Morir                                                                //
//=======================================================================================================//
if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils == 0 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_Exit1",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_Exit2",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils == 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_Exit3",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils == 0 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_Exit4",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_Exit5",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils == 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_Exit6",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils == 0 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_Exit7",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_Exit8",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils == 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_Exit9",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils == 0 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_Exit10",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_Exit11",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 0 && objMissils == 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_Exit12",false] call BIS_fnc_endMission;
};


//=======================================================================================================//
// Finals Capturant Kill Farm i Camp Rogain Sense Morir                                                  //
//=======================================================================================================//
if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils == 0 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_Exit1",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_Exit2",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils == 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_Exit3",true] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils == 0 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_Exit4",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_Exit5",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils == 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_Exit6",true] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils == 0 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_Exit7",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_Exit8",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils == 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_Exit9",true] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils == 0 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_Exit10",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_Exit11",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 0 && objMissils == 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_Exit12",true] call BIS_fnc_endMission;
};


//=======================================================================================================//
// Finals Capturant Kill Farm, Camp Rogain i Kamino Sense Morir                                          //
//=======================================================================================================//
if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils == 0 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_K_Exit1",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_K_Exit2",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils == 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_K_Exit3",true] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils == 0 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_K_Exit4",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_K_Exit5",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils == 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_K_Exit6",true] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils == 0 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_K_Exit7",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_K_Exit8",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils == 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_K_Exit9",true] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils == 0 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_K_Exit10",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_K_Exit11",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 1 && objKamino == 1 && objMissils == 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_CR_K_Exit12",true] call BIS_fnc_endMission;
};


//=======================================================================================================//
// Finals Capturant Camp Rogain Morint                                                                   //
//=======================================================================================================//
if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils == 0 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["CR_Fallit1",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["CR_Fallit2",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils == 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["CR_Fallit3",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils == 0 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["CR_Fallit4",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["CR_Fallit5",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils == 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["CR_Fallit6",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils == 0 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["CR_Fallit7",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["CR_Fallit8",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils == 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["CR_Fallit9",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils == 0 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["CR_Fallit10",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["CR_Fallit11",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils == 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["CR_Fallit12",false] call BIS_fnc_endMission;
};


//=======================================================================================================//
// Finals Capturant Kamino Morint                                                                        //
//=======================================================================================================//
if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils == 0 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["K_Fallit1",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["K_Fallit2",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils == 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["K_Fallit3",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils == 0 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["K_Fallit4",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["K_Fallit5",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils == 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["K_Fallit6",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils == 0 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["K_Fallit7",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["K_Fallit8",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils == 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["K_Fallit9",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils == 0 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["K_Fallit10",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["K_Fallit11",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils == 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["K_Fallit12",false] call BIS_fnc_endMission;
};


//=======================================================================================================//
// Finals Capturant Kill Farm i Kamino Morint                                                            //
//=======================================================================================================//
if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils == 0 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_K_Fallit1",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_K_Fallit2",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils == 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_K_Fallit3",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils == 0 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_K_Fallit4",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_K_Fallit5",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils == 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["KF_K_Fallit6",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils == 0 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_K_Fallit7",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_K_Fallit8",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils == 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_K_Fallit9",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils == 0 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_K_Fallit10",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_K_Fallit11",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils == 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["KF_K_Fallit12",false] call BIS_fnc_endMission;
};


//=======================================================================================================//
// Finals Capturant Camp Rogain i Kamino  Morint                                                         //
//=======================================================================================================//
if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils == 0 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["CR_K_Fallit1",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["CR_K_Fallit2",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils == 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["CR_K_Fallit3",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils == 0 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["CR_K_Fallit4",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["CR_K_Fallit5",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils == 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["CR_K_Fallit6",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils == 0 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["CR_K_Fallit7",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["CR_K_Fallit8",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils == 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["CR_K_Fallit9",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils == 0 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["CR_K_Fallit10",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["CR_K_Fallit11",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils == 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["CR_K_Fallit12",false] call BIS_fnc_endMission;
};


//=======================================================================================================//
// Finals Capturant Camp Rogain Sense Morir                                                              //
//=======================================================================================================//
if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils == 0 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["CR_Exit1",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["CR_Exit2",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils == 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["CR_Exit3",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils == 0 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["CR_Exit4",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["CR_Exit5",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils == 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["CR_Exit6",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils == 0 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["CR_Exit7",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["CR_Exit8",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils == 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["CR_Exit9",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils == 0 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["CR_Exit10",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["CR_Exit11",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 0 && objMissils == 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["CR_Exit12",false] call BIS_fnc_endMission;
};


//=======================================================================================================//
// Finals Capturant Kamino Sense Morir                                                                   //
//=======================================================================================================//
if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils == 0 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["K_Exit1",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["K_Exit2",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils == 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["K_Exit3",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils == 0 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["K_Exit4",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["K_Exit5",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils == 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["K_Exit6",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils == 0 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["K_Exit7",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["K_Exit8",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils == 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["K_Exit9",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils == 0 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["K_Exit10",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["K_Exit11",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 1 && objMissils == 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["K_Exit12",false] call BIS_fnc_endMission;
};


//=======================================================================================================//
// Finals Capturant Kill Farm i Kamino Sense Morir                                                       //
//=======================================================================================================//
if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils == 0 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_K_Exit1",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_K_Exit2",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils == 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_K_Exit3",true] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils == 0 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_K_Exit4",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_K_Exit5",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils == 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["KF_K_Exit6",true] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils == 0 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_K_Exit7",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_K_Exit8",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils == 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_K_Exit9",true] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils == 0 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_K_Exit10",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_K_Exit11",false] call BIS_fnc_endMission;
};

if (objKillFarm == 1 && objCampRogain == 0 && objKamino == 1 && objMissils == 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["KF_K_Exit12",true] call BIS_fnc_endMission;
};


//=======================================================================================================//
// Finals Capturant Camp Rogain i Kamino Sense Morir                                                     //
//=======================================================================================================//
if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils == 0 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["CR_K_Exit1",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["CR_K_Exit2",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils == 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["CR_K_Exit3",true] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils == 0 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["CR_K_Exit4",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["CR_K_Exit5",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils == 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["CR_K_Exit6",true] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils == 0 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["CR_K_Exit7",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["CR_K_Exit8",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils == 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["CR_K_Exit9",true] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils == 0 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["CR_K_Exit10",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["CR_K_Exit11",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 1 && objKamino == 1 && objMissils == 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["CR_K_Exit12",true] call BIS_fnc_endMission;
};


//=======================================================================================================//
// Finals Sense Capturar Objectius Rebels Morint                                                         //
//=======================================================================================================//
if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils == 0 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["EMP_Fallit1",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["EMP_Fallit2",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils == 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["EMP_Fallit3",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils == 0 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["EMP_Fallit4",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["EMP_Fallit5",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils == 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits == 0)) then {
	["EMP_Fallit6",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils == 0 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["EMP_Fallit7",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["EMP_Fallit8",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils == 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["EMP_Fallit9",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils == 0 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["EMP_Fallit10",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["EMP_Fallit11",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils == 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits == 0)) then {
	["EMP_Fallit12",false] call BIS_fnc_endMission;
};


//=======================================================================================================//
// Finals Sense Capturar Objectius Rebels Sense Morir                                                    //
//=======================================================================================================//
if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils == 0 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["EMP_Exit1",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["EMP_Exit2",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils == 3 && objAntenes == 0 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["EMP_Exit3",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils == 0 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["EMP_Exit4",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["EMP_Exit5",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils == 3 && objAntenes == 1 && objOficial == 0 &&({alive _x} count playableUnits > 0)) then {
	["EMP_Exit6",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils == 0 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["EMP_Exit7",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["EMP_Exit8",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils == 3 && objAntenes == 0 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["EMP_Exit9",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils == 0 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["EMP_Exit10",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils > 0 && objMissils < 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["EMP_Exit11",false] call BIS_fnc_endMission;
};

if (objKillFarm == 0 && objCampRogain == 0 && objKamino == 0 && objMissils == 3 && objAntenes == 1 && objOficial == 1 &&({alive _x} count playableUnits > 0)) then {
	["EMP_Exit12",false] call BIS_fnc_endMission;
};





