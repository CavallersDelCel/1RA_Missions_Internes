//=======================================================================================================//
// Arxiu: cc_briefing_rhs_insurgents.sqf                                                                 //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 04/06/2015                                                                      //
// Descripció: Aquest document serveix per oferir informació de la missió si la unitat forma part de     //
//             la facció RHS: Insurgents "rhs_faction_insurgents".                                       //
//             http://class.rhsmods.org/rhsafrf/CfgGroups_Indep_rhs_faction_insurgents.html              // 
//=======================================================================================================//

//=======================================================================================================//
// NOTES: CRÈDITS                                                                                        //
//=======================================================================================================//
_credits = player createDiaryRecord ["diary", ["Crèdits","
<br/>
Missió generada per <font color='#00FFFF'>CC_Arnau002</font> per a la <font color='#00FFFF'>Comunitat Catalana de Simulació - Cavallers del Cel</font>.
<br/><br/>
Amb la col·laboració de CC_Magnetar (plantilla) i CC_Silverarrow.
"]];

//=======================================================================================================//
// NOTES: RADIO                                                                                          //
//=======================================================================================================//
_admlog = player createDiaryRecord ["diary", ["Freqüències de Radio","
<br/>
- Esquadra: 55 kHz.
<br/><br/>
- Equip Alpha: 111 kHz.
<br/>
- Equip Bravo: 222 kHz.
<br/>
- Equip Charlie: 333 kHz.
"]];

//=======================================================================================================//
// NOTES: ADMINISTRACIÓ/LOGÍSTICA                                                                        //
//=======================================================================================================//
_admlog = player createDiaryRecord ["diary", ["Administració/Logística","
<br/>
<font color='#FF0000' size='18'>Suport</font>
<br/>
- Sense suport adicional
<br/><br/>
<font color='#FF0000' size='18'>Abastiment</font>
<br/>
- Abastiment a la base situada al nord-est de Camp Rogain
"]];

//=======================================================================================================//
// NOTES: EXECUCIÓ                                                                                       //
//=======================================================================================================//
_execucio = player createDiaryRecord ["diary", ["Tasques i Execució","
<br/>
<font color='#FF0000' size='18'>Tasques prioritàries</font>
<br/>
- Capturar Kill Farm
<br/>
- Capturar Camp Rogain
<br/>
- Capturar Kamino
<br/><br/>
<font color='#FF0000' size='18'>Altres tasques</font>
<br/>
- Contactar amb tropes Catalanes a la zona de Kill Farm
<br/>
- Capturar vehicles Russos per el nostre exèrcit
<br/>
- Establir una base com a punt d'operacions per a properes missions a la zona
<br/><br/>
<font color='#FF0000' size='18'>Execució</font>
<br/>
- Inserció a l'est de Kill Farm
<br/>
- Capturar Kill Farm i esperar a contactar amb les forces aliades
<br/>
- Per l'execució dels objectius no hi ha cap pla pleestablert, la unitat haurà de improvitzar segons la situació en la que es trobi la zona
<br/>
- La missió es donarà per finalitzada quan es comuniqui l'assoliment dels objectius juntament amb la localització del punt d'operacions
<br/>
"]];

//=======================================================================================================//
// NOTES: MISSIÓ                                                                                         //
//=======================================================================================================//
_missio = player createDiaryRecord ["diary", ["Indicacions per la Missió","
<br/>
- Intenteu capturar Kill Farm i Camp Rogain amb rapidesa i sense donar temps de reacció a l'enemic
<br/>
- A prop de Kill farm hi han unitats aliades que us donaran suport durant l'assalt i serviran de guarnició en cas de contraatac
<br/>
- Heu de tenir en compte a l'hora de realitzar els atacs que Kamino està aillat de la resta de territori, no poden rebre reforços per terra
<br/>
- Per capturar Kamino caldrà que utilitzeu molta potència de foc, si els podeu capturar els blindats de Camp Rogain us poden ser d'ajuda
<br/>
- Es recomana no estar més temps del imprescindible en territori hostil
<br/>
- Es recomana cooperar amb les forces Catalanes
<br/>
- Es recomana no entrar dins el Triangle de seguretat Rus
<br/>
- Es considerarà Kamino Capturat si heu eliminat les unitats de la base, del poble en ruines, de la base petita del nord del far, del far i de les cases del costat del far
<br/>
- Es coneix com a Triangle de Seguretat Rus la zona que està a l'interior de la carretera que voreja els tres llançamíssils. Aquesta carretera surt d'Agia Marina, passa per sota Camp Rogain, per les Antenes de Comunicació, per Old Outposti i acaba altre cop a Agia Marina
<br/>
- En qualsevol moment podeu donar per finalitzada la missió retirant-vos a un d'aquests tres punts (Campament Rebel, Kill Farm, Camp Rogain o Kamino) i comunicant-ho per radio
<br/>
- La desició de finalitzar la missió s'ha de prendre conjuntament amb les unitats Catalanes
"]];

//=======================================================================================================//
// NOTES: INTEL·LIGÈNCIA                                                                                 //
//=======================================================================================================//
_intel = player createDiaryRecord ["diary", ["Intel·ligència","
<br/>
- Tenim coneixement que hi ha una força de resposta en cas d'Atac a Kill Farm
<br/>
- Poden haver-hi observadors i patrulles al llarg de la costa controlada pels Russos
<br/>
- Hi han informacions que indiquen que la guarnició de Camp Rogain no supera les 15 unitats, tot i això disposen de al menys un BMD i un Antiaeri, un assalt ràpid pot evitar que entrin als vehicles
<br/>
- S'espera l'arribada de una gran quantitat de reforços Russos a Camp Rogain en helicòpter, poden arribar en qualsevol moment
<br/>
- Unitats aliades han preparat una emboscada a la carretera que va de Kamino a Camp Rogain. L'emboscada hauria d'aturar qualsevol comboi que enviin per defensar-se del nostre atac a Camp Rogain.
<br/>
- Hi ha una patrulla blindada formada per un BMD-1 i un PRP-3 que fa la ruta vorejant el Triangle de Seguretat Rus
<br/>
- S'espera gran presència enemiga a la zona on hi han els llançamíssils i a la base de Kamino
<br/>
- En cas d'entrar al Triangle de Seguretat o destruir algun dels llançamíssils s'espera un resposta contundent dels Russos i l'arribada d'una gran quantitat de reforços enemics a la zona
<br/>
- Tenim notícies d'un camió abandonat a les ruines del costat de les antenes, encara no sabem de quin tipus de camió és, sou lliures d'anar a investigar
<br/>
- Guarnició aproximada de Kamino: 60 Unitats de Infnteria, Camions de Transport, 1 BMP, 2 BMD, 2 BTR-80, 2 BTR-60PB, 1 PRP-3
<br/>
- Sabem que l'objectiu de les forces Catalanes és destruïr els tres llançamíssils de l'est d'Agia Marina
<br/><br/>
<font color='#FF0000' size='18'>Forces enemigues</font>
<br/>
Forces d'infanteria aerotransportades abundants, blindats lleugers, antiaeris i algun helicòpter de transport. Hi ha la possibilitat de trobar algun tanc (T-72), antitanc.
<br/><br/>
<font color='#FF0000' size='18'>Forces aliades</font>
<br/>
Equip d'èlit soldats Catalans amb armes lleugeres i llançadors
"]];

//=======================================================================================================//
// NOTES: SITUACIÓ                                                                                       //
//=======================================================================================================//
_situacio = player createDiaryRecord ["diary", ["SITREP","
<br/>
Fa tres mesos que els Russos van conquerir el nostre país per convertir-lo en la seva base del mediterrani. Hem intentat durant mesos negociar, pactar i conviure amb ells però això s'ha acabat, ens hem cansat dels seus abusos. És hora de defensar el que és nostre! 
"]];

//============================================ FI DEL FITXER ============================================//