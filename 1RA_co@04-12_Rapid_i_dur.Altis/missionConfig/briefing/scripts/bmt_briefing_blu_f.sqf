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
_credits = player createDiaryRecord ["diary", ["Crèdits","
Mission created by <font color='#00FFFF'>Viper</font> for the community <font color='#00FFFF'>Cavallers del Cel</font>.
<br/><br/>
With the collaboration of Magnetar (A3-BMT template).
"]];

//=======================================================================================================//
// NOTES: RADIO.                                                                                         //
//=======================================================================================================//
_radio = player createDiaryRecord ["diary", ["Freqüències de ràdio","
<font color='#FF0000' size='18'>Comandament</font>: 30 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Infanteria</font>: 40 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Blindats</font>: 50 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Aeronaus</font>: 60 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Artilleria</font>: 70 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Alfa</font>
<br/>
- Esquadra ""Alfa 1"": 200 kHz.
<br/>
- Equip de foc ""Alfa 1-1"" (Assalt): 201 kHz.
<br/>
- Equip de foc ""Alfa 1-2"" (Suport): 202 kHz.
<br/>
- Equip de foc ""Alfa 1-3"" (Seguretat): 203 kHz.
<br/><br/>
- Esquadra ""Alfa 2"": 210 kHz.
<br/>
- Equip de foc ""Alfa 2-1"" (Assalt): 211 kHz.
<br/>
- Equip de foc ""Alfa 2-2"" (Suport): 212 kHz.
<br/>
- Equip de foc ""Alfa 2-3"" (Seguretat): 213 kHz.
<br/><br/>
- Esquadra ""Alfa 3"": 220 kHz.
<br/>
- Equip de foc ""Alfa 3-1"" (Assalt): 221 kHz.
<br/>
- Equip de foc ""Alfa 3-2"" (Suport): 222 kHz.
<br/>
- Equip de foc ""Alfa 3-3"" (Seguretat): 223 kHz.
"]];

//=======================================================================================================//
// NOTES: ADMINISTRATION/LOGISTICS.                                                                       //
//=======================================================================================================//
_adminLog = player createDiaryRecord ["diary", ["Administració/Logística","
<font color='#FF0000' size='18'>CAS</font>
<br/>
Teniu suport aeri proporcionat per un UH-1Y emplaçat a la base d'operacions, però nomes s'ha de fer servir en cas extrem, ja que heu de capturar l'objectiu amb vida i està envoltat de cases civils.
<br/>
<font color='#FF0000' size='18'>Transport</font>
<br/>
També podreu demanar transport aèri (només lider si te el MicroDAGR).
<br/><br/>
<font color='#FF0000' size='18'>Abastiment</font>
<br/>
Virtual Arsenal limitat a la base.
"]];

//=======================================================================================================//
// NOTES: EXECUTION.                                                                                     //
//=======================================================================================================//
_execution = player createDiaryRecord ["diary", ["Execució","
<font color='#FF0000' size='18'>Tasques principals</font>
<br/>
- <font color='#00FFFF'>Tasca principal 1</font>: Rescatar el civil
<br/><br/>
<font color='#FF0000' size='18'>Tasques secundàries</font>
<br/>
- <font color='#00FFFF'>Tasca principal 2</font>: Eliminar el HVT.
<br/><br/>
<font color='#FF0000' size='18'>Execució</font>
<br/>
A les 0210 pujareu als helicòpters de transport UH-1Y (feu servir l'ALIVE, cal MicroDAGR GPS per demanar transport i CAS) i haureu de fer una inserció en ràpel al poble, en una zona a cobert. Un equip establirà un perímetre de seguretat i exclusiu, mentre l'altre equip assalta el recinte en busca del HVT i el civil. El poble és controlat per tropes enemigues, per tant ha de ser una missió rapida per tal de no permetre a l'enemic organitzar un contraatac.
S'ha dividit el recinte on es pensa que es troben els objectius per cases.
<br/><br/>
<img image='images\obj_03.jpg' width='512' height='256'/>
<br/><br/>
Un cop eliminat el HVT i rescatat el civil, haureu de demanar extracció aèria (amb l'ALIVE). Per marcar la posició al helicòpter heu de fer servir llums estroboscòpiques (a l'arsenal n'hi han).
<br/><br/>
<font color='#FF0000' size='14'>Ràpel</font>
<br/>
-Per fer ràpel primer de tot heu d'ordenar al helicòpter de transport la opció INSERCIÓ i seleccionar a la barra els metres d'alçada que ha de mantenir. Les cordes arriben fins a 30 metres, però hi han un problema amb l'ALIVE, i pel motiu que sigui si seleccioneu 10 metres fa 5 i si feu mes de 10 fa 40 metres d'autoestacionari.
<br/>
Per saber segur a quina alçada aneu agafeu rellotge-altímetre a l'arsenal de la base.
<br/>
- Un cop en estacionari a l'alçada correcta, per desplegar les cordes heu de fer servir el menú d'interacció de l'ACE3 (tecla windows). Us sortiran les opcions 'Preparar ràpel' primer, i després 'Desplegar cordes'. Llavors amb el mateix menú, seleccioneu per baixar amb les cordes. Que tot això ho faci el lider, ja que es automàtic per tothom.
<br/>
- Si teniu problemes amb tot això ordeneu al helicòpter aterrar i quan sortiu li ordeneu un RTB perquè torni a base.
<br/><br/>
<font color='#FF0000' size='14'>Voladures</font>
<br/>
La missió incorpora un script que tanca algunes portes amb clau i permet també col·locar explosius a les mateixes. A la base, l'edifici gran que teniu al costat te aquest sistema habilitat, perque practiqueu una mica abans de sortir.
<br/>
- Quan mires una porta amb l'script habilitat (no totes ho tenen), surt en daurat una opció al menú d'usuari (rodeta del ratolí) per comprovar la porta.
<br/>
- En cas que sigui tancada, teniu 3 opcions per obrir la porta, amb un equip de manyà (rossinyols), col·locant carregues explosives, o amb un arma que permeti obrir la porta.
<br/>
- Per fer servir els rossinyols heu de portar-los a l'equipament, simplement cal mirar la porta i seleccionar l'opció de forçar el pany.
<br/>
- Per obrir-les amb armes de foc, han de ser armes que estiguin habilitades com a tals, que son les escopetes, la família M4A1, la M27, la M240, la M249, la SR25, el llançagranades M320, el AT4 i el SMAW. Només cal disparar a la porta i amb un parell de trets s'obren soles.
<br/>
- Per col·locar explosius, han de ser M112 vanilla a l'inventari. Només cal mirar la porta i seleccionar l'opció. L'explosiu te el radi d'acció disminuït, però tot i així el mes segur es cobrir amb alguna cobertura (una cantonada, etc...) o si no podreu sofrir danys. Per detonar-los us sortirà l'opció en daurat al menú d'usuari.
"]];

//=======================================================================================================//
// NOTES: MISSION.                                                                                       //
//=======================================================================================================//
_mission = player createDiaryRecord ["diary", ["Missió","
El cosí d'un alt càrrec civil local, Thamos Christou, ha sigut segrestat per les tropes rebels. Es creu que el tenen retingut a Chalkeia, un poble a l'Est de la nostre base, i tocant la frontera enemiga. Segons intel·ligència un oficial encarregat de la logística enemiga, Elias Lara, s'ha desplaçat al poble per interrogar Thamos. La vostre missió serà eliminar l'oficial i rescatar el civil.
<br/><br/>
Intel·ligència ens a proporcionat una fotografia recent del civil.
<br/><br/>
<img image='images\obj_02.jpg' width='512' height='256'/>
<br/><br/>
I una altre presa per un informador local de l'oficial enemic.
<br/><br/>
<img image='images\obj_01.jpg' width='512' height='256'/>
<br/><br/>
"]];

//=======================================================================================================//
// NOTES: INTEL.                                                                                         //
//=======================================================================================================//
_intel = player createDiaryRecord ["diary", ["Intel·ligència","
Hi han tropes enemigues al poble objectiu.
<br/><br/>
<font color='#FF0000' size='18'>Forces enemigues</font>
<br/>
- Patrulla de infanteria motoritzada
<br/>
- S'estima que els rebels tenen pocs vehicles blindats pesats.
<br/>
- No es preveu antiaèria.
<br/><br/>
<font color='#FF0000' size='18'>Forces aliades</font>
<br/>
- 1on escamot del 1er Regiment Aerotransportat.
"]];

//=======================================================================================================//
// NOTES: SITUATION.                                                                                     //
//=======================================================================================================//
_situation = player createDiaryRecord ["diary", ["SITREP","
Tropes rebels amenacen la pau a l'illa d'Altis, la situació posa en perill els civils mentre els països aliats miren cap a un altre costat degut a interessos económics. Degut a la delicada situació política, el nostre païs nomes ha pogut establir una petita Base d'operacions avançades (FOB en anglés), el Campament Cavallers, que amb la seva limitada disponibilitat de recursos haurá de mirar de mantenir la pau com pugui en la seva zona d'operacions.
<br/><br/>
La nostre part en aquest conflicte serà la de mantenir l'ordre i evitar que un exercit rebel venjatiu crei baixes a la població civil. Un tasca difícil atés que Altis te una important quantitat de població civil ocupant gran part de l'illa.
"]];

//============================================= END OF FILE =============================================//
