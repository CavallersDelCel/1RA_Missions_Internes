//=======================================================================================================//
// Arxiu: cc_briefing_fia_f.sqf                                                                          //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 22/02/2015                                                                      //
// Descripció: Aquest document serveix per oferir informació de la missió si la unitat forma part de     //
//             la facció FIA ("blu_g_f", "ind_g_f" o bé "opf_g_f").                                                                  //
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
// NOTES: ADMINISTRACIÓ/LOGÍSTICA                                                                        //
//=======================================================================================================//
_admlog = player createDiaryRecord ["diary", ["Administració/Logística","
<br/>
*** Descripció de support aèri, evacuació mèdica, CAS etc en cas d'existir. ***
"]];

//=======================================================================================================//
// NOTES: EXECUCIÓ                                                                                       //
//=======================================================================================================//
_execucio = player createDiaryRecord ["diary", ["Execució","
<br/>
<font size='18'>Ordres del general/Plà d'atac</font>
<br/>
*** Breu descripció del plà d'atac. ***
<br/><br/>
<font size='18'>RUTA D'ATAC</font>
<br/>
*** Instruccions d'inserció, atac i extracció. ***
<br/><br/>
<font size='18'>TASQUES ESPECIALS</font>
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
<font size='18'>FORCES ENEMIGUES</font>
<br/>
*** Descripció de les forces enemigues.***
<br/><br/>
<font size='18'>FORCES ALIADES</font>
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