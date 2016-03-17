//=======================================================================================================//
// File: bmt_briefing_rhs_usn.sqf                                                                        //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/06/12                                                                             //
// Description: This document generates the mission briefing for units belonging to the RHS faction      //
//              United States Army "rhs_faction_usn".                                                    //
//              http://class.rhsmods.org/rhsusaf/CfgGroups_West_rhs_faction_usn.html                     //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

private ["_credits", "_radio", "_adminLog", "_execution", "_mission", "_intel", "_situation"];

//=======================================================================================================//
// NOTES: CREDITS.                                                                                       //
//=======================================================================================================//
_credits = player createDiaryRecord ["diary", ["Credits","
Mission created by <font color='#00FFFF'>TheMagnetar</font> for the community <font color='#00FFFF'>Cavallers del Cel</font>.
"]];

//=======================================================================================================//
// NOTES: RADIO.                                                                                         //
//=======================================================================================================//
_radio = player createDiaryRecord ["diary", ["Radio frequencies","
<font color='#FF0000' size='18'>Alpha</font>
<br/>
- Squad ""Alpha 1"": 200 kHz.
<br/>
- Fireteam ""Alpha 1-1"": 201 kHz.
<br/>
- Fireteam ""Alpha 1-2"": 202 kHz.
<br/>
- Fireteam ""Alpha 1-3"": 203 kHz.
"]];

//=======================================================================================================//
// NOTES: ADMINISTRATION/LOGISTICS.                                                                       //
//=======================================================================================================//
_adminLog = player createDiaryRecord ["diary", ["Administration/Logistics","
<font color='#FF0000' size='18'>CAS</font>
<br/>
Without additional supports.
<br/><br/>
<font color='#FF0000' size='18'>Supply</font>
<br/>
Without additional supplies.
"]];

//=======================================================================================================//
// NOTES: EXECUTION.                                                                                     //
//=======================================================================================================//
_execution = player createDiaryRecord ["diary", ["Execution","
<font color='#FF0000' size='18'>Main tasks</font>
<br/>
<font color='#00FFFF'>Main task</font>: Head to the airport in order to return home.
<br/><br/>
<font color='#FF0000' size='18'>Execution</font>
<br/>
Sit, relax, and enjoy the ride! You are returning home!
"]];

//=======================================================================================================//
// NOTES: MISSION.                                                                                       //
//=======================================================================================================//
_mission = player createDiaryRecord ["diary", ["Mission","
Head to the airport in order to return home.
"]];

//=======================================================================================================//
// NOTES: INTEL.                                                                                         //
//=======================================================================================================//
_intel = player createDiaryRecord ["diary", ["Intel","
<font color='#FF0000' size='18'>Enemy forces</font>
<br/>
Kunduz province is considered a safe zone.
<br/><br/>
<font color='#FF0000' size='18'>Allied forces</font>
<br/>
- 2 HMMWVs with M2.<br/>
- Squad Alpha 1.<br/>
- Squad Alpha 2.
"]];

//=======================================================================================================//
// NOTES: SITUATION.                                                                                     //
//=======================================================================================================//
_situation = player createDiaryRecord ["diary", ["SITREP","
After some months in Afghanistan, some troops return home...
"]];

//============================================= END OF FILE =============================================//