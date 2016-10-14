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
També podreu demanar transport aèri (només lider si te el MicroDAGR) si el transport planificat falla.
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
- <font color='#00FFFF'>Tasca principal 1</font>: Capturar amb vida el HVT, nom en clau Boomer.
<br/><br/>
<font color='#FF0000' size='18'>Tasques secundàries</font>
<br/>
- <font color='#00FFFF'>Tasca secundà 1</font>: Recopilar informació enemiga.
<br/><br/>
<font color='#FF0000' size='18'>Execució</font>
<br/>
A les 0150 pujareu als helicòpters de transport UH-1Y, per ser inserits a traves del mar. Aterraran en un clar a pocs metres a l'Oest del recinte enemic. Per tant serà una inserció en calent.
Alternativament podeu demanar un transport aeri per un equip de reconeixement  abans de l'hora de sortida, per fer una inserció segura i avançar al PO2 i proporcionar informació avançada i suport de foc durant el combat si cal.
Un cop l'equip de combat aterri al punt LZ, s'haurà d'establir un perímetre de suport. Dos equips principals, el de seguretat i el d'assalt, entraran en zona pel nord. I aniran casa per casa netejant fins trobar el HVT. L'equip de seguretat ha de mantenir el cordó exterior per evitar que ataquin a l'equip d'assalt mentre netegen cases.
Un cop capturat el HVT, s'ha de demanar el transport aeri de tornada, fer pujar el HVT, i tornar tots a base. Si el transport aeri fallés, teniu un transport alternatiu fent servir l'ALIVE (cal tenir MicroDAGR GPS).
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
L'enemic ha tingut una activitat intensa col·locant mines i trampes al front. Estan intentant obstaculitzar l'avançament de les nostres tropes. Intel·ligència creu que s'ha detectat una sofisticació en els dispositius i la forma de col·locar-los, això amb informes de camp, apunten a un responsable. Es creu que un enginyer aliat, recentment reclutat per l'enemic, es el responsable. Es per tant un objectiu molt important, ja que no només ajuda a l'enemic, si no que te informació nostre. La vostre missió serà la de capturar-ho amb vida, nom en clau de l'objectiu, Boomer.
"]];

//=======================================================================================================//
// NOTES: INTEL.                                                                                         //
//=======================================================================================================//
_intel = player createDiaryRecord ["diary", ["Intel·ligència","
Es preveu posibles atacs enemics a la zona d'operacions.
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
- 2on escamot del 1er Regiment Aerotransportat.
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
