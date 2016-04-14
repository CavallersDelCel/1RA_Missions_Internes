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
Mission created by <font color='#00FFFF'>CC_Kronus</font> for the community <font color='#00FFFF'>Cavallers del Cel</font>.
<br/><br/>
With the collaboration of Magnetar (A3-BMT template).
"]];

//=======================================================================================================//
// NOTES: MISSION.                                                                                       //
//=======================================================================================================//
_mission = player createDiaryRecord ["diary", ["Normes","
1. Reforços (respawn): Si, en base.<br/>
2. Les frequencies de radio s'han de sintonitzar manualment.<br/>
3. Només els liders poden demanar suports. (artilleria).<br/>
4. Virtual Arsenal en Base.<br/>
5. Els reforços de la base no poden anar sols fins a la zona de operacions. Es requereix un mínim de 2 persones per utilitzar un vehicle.<br/>
6. La quantitat de vehicles de combat és limitada (No hi ha respawn de vehicles de combat).<br/>
"]];

//=======================================================================================================//
// NOTES: RADIO.                                                                                         //
//=======================================================================================================//
_radio = player createDiaryRecord ["diary", ["Freqüències de ràdio","
<font color='#FF0000' size='18'>Alfa</font>
<br/>
- Esquadra ""Alfa"": 200 kHz.
<br/>
- Equip de foc ""Alfa 1-1"": 201 kHz.
<br/>
- Equip de foc ""Alfa 1-2"": 202 kHz.
"]];

//=======================================================================================================//
// NOTES: ADMINISTRATION/LOGISTICS.                                                                       //
//=======================================================================================================//
_adminLog = player createDiaryRecord ["diary", ["Administració/Logística","
<font color='#FF0000' size='18'>Artilleria</font>
<br/>
- Els morters del FOB COLLSEROLA tenen munició per 16 missions de foc.<br/>
- El comandament (HQ CROSSROADS) ha demanat accés a un satèl·lit per cobrir la zona quan haguem pogut
identificar les coordenades de la zona de impacte i poder donar al equip de foc intel·ligència en temps
real.
<br/><br/>
<font color='#FF0000' size='18'>Subministres</font>
<br/>
Sense subministraments adicionals.
"]];

//=======================================================================================================//
// NOTES: EXECUTION.                                                                                     //
//=======================================================================================================//
_execution = player createDiaryRecord ["diary", ["Execució","
<font color='#FF0000' size='18'>Tasques principals</font>
<br/>
- <font color='#00FFFF'>Tasca principal 1</font>: Localitzar la zona d'impacte i assegurar el dispositiu
experimental que transportava l'aparell.
<br/><br/>
<font color='#FF0000' size='18'>Execució</font>
<br/>
- Localitzar la zona d'impacte i informar el comandament de la posició exacta.<br/>
- Atendre i rescatar a qualsevol supervivent.<br/>
- Assegurar el dispositiu experimental que transportava l'aparell.<br/><br/>
És IMPORTANT que l'equip s'afanyi a trobar i assegurar la zona abans que els insurgents executin als
possibles supervivents i s'emportin el dispositiu.
"]];

//=======================================================================================================//
// NOTES: MISSION.                                                                                       //
//=======================================================================================================//
_mission = player createDiaryRecord ["diary", ["Mission","
Localitzar la zona d'impacte i assegurar el dispositiu experimental que transportava l'aparell.
"]];

//=======================================================================================================//
// NOTES: INTEL.                                                                                         //
//=======================================================================================================//
_intel = player createDiaryRecord ["diary", ["Intel","
<font color='#FF0000' size='18'>Forces enemigues</font>
<br/>
FOB COLLSEROLA es troba en una zona amb nombrosa insurgència hostil.
<br/><br/>
<font color='#FF0000' size='18'>Forces aliades</font>
<br/>
- Morters FOB COLLSEROLA.<br/>
<br/><br/>
<font color='#FF0000' size='18'>Civils</font>
<br/>
La població civil de la zona no es pot considerar hostil però sabem que dóna suport a la insurgència.
"]];

//=======================================================================================================//
// NOTES: SITUATION.                                                                                     //
//=======================================================================================================//
_situation = player createDiaryRecord ["diary", ["SITREP","
Avui a les 03:09 de la matinada hem perdut contacte amb un helicòpter Huron. L'helicòpter s'havia enlairat
de la base de Gravia a les 03:00. Portava una esquadra de infanteria i una càrrega de municions per un
Outpost que estem equipant a la península de Bornos. El més greu es que s'havia aprofitat el vol per
carregar un aparell experimental d'alta importància estratègica que el helicòpter havia de lliurar a
Kavala quan s'hagues conclos amb el subministrament de personal i munició a Bornos.<br/><br/>
A les 03:07 hem rebut una trucada de socors de l'aparell. Deia que estaven sent atacats i que estaven
caient. Un parell de minuts després l'aparell ha desaparegut del radar. La possible zona d'impacte està
aproximadament a dos quilòmetres a l'oest de la població d'Abdera.<br/><br/>
El sobtat pas d'un front de tempesta sobre Altis ha fet empitjorar ràpidament les condicions aptes per al
vol d'aeronaus. Tanmateix encara existeix el risc que els AA que han atacat al helicòpter estiguin esperant
als aparells de rescat. Per aquest motiu el comandament desisteix d'enviar més aeronaus fins que la
climatologia permeti que els helicòpters puguin operar a trenc d'alba en millors condicions.
"]];

//============================================= END OF FILE =============================================//
