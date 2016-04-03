//=======================================================================================================//
// File: bmt_briefing_rhs_usmc_d.sqf                                                                     //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/02/22                                                                             //
// Description: This document generates the mission briefing for units belonging to the RHS faction      //
//              United States Marine Corps "rhs_faction_usmc_d"                                          //
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
_radio = player createDiaryRecord ["diary", ["Radio frequencies","
- Squad ""Alpha"": 200 kHz.
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
- ""November 1"": Helicòpter amb capacitats CAS.de combat denepent d'efectius d'última hora.<br/>
- ""Rain 1-3"": 3 helicòpters de transport sense capacitat ofensiva.
<br/><br/>
<font color='#FF0000' size='18'>Supply</font>
<br/>
Sense abastiment, les tropes s'hauran d'espavilar amb el que tenen.
"]];

//=======================================================================================================//
// NOTES: EXECUTION.                                                                                     //
//=======================================================================================================//
_execution = player createDiaryRecord ["diary", ["Execution","
<font color='#FF0000' size='18'>Main tasks</font>
<br/>
- <font color='#00FFFF'>Main task 1</font>: Rescatar els marines capturats en l'atac enemic la setmana passada.
<br/>
- <font color='#00FFFF'>Main task 2</font>: Recuperar qualsevol informe d'inteligència filtrat.
<br/><br/>
<font color='#FF0000' size='18'>Secondary tasks</font>
<br/>
- <font color='#00FFFF'>Secondary task</font>: Capturar el nou cap del grup insurgent.
<br/><br/>
<font color='#FF0000' size='18'>Execution</font>
<br/>
- Inserció al punt <marker name=""markerStart"">LZ1</marker>.
<br/>
- Contactar amb la <marker name=""markerPolice"">policia afgana</marker> per intercanviar informació sobre la localització del nou cap insurgent.
<br/>
- Acostar-se a l'àrea d'operacions i <marker name=""markerRescue"">rescatar els marines capturats</marker>.
<br/>
- Minimitzar les baixes civils per tal de guanyar-se el seu respecte i col·laboració.
<br/>
- Dirigir-se a la base aliada de Foxtrot pel <marker name=""markerEnd"">nord-est</marker> per tal de tractar mèdicament els marines capturats.
"]];

//=======================================================================================================//
// NOTES: MISSION.                                                                                       //
//=======================================================================================================//
_mission = player createDiaryRecord ["diary", ["Mission","
Dos equips d'infanteria i un de tiradors seran desplegats a Kunduz, Afghanistan, amb l'objectiu d'alliberar,
amb la col·laboració passiva de la policia afgana, els marines capturats la setmana passada en un atac
insurgent mai vist fins ara. Amb tota seguretat els marines capturats hauran estat sotmesos a tortura. És
d'alta prioritat recuperar qualsevol possbile informació que s'hagi pogut extreure als nostres companys.
<br/>
Degut a la forta presència de tropes enemigues i a la hostilitat dels civils, s'ha considerat oportú assignar
la unitat de suport aèri (CAS) ""November"" i l'equip d'evacuació ""Rain"" a l'esquadra alfa. Segons
intel·ligència les tropes enemigues estan mal equipades i disposen de poques o nul·les possibilitats de
contraatacar de forma efectiva un atac aèri o a distancia, especialment a la foscor.
"]];

//=======================================================================================================//
// NOTES: INTEL.                                                                                         //
//=======================================================================================================//
_intel = player createDiaryRecord ["diary", ["Intel","
<font color='#FF0000' size='18'>Enemy forces</font>
<br/>
S'espera una forta presència d'unitats enemigues a la zona. Els insurgents estan mal equipats i no disposen
de visió nocturna.
<br/><br/>
<font color='#FF0000' size='18'>Allied forces</font>
<br/>
- Esquadra alfa amb equip de tiradors.<br/>
- Helicòpter de combat (CAS) ""November"".<br/>
- Equip d'evacuació ""Rain"": 3 helicòpters sense capacitats ofensives destinats a evacuació.
<br/><br/>
<font color='#FF0000' size='18'>Civilians</font>
<br/>
Forta presència civil a l'àrea d'operacions. S'ha demostrat en passades operacions que els civils a la regió
són simpatitzants de la insurgència i per tant són mitjanament hostils a les forces aliades.
"]];

//=======================================================================================================//
// NOTES: SITUATION.                                                                                     //
//=======================================================================================================//
_situation = player createDiaryRecord ["diary", ["SITREP","
La setmana passada, un convoy de marines que tornaven a casa va ser atacat brutalment i els pocs supervivents
van ser capturats. Els autors de l'atac són un nou grup d'insurgents radicals a la regió de Kunduz.
<br/>
Degut a la retirada activa de tropes per raons polítiques, un grup reduït de soldats altament equipats s'ha
assignat a la tasca de rescatar els companys capturats. S'espera, amb aquesta operació, llençar un missatge
a qualsevol grup insurgent: cap atac quedarà sense resposta!
"]];

//============================================= END OF FILE =============================================//
