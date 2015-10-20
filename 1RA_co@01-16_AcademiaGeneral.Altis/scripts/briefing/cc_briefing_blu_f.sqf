//=======================================================================================================//
// Arxiu: cc_briefing_blu_f.sqf                                                                          //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 22/02/2015                                                                      //
// Descripció: Aquest document serveix per oferir informació de la missió si la unitat forma part de     //
//             la facció BLUFOR (blu_f).                                                                 //
//=======================================================================================================//

//=======================================================================================================//
// NOTES: CRÈDITS.                                                                                       //
//=======================================================================================================//
_credits = player createDiaryRecord ["diary", ["Crèdits","
Missió generada per <font color='#00FFFF'>CC_Magnetar</font> per a la <font color='#00FFFF'>Comunitat Catalana de Simulació - Cavallers del Cel</font>.
<br/><br/>
Amb la col·laboració de CC_Viper.
"]];

//=======================================================================================================//
// NOTES: RADIO.                                                                                         //
//=======================================================================================================//
_admlog = player createDiaryRecord ["diary", ["Freqüències de Radio","
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
// NOTES: ADMINISTRACIÓ/LOGÍSTICA.                                                                       //
//=======================================================================================================//
_admlog = player createDiaryRecord ["diary", ["Administració/Logística","
<font color='#FF0000' size='18'>Suport</font>
<br/>
No hi ha cap unitat de suport durant l'acadèmia general.
<br/><br/>
<font color='#FF0000' size='18'>Abastiment</font>
<br/>
Caixes de munició adequades a cada camp de tir.
"]];

//=======================================================================================================//
// NOTES: EXECUCIÓ.                                                                                      //
//=======================================================================================================//
_execucio = player createDiaryRecord ["diary", ["Execució","
<font color='#FF0000' size='18'>Tasques: Dia 1</font>
<br/>
- Presentació.<br/>
- Balística i fonaments de la punteria amb fusell.<br/>
- Fonaments de la punteria amb fusell reforçats.<br/>
- Prioritzar i atacar objectius a diferents distàncies.
"]];

//=======================================================================================================//
// NOTES: MISSIÓ.                                                                                        //
//=======================================================================================================//
_missio = player createDiaryRecord ["diary", ["Missió","
Assolir els coneixements necessàris per les partides amb el 1er Regiment Aerotransportat dels Cavallers del Cel.
"]];

//=======================================================================================================//
// NOTES: INTEL·LIGÈNCIA.                                                                                //
//=======================================================================================================//
_intel = player createDiaryRecord ["diary", ["Intel·ligència","
<font color='#FF0000' size='18'>Forces enemigues</font>
<br/>
Cap.
<br/><br/>
<font color='#FF0000' size='18'>Forces aliades</font>
<br/>
Instructors i diversos elements de seguretat als camps de tir.
"]];

//=======================================================================================================//
// NOTES: SITUACIÓ.                                                                                      //
//=======================================================================================================//
_situacio = player createDiaryRecord ["diary", ["SITREP","
<font color='#FF0000' size='18'>Dia 1</font>
<br/><br/>
En aquesta primera classe s'explicarà el funcionament del simulador, amb un enfoc especial en en les tecles i funcions més importants.
Després es passarà a la part teòrica-practica per tal d'aprendre a disparar correctament i on es veuran els principis bàsics de la mecànica muscular,
el càlcul simple de distàncies i la priorització de blancs(Manual EBC, pàgines de la 4 a la 75 exceptuant el capítol ""Patrulla i formacions"").
"]];

//============================================ FI DEL FITXER ============================================//
