//=======================================================================================================//
// File: fn_endMission.sqf                                                                               //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/10/02                                                                             //
// Description: This document defines under which circumstances any of the defined endings in the file   //
//              bmt_missionDebriefing.hpp is activated. It has to be ensured that this fucntion is       //
//              executed with global scope so that it affects both clients and servers.                  //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// All marines rescued. Warlord dead.
if ((rescuedMarines == 4) and (warlordDead == 1)) then {
    ["FinalExit1",true] spawn BIS_fnc_endMission;
};

// Not all marines rescued. Warlord dead.
if (((rescuedMarines > 0) and (rescuedMarines < 4)) and (warlordDead == 1)) then {
    ["FinalExit2",true] spawn BIS_fnc_endMission;
};

// All marines rescued. Warlord alive.
if ((rescuedMarines == 4) and (warlordDead == 0)) then {
    ["FinalExit3",true] spawn BIS_fnc_endMission;
};

// Not all marines rescued. Warlord alive.
if (((rescuedMarines > 0) and (rescuedMarines < 4)) and (warlordDead == 0)) then {
    ["FinalExit4",true] spawn BIS_fnc_endMission;
};

// No marines rescued. Warlord dead.
if ((rescuedMarines == 0) and (warlordDead == 1)) then {
    ["FinalExit5",true] spawn BIS_fnc_endMission;
};

// None of the objectives were accomplished. Players quited AO.
if ((rescuedMarines == 0) and (warlordDead == 0)) then {
    ["FinalFallit1",false] spawn BIS_fnc_endMission;
};

// All players are dead. Warlord dead.
if (({alive _x} count allPlayers <= 0) and (warlordDead == 1)) then {
    ["FinalFallit2",false] spawn BIS_fnc_endMission;
};

// All players are dead without accomplishing any objectives.
if (({alive _x} count allPlayers <= 0) and (warlordDead == 0)) then {
    ["Disaster",false] spawn BIS_fnc_endMission;
};


//============================================= END OF FILE =============================================//
