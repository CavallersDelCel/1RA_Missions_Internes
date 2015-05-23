//=======================================================================================================//
// Arxiu: cc_briefing_rhs_usarmy_wd.sqf                                                                  //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 22/02/2015                                                                      //
// Descripció: Aquest document serveix per oferir informació de la missió si la unitat forma part de     //
//             la facció RHS: United States Army "rhs_faction_usarmy_wd".                                //
//             http://doc.rhsmods.org/index.php/United_States_Army                                       //
//=======================================================================================================//

//=======================================================================================================//
// NOTES: CRÈDITS                                                                                        //
//=======================================================================================================//
_credits = player createDiaryRecord ["diary", ["Crèdits","
<br/>
Missió generada per CC_Magnetar per a la comunitat catalana de simulació Cavallers del Cel.
<br/>
"]];

//=======================================================================================================//
// NOTES: RADIO                                                                                          //
//=======================================================================================================//
_admlog = player createDiaryRecord ["diary", ["Freqüències de Radio","
<br/>
<font color='#FF0000' size='18'>Gos de Caça</font>
<br/>
- Esquadra ""Gos de Caça"": 51 kHz.
<br/>
- Equip ""Gos de Caça 1"": 201 kHz.
<br/>
- Equip ""Gos de Caça 2"": 202 kHz.
<br/>
<font color='#FF0000' size='18'>Extracció</font>
<br/>
- Falcó 1: Protocol de ràdio alfa.
"]];

//=======================================================================================================//
// NOTES: ADMINISTRACIÓ/LOGÍSTICA                                                                        //
//=======================================================================================================//
_admlog = player createDiaryRecord ["diary", ["Administració/Logística","
<br/>
<font color='#FF0000' size='18'>Suport</font>
<br/>
Sense suport addicional.
<br/><br/>
<font color='#FF0000' size='18'>Abastiment</font>
<br/>
Sense abastiment, les tropes s'hauran d'espavilar amb el que tenen.
"]];

//=======================================================================================================//
// NOTES: EXECUCIÓ                                                                                       //
//=======================================================================================================//
_execucio = player createDiaryRecord ["diary", ["Execució i tasques","
<br/>
<font color='#FF0000' size='18'>Tasca principal</font>
<br/>
Eliminar el traidor a qualsevol preu.
<br/><br/>
<font color='#FF0000' size='18'>Tasques secundàries</font>
<br/>
Reestablir la comunicació per ràdio destruint els inhibidors de senyal.
<br/><br/>
<font color='#FF0000' size='18'>Execució</font>
<br/>
- Inserció al punt <marker name=""Insercio"">LZ1</marker> (Gos de Caça 1) i <marker name=""InsercioTerra"">LZ1</marker> (Gos de Caça 2).
<br/>
- Gos de Caça 1 buscarà els supervivents de la tripulació de l'helicòpter desaparegut <marker name=""ObjMaritim1"">(070,606)</marker> per tal d'obtenir els informes de situació.
<br/>
- Gos de Caça 2 es reagruparà amb l'esquadra d'infanteria mecanitzada Gossos d'Acer per alertar-los del perill i a ser possible destruïr els inhibidors de senyal de ràdio.
<br/>
<font color='#FF0000'>- Tasca prioritaria:</font> localitzar i eliminar el traidor.
<br/>
- Extracció per helicòpter a càrrec de Falcó 1 sempre i quan s'hagi pogut reestablir la comunicació per ràdio. En cas contrari els diversos grups es reagruparan a les cases abandonades a <marker name=""PRetirada"">(053,042)</marker> per assolir un perfil baix.
<br/>
- Degut a l'escassa informació l'esquadra haurà d'improvitzar sobre el terreny i prioritzar objectius.
"]];

//=======================================================================================================//
// NOTES: MISSIÓ i EXECUCIÓ                                                                              //
//=======================================================================================================//
_missio = player createDiaryRecord ["diary", ["Missió","
<br/>
Dos equips d'intanteria seran desplegats al nord de Stratis per tal d'evaluar la situació i actuar amb la màxima velocitat possible. L'equip de bussejadors, Gos de Caça 1, intentarà localitzar les restes de l'helicòpter desaparegut per rescatar possibles supervivents i/o recuperar els informes d'inteligència abans de que ho faci l'enemic. L'última posició confirmada es <marker name=""ObjMaritim1"">(070,606)</marker>.
<br/><br/>
Per altra banda, l'equip de terra amb el nom en clau Gos de Caça 2, farà inserció al punt <marker name=""InsercioTerra"">LZ2</marker> per acte seguit es dirigir-se al punt de reagrupament <marker name=""ObjTerra1"">(045,068)</marker> i alertar l'esquadra Gossos d'Acer del perill. Junts inentaran destruir els possibles inhibidors de la senyal de ràdio.
<br/><br/>
L'<font color='#FF0000'>objectiu prioritari</font> d'ambdós equips és obtenir la localització del traidor i eliminar-lo.
<br/><br/>
L'extracció es farà a càrrec de Falcó 1 sota el protocol de radio Alfa en cas de que s'hagi pogut reestablir la comunicació per ràdio. En cas contrari, les tropes es reagruparan a les cases abandonades a <marker name=""PRetirada"">(053,042)</marker> i adoptaran un perfil baix fins que puguin ser rescatades.
"]];

//=======================================================================================================//
// NOTES: INTELIGÈNCIA                                                                                   //
//=======================================================================================================//
_intel = player createDiaryRecord ["diary", ["Inteligència","
<br/>
<font color='#FF0000' size='18'>Forces enemigues</font>
<br/>
Desconegudes però degut a la celeritat i contundència de l'atac es creu que són abuntants amb possible presència d'infanteria mecanitzada.
<br/><br/>
<font color='#FF0000' size='18'>Forces aliades</font>
<br/>
- Esquadra d'infanteria mecanitzada Gossos d'Acer (sense comunicació per ràdio). Possible localització: <marker name=""ObjTerra1"">(045,068)</marker>.
<br/>
- Falcó 1 a càrrec de les tasques d'extracció (protocol de ràdio alfa).
"]];

//=======================================================================================================//
// NOTES: SITUACIÓ                                                                                       //
//=======================================================================================================//
_situacio = player createDiaryRecord ["diary", ["SITREP","
<br/>
Les relacions entre les dues principals potències militars es cada cop més tensa. Els últims esdeveniments, l'atac per part de l'exèrcit del CSAT a les bases aliades a Stratis organitzat segons els últims informes d'inteligència per un membre del servei d'espionatge aliat a l'illa, ha portat les relacions a un punt de no retorn.
<br/><br/>
La situació a Stratis és totalment desconeguda ja que les comunicacions per ràdio es van interromptre de forma sobtada, ara farà dos dies, just quan s'evacuava a un supervivent de l'equip de d'espionatge amb informes sobre l'activitat enemiga a l'illa després de l'atac amb última posició confirmada <marker name=""ObjMaritim1"">(070,606)</marker>. Com a conseqüència, el contacte amb les tropes aliades supervivents a la zona, l'esquadra d'infanteria mecanitzada Gossos d'Acer, s'ha trencat completament. El protocol dicta que en cas d'emergència les tropes es reagruparan a una granja abandonada a les coordenades <marker name=""ObjTerra1"">(045,068)</marker> però es té la certesa de que el punt de reagrupament ha estat compromès degut a la traïció perpetrada per un dels nostres agents.
<br/><br/>
Degut a la gravetat de la situació, dos equips altament especialitzats han sigut designats per actuar amb contundència i celeritat: és l'hora de caçar!
"]];

//============================================ FI DEL FITXER ============================================//