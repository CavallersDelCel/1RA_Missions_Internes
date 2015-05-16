//=======================================================================================================//
// Arxiu: cc_finalitzrMissio.sqf                                                                         //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 13/05/2015                                                                      //
//=======================================================================================================//

if (torresDestruides == 1 && traidorMort == 1 && ({alive _x} count playableUnits > 0) && intelTropes == 0) then {
	["FinalExit1",true] call BIS_fnc_endMission;
};

if (torresDestruides < 1 && traidorMort == 1 && ({alive _x} count playableUnits > 0) && intelTropes == 0) then {
	["FinalExit2",true] call BIS_fnc_endMission;
};

if (torresDestruides < 1 && traidorMort == 1 && ({alive _x} count playableUnits > 0) && intelTropes == 1) then {
	["FinalExit3",true] call BIS_fnc_endMission;
};

if (torresDestruides == 1 && traidorMort == 1 && ({alive _x} count playableUnits > 0) && intelTropes == 1) then {
	["FinalExit4",true] call BIS_fnc_endMission;
};

if (torresDestruides < 1 && traidorMort == 0 && ({alive _x} count playableUnits > 0) && intelTropes == 0) then {
	["FinalFallit4",false] call BIS_fnc_endMission;
};

if (torresDestruides < 1 && traidorMort == 0 && ({alive _x} count playableUnits > 0) && intelTropes == 1) then {
	["FinalFallit5",false] call BIS_fnc_endMission;
};