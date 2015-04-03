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
Missió generada per CC_Magnetar per a la comunitat dels Cavallers del Cel.
<br/><br/>
Amb la col·laboració de CC_Viper, CC_ZeroQ, CC_SilverArrow, CC_Arnau002, CC_Davidaf.
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
// NOTES: INTELIGÈNCIA                                                                                   //
//=======================================================================================================//
_intel = player createDiaryRecord ["diary", ["Inteligència","
<br/>
*** Informe d'inteligència. ***
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