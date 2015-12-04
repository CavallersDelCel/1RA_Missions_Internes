//=======================================================================================================//
// Arxiu: cc_briefing_rhs_vpvo.sqf                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/02/22                                                                      //
// Descripció: Aquest document serveix per oferir informació de la missió si la unitat forma part de     //
//             la facció RHS: Soviet Air Defense Forces (Voyska protivovozdushnoy oborony)               //
//             http://class.rhsmods.org/rhsafrf/CfgFactionClasses_rhs_faction_vpvo.html                  //
// Cavnis: 0.1 (2015/02/22) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

//=======================================================================================================//
// NOTES: CRÈDITS.                                                                                       //
//=======================================================================================================//
_credits = player createDiaryRecord ["diary", ["Crèdits","
Missió generada per <font color='#00FFFF'>*** Autors ***</font> per a la <font color='#00FFFF'>Comunitat Catalana de Simulació - Cavallers del Cel</font>.
<br/><br/>
Amb la col·laboració de CC_Magnetar (plantilla) i *** possibles col·laboradors ***.
"]];

//=======================================================================================================//
// NOTES: RADIO.                                                                                         //
//=======================================================================================================//
_admlog = player createDiaryRecord ["diary", ["Freqüències de Radio","
<font color='#FF0000' size='18'>Comandament</font>: 41 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Suport</font>: 51 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Artilleria</font>: 61 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Alfa</font>
<br/>
- Esquadra ""Alfa"": 200 kHz.
<br/>
- Equip de foc ""Alfa 1-1"": 201 kHz.
<br/>
- Equip de foc ""Alfa 1-2"": 202 kHz.
<br/>
- Equip de foc ""Alfa 1-3"": 203 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Bravo</font>
<br/>
- Esquadra ""Bravo"": 210 kHz.
<br/>
- Equip de foc ""Bravo 1-1"": 211 kHz.
<br/>
- Equip de foc ""Bravo 1-2"": 212 kHz.
<br/>
- Equip de foc ""Bravo 1-3"": 213 kHz.
"]];

//=======================================================================================================//
// NOTES: ADMINISTRACIÓ/LOGÍSTICA.                                                                       //
//=======================================================================================================//
_admlog = player createDiaryRecord ["diary", ["Administració/Logística","
<font color='#FF0000' size='18'>Suport</font>
<br/>
*** Descripció de les unitats de suport, evacuació mèdica, CAS etc. en cas d'existir.
<br/><br/>
<font color='#FF0000' size='18'>Abastiment</font>
<br/>
*** Abastiment de les tropes: munició addicional, ...
"]];

//=======================================================================================================//
// NOTES: EXECUCIÓ.                                                                                      //
//=======================================================================================================//
_execucio = player createDiaryRecord ["diary", ["Execució","
<font color='#FF0000' size='18'>Tasques principals</font>
<br/>
- <font color='#00FFFF'>Tasca principal 1</font>: *** Breu descripció ***.
<br/>
- <font color='#00FFFF'>Tasca principal 2</font>: *** Breu descripció ***.
<br/><br/>
<font color='#FF0000' size='18'>Tasques secundària</font>
<br/>
- <font color='#00FFFF'>Tasca secundària 1</font>: *** Breu descripció ***.
<br/>
- <font color='#00FFFF'>Tasca secundària 2</font>: *** Breu descripció ***.
<br/><br/>
<font color='#FF0000' size='18'>Execució</font>
<br/>
*** Descripció, per punts, de com executar la missió. ***
"]];

//=======================================================================================================//
// NOTES: MISSIÓ.                                                                                        //
//=======================================================================================================//
_missio = player createDiaryRecord ["diary", ["Missió","
*** Descripció de la missió. ***
"]];

//=======================================================================================================//
// NOTES: INTEL·LIGÈNCIA.                                                                                //
//=======================================================================================================//
_intel = player createDiaryRecord ["diary", ["Intel·ligència","
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
// NOTES: SITUACIÓ.                                                                                      //
//=======================================================================================================//
_situacio = player createDiaryRecord ["diary", ["SITREP","
*** Breu descripció de la situació.***
"]];

//============================================ FI DEL FITXER ============================================//
