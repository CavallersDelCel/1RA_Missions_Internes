//=======================================================================================================//
// Arxiu: cc_briefing_rhs_usarmy_d.sqf                                                                   //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/02/22                                                                      //
// Descripció: Aquest document serveix per oferir informació de la missió si la unitat forma part de     //
//             la facció RHS: United States Army "rhs_faction_usarmy_d".                                 //
//             http://class.rhsmods.org/rhsusaf/CfgGroups_West_rhs_faction_usarmy_d.html                 //
// Cavnis: 0.1 (2015/02/22) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

//=======================================================================================================//
// NOTES: CRÈDITS.                                                                                       //
//=======================================================================================================//
_credits = player createDiaryRecord ["diary", ["Crèdits","
Missió generada per <font color='#00FFFF'>CC_Magnetar</font> per a la <font color='#00FFFF'>Comunitat Catalana de Simulació - Cavallers del Cel</font>.
"]];

//=======================================================================================================//
// NOTES: Objectiu.                                                                                         //
//=======================================================================================================//
_admlog = player createDiaryRecord ["diary", ["Ohmid Raheem","
El coronel Ohmid Raheem en una imatge d'arxiu.
<br/><br/>
<img image='imatges\OhmidRaheem.jpg' width='338' height='512'/>
"]];

//=======================================================================================================//
// NOTES: RADIO.                                                                                         //
//=======================================================================================================//
_admlog = player createDiaryRecord ["diary", ["Freqüències de Radio","
<font color='#FF0000' size='18'>Alfa</font>
<br/>
- Esquadra ""Alfa"": 200 kHz.
<br/>
- Equip de foc ""Alfa 1"": 201 kHz.
<br/>
- Equip de foc ""Alfa 2"": 202 kHz.
<br/>
- Equip de tiradors ""Alfa 3"": 203 kHz.
"]];

//=======================================================================================================//
// NOTES: ADMINISTRACIÓ/LOGÍSTICA.                                                                       //
//=======================================================================================================//
_admlog = player createDiaryRecord ["diary", ["Administració/Logística","
<font color='#FF0000' size='18'>Suport</font>
<br/>
Sense suport addicional.
<br/><br/>
<font color='#FF0000' size='18'>Abastiment</font>
<br/>
Sense abastiment, les tropes s'hauran d'espavilar amb el que tenen.
"]];

//=======================================================================================================//
// NOTES: EXECUCIÓ.                                                                                      //
//=======================================================================================================//
_execucio = player createDiaryRecord ["diary", ["Execució","
<font color='#FF0000' size='18'>Tasca principal</font>
<br/>
Eliminar el coronel enemic per desestabilitzar el control militar a la zona.
<br/><br/>
<font color='#FF0000' size='18'>Execució</font>
<br/>
- Inserció al punt <marker name=""Insercio"">LZ1</marker>.
<br/>
- Acostar-se a l'àrea d'operacions i <marker name=""Eliminar"">eliminar l'objectiu</marker>.
<br/>
- Minimitzar les baixes civils per tal de guanyar-se el seu respecte i col·laboració.
<br/>
- Reagrupar-se a <marker name=""Extraccio"">Sofia</marker>.
"]];

//=======================================================================================================//
// NOTES: MISSIÓ.                                                                                        //
//=======================================================================================================//
_missio = player createDiaryRecord ["diary", ["Missió","
Dos equips d'infanteria i un de tiradors seran desplegats al nord-oest de Sofia, Altis, amb l'objectiu d'<font color='#FF0000'>eliminar el coronel Ohmid Raheem</font>, que coordina les operacions militars al nord d'Altis des de la <marker name=""Eliminar"">costa</marker>.
<br/><br/>
Un cop completada la tasca, els efectius es dirigiran a <marker name=""Extraccio"">Sofia</marker> per reagrupar-se amb les forces aliades i preparar l'ofensiva al nord d'Altis.
"]];

//=======================================================================================================//
// NOTES: INTEL·LIGÈNCIA.                                                                                //
//=======================================================================================================//
_intel = player createDiaryRecord ["diary", ["Intel·ligència","
<font color='#FF0000' size='18'>Forces enemigues</font>
<br/>
S'espera una forta presència d'unitats enemigues a la zona. Blindats han sigut avistats.
<br/><br/>
<font color='#FF0000' size='18'>Forces aliades</font>
<br/>
Degut a un possible atac enemic, no es poden desplegar més tropes i la presència de civils a la zona fa inviable el suport aèri o artillat.
<br/><br/>
<font color='#FF0000' size='18'>Civils</font>
<br/>
Forta presència civil a l'àrea d'operacions.
<br/><br/>
<font color='#FF0000' size='18'>Zona d'operació</font>
<br/>
La zona d'operació a l'estiu.
<br/><br/>
<img image='imatges\ZonaOP_Estiu.jpg' width='384' height='192'/>
"]];

//=======================================================================================================//
// NOTES: SITUACIÓ.                                                                                      //
//=======================================================================================================//
_situacio = player createDiaryRecord ["diary", ["SITREP","
L'avanç inexorable de les forces del CSAT han obligat als països aliats a intervenir per tal d'aturar l'annexió constant de territori utilitzant la força bruta. L'illa d'Altis, ha sigut considerada com un punt estratègic clau a l'hora de mantenir el control del Mediterrani. Després de diversos intents, s'ha aconseguit establir una zona d'operacions al nord d'aquesta illa però la situació no està gens resolta.
<br/><br/>
A través d'intervencions telefòniques, el servei d'intel·ligència ha pogut saber que les últimes derrotes del CSAT al Mediterrani han fet que un dels seus dirigents més carismàtics, el coronel Ohmid Raheem, comenci a ser àmpliament criticat. La presència de les dues faccions, la lleial al coronel i aquells que creuen que la seva època daurada s'ha acabat, obren la porta a un possible conflicte intern si cau en combat que podria facilitar futures operacions militars a l'illa.
<br/><br/>
Conscient de la precarietat de la seva situació, el coronel Ohmid Raheem s'ha rodejat de les tropes més lleials i s'ha desplaçat al nord d'Altis per dirigir personalment el que es creu un atac a gran escala per tal de recuperar el control total de l'illa, establint la seva base d'operacions en un complexe turístic amb forta presència civil. Aquesta no és la primera vegada que Ohmid Raheem utilitza civils com escuts humans.
"]];

//============================================ FI DEL FITXER ============================================//
