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
- Squad ""Alpha 1"": 200 kHz.
<br/>
- Fireteam ""Alpha 1-1"": 201 kHz.
<br/>
- Fireteam ""Alpha 1-2"": 202 kHz.
<br/>
- Sniper team ""Alpha 1-3"": 203 kHz.
"]];

//=======================================================================================================//
// NOTES: ADMINISTRATION/LOGISTICS.                                                                       //
//=======================================================================================================//
_adminLog = player createDiaryRecord ["diary", ["Administration/Logistics","
<font color='#FF0000' size='18'>CAS</font>
<br/>
None
<br/><br/>
<font color='#FF0000' size='18'>Supply</font>
<br/>
Ammo box is delivered during HALO.
"]];

//=======================================================================================================//
// NOTES: EXECUTION.                                                                                     //
//=======================================================================================================//
_execution = player createDiaryRecord ["diary", ["Execution","
<font color='#FF0000' size='18'>Main tasks</font>
<br/>
- <font color='#00FFFF'>Main task</font>: Destroy the enemy air assets on the russian airfield.
<br/><br/>
<font color='#FF0000' size='18'>Execution</font>
<br/>
- Alpha squad will HALO jump at the insertion point.<br/>
- Destroy as many enemy air assets as possible.<br/>
- Head towards the extraction point.
"]];

//=======================================================================================================//
// NOTES: MISSION.                                                                                       //
//=======================================================================================================//
_mission = player createDiaryRecord ["diary", ["Mission","
The russian airfield has its static defenses not yet completed. The team should infiltrate the airfield and
sabotage the enemy air assets. Contact with enemy patrols should be minimised: stealth is a priority.
"]];

//=======================================================================================================//
// NOTES: INTEL.                                                                                         //
//=======================================================================================================//
_intel = player createDiaryRecord ["diary", ["Intel","
<font color='#FF0000' size='18'>Enemy forces</font>
<br/>
- Enemy does not possess any static defenses.<br/>
- Strong presence of infantry enemy patrols.<br/>
- Low presence of wheeled vehicles.<br/>
- Very low presence of mecanised infantry or armored vehicles.
<br/><br/>
<font color='#FF0000' size='18'>Allied forces</font>
<br/>
- Alpha squad.
"]];

//=======================================================================================================//
// NOTES: SITUATION.                                                                                     //
//=======================================================================================================//
_situation = player createDiaryRecord ["diary", ["SITREP","
The Russian presence on Tanoa is reaching highly threating levels. For the past months they have been
sending high amount of troops. The Russian interests on the island have collided several times with the
allied forces and an all-out war is inevitable after the air attack last week on the allied forces on the
island. The attack wiped out most of our forward bases. However, the rush of the Russian Federation in
order to stablish dominance has opened a window for us to counter attack and deliver a major blow to their
aerial assets. The airfield defenses are still not completed and a small team should be able to infiltrate
and sabotage them.
"]];

//============================================= END OF FILE =============================================//
