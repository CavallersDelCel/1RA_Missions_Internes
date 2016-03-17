//=======================================================================================================//
// File: bmt_briefing_blu_f.sqf                                                                          //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/02/22                                                                             //
// Description: This document generates the mission briefing for units belonging to the blufor faction   //
//              (blu_f).                                                                                 //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

private ["_credits", "_radio", "_adminLog", "_execution", "_mission", "_intel", "_situation"];

//=======================================================================================================//
// NOTES: CREDITS.                                                                                       //
//=======================================================================================================//
_credits = player createDiaryRecord ["diary", ["Credits","
Mission and templatecreated by <font color='#00FFFF'>TheMagnetar</font> for the community <font color='#00FFFF'>Cavallers del Cel</font>.
"]];

//=======================================================================================================//
// NOTES: RADIO.                                                                                         //
//=======================================================================================================//
_radio = player createDiaryRecord ["diary", ["Radio frequencies","
<font color='#FF0000' size='18'>Command</font>: 41 kHz.
<br/><br/>
<font color='#FF0000' size='18'>CAS</font>: 51 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Artillery</font>: 61 kHz.
<br/><br/>
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
Without additional support.
<br/><br/>
<font color='#FF0000' size='18'>Supply</font>
<br/>
Without resupply.
"]];

//=======================================================================================================//
// NOTES: EXECUTION.                                                                                     //
//=======================================================================================================//
_execution = player createDiaryRecord ["diary", ["Execution","
<font color='#FF0000' size='18'>Main tasks</font>
<br/>
- <font color='#00FFFF'>Main task</font>: Destroy anti-air defenses.
<br/><br/>
<font color='#FF0000' size='18'>Execution</font>
<br/>
- Insertion at LZ.<br/>
- Destroy the anti-air defenses present at the enemy camp.
- Evacuate at FRV.
"]];

//=======================================================================================================//
// NOTES: MISSION.                                                                                       //
//=======================================================================================================//
_mission = player createDiaryRecord ["diary", ["Mission","
The preparation to stablish a foothold on the island of Altis has begun. A small team has been sent to eliminate
the weakened enemy air defenses at the north of the island. Removing this thread will to allow our air units
to deploy the rest of the platoon and stablish the first FOB on Altis.
"]];

//=======================================================================================================//
// NOTES: INTEL.                                                                                         //
//=======================================================================================================//
_intel = player createDiaryRecord ["diary", ["Intel","
*** Intelligence information. ***
<br/><br/>
<font color='#FF0000' size='18'>Enemy forces</font>
<br/>
Enemy forces consist mainly of infantry units. A single wheeled unit has been spotted in the area.
<br/><br/>
<font color='#FF0000' size='18'>Allied forces</font>
<br/>
None.
"]];

//=======================================================================================================//
// NOTES: SITUATION.                                                                                     //
//=======================================================================================================//
_situation = player createDiaryRecord ["diary", ["SITREP","
After a series of defeats, which lead to the obliteration of allied forces in the island of Altis, the NATO
high command has decided to regain control of the situation. The first step will be establishing a foothold
at the north of Altis that will serve as a FOB for hit-and-run operations in the island while the main force
strikes from the south.
"]];

//============================================= END OF FILE =============================================//
