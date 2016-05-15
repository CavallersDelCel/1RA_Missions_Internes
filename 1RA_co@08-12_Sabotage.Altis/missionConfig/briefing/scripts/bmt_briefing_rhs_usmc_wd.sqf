//=======================================================================================================//
// File: bmt_briefing_rhs_usmc_wd.sqf                                                                    //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/06/12                                                                             //
// Description: This document generates the mission briefing for units belonging to the RHS faction      //
//              United States Marine Corps "rhs_faction_usmc_wd"                                         //
//              http://doc.rhsmods.org/index.php/United_States_Marine_Corps                              //
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
_radio = player createDiaryRecord ["diary", ["Freqüències de ràdio","
<font color='#FF0000' size='18'>Command</font>: 41 kHz.
<br/><br/>
<font color='#FF0000' size='18'>CAS</font>: 51 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Artillery</font>: 61 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Alpha</font>
<br/>
- Squad ""Alpha"": 200 kHz.
<br/>
- Fireteam ""Alpha 1-1"": 201 kHz.
<br/>
- Fireteam ""Alpha 1-2"": 202 kHz.
<br/>
- Fireteam ""Alpha 1-3"": 203 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Bravo</font>
<br/>
- Squad ""Bravo"": 210 kHz.
<br/>
- Fireteam ""Bravo 1-1"": 211 kHz.
<br/>
- Fireteam ""Bravo 1-2"": 212 kHz.
<br/>
- Fireteam ""Bravo 1-3"": 213 kHz.
"]];

//=======================================================================================================//
// NOTES: ADMINISTRATION/LOGISTICS.                                                                       //
//=======================================================================================================//
_adminLog = player createDiaryRecord ["diary", ["Administració/Logística","
<font color='#FF0000' size='18'>ARTILLERIA</font>
<br/>
- Unitat d'artilleria ""Feuer Regen"" amb: 3 SADARM, 1 SMOKE and 1 HE.
<br/><br/>
<font color='#FF0000' size='18'>Subministrament</font>
<br/>
Sense subministrament addicional.
"]];

//=======================================================================================================//
// NOTES: EXECUTION.                                                                                     //
//=======================================================================================================//
_execution = player createDiaryRecord ["diary", ["Execution","
<font color='#FF0000' size='18'>Main tasks</font>
<br/>
- <font color='#00FFFF'>Tasca principal</font>: Destruir les defenses antiaèries.
<br/><br/>
<font color='#FF0000' size='18'>Execution</font>
<br/>
- Inserció a <marker name=""markerInsertion"">(147,226)</marker>.<br/>
- Eliminar les defenses antiaèries a <marker name=""markerAntiair"">(142,212)</marker>.<br/>
- Evacuar a <marker name=""markerExtraction"">(166,217)</marker>.<br/>
"]];

//=======================================================================================================//
// NOTES: MISSION.                                                                                       //
//=======================================================================================================//
_mission = player createDiaryRecord ["diary", ["Mission","
Destruir les bateries antiaèries per tal de disminuir la capacitat de defensa de les tropes enemigues al
nord d'Altis.
"]];

//=======================================================================================================//
// NOTES: INTEL.                                                                                         //
//=======================================================================================================//
_intel = player createDiaryRecord ["diary", ["Intel","
<font color='#FF0000' size='18'>Forces enemigues</font>
<br/>
- Les unitats antiaèries estan situades a prop d'un campament enemic.
- No s'ha detectat presència d'unitats blindades.
<br/><br/>
<font color='#FF0000' size='18'>Forces aliades</font>
<br/>
- Esquadra ""Schattenschlag"".<br/>
- Unitat d'artilleria ""Feuer Regen"".
"]];

//=======================================================================================================//
// NOTES: SITUATION.                                                                                     //
//=======================================================================================================//
_situation = player createDiaryRecord ["diary", ["SITREP","
Amb la part est d'Altis assegurada i el front central estancat durant setmanes, l'alt comandament ha decidit
canviar d'estratègia. Una unitat de marines serà desplaçada al <marker name=""markerInsertion"">nord d'altis</marker> 
per tal d'efectuar un atac llampec al <marker name=""markerAntiair"">campament enemic</marker> i destruir
la seva capacitat de defensa antiaèria.<br/>
Degut a que la majoria de tropes està assignada al front central per tal d'evitar l'avanç de les tropes enemigues,
l'esquadra ""Schattenschlag"" estarà pràcticament sola. Tot i això, s'ha aconseguit posicionar la unitat
d'artilleria ""Feuer Regen"" lo suficientment aprop com per ser utilitzada durant l'atac. No obstant,
aquesta és una posició d'alt risc. Es recomana, per tant, celeritat i contundència!<br/>
"]];

//============================================= END OF FILE =============================================//
