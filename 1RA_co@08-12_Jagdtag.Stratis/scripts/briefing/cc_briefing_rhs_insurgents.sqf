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
Missió generada per <font color='#00FFFF'>*** Autors ***</font> per a la <font color='#00FFFF'>Comunitat Catalana de Simulació - Cavallers del Cel</font>.
<br/><br/>
Amb la col·laboració de CC_Magnetar (plantilla) i *** possibles col·laboradors ***.
"]];

//=======================================================================================================//
// NOTES: RADIO                                                                                          //
//=======================================================================================================//
_admlog = player createDiaryRecord ["diary", ["Freqüències de Radio","
<br/>
*** Llistat de les freqüències de ràdio de les esquadres i equips ***
"]];

//=======================================================================================================//
// NOTES: ADMINISTRACIÓ/LOGÍSTICA                                                                        //
//=======================================================================================================//
_admlog = player createDiaryRecord ["diary", ["Administració/Logística","
<br/>
<font color='#FF0000' size='18'>Suport</font>
<br/>
*** Descripció de les unitats de suport, evacuació mèdica, CAS etc. en cas d'existir.
<br/><br/>
<font color='#FF0000' size='18'>Abastiment</font>
<br/>
*** Abastiment de les tropes: munició addicional, ...
"]];

//=======================================================================================================//
// NOTES: EXECUCIÓ                                                                                       //
//=======================================================================================================//
_execucio = player createDiaryRecord ["diary", ["Execució","
<br/>
<font color='#FF0000' size='18'>Ordres del general/Plà d'atac</font>
<br/>
*** Breu descripció del plà d'atac. ***
<br/><br/>
<font color='#FF0000' size='18'>Ruta d'atac</font>
<br/>
*** Instruccions d'inserció, atac i extracció. ***
<br/><br/>
<font color='#FF0000' size='18'>Tasques especials</font>
<br/>
*** Tasques especials. ***
"]];

//=======================================================================================================//
// NOTES: MISSIÓ                                                                                         //
//=======================================================================================================//
_missio = player createDiaryRecord ["diary", ["Missió","
<br/>
*** Descripció de la missió. ***
"]];

//=======================================================================================================//
// NOTES: INTEL·LIGÈNCIA                                                                                 //
//=======================================================================================================//
_intel = player createDiaryRecord ["diary", ["Intel·ligència","
<br/>
*** Informe d'intel·ligència. ***
<br/><br/>
<font color='#FF0000' size='18'>Forces enemigues</font>
<br/>
*** Descripció de les forces enemigues.***
<br/><br/>
<font color='#FF0000' size='18'>Forces aliades</font>
<br/>
*** Breu descripció de les forces aliades.***
"]];

//=======================================================================================================//
// NOTES: SITUACIÓ                                                                                       //
//=======================================================================================================//
_situacio = player createDiaryRecord ["diary", ["SITREP","
<br/>
*** Breu descripció de la situació.***
"]];

//============================================ FI DEL FITXER ============================================//