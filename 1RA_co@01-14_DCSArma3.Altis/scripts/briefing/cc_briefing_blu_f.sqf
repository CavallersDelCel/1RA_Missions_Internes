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
Missió generada per <font color='#00FFFF'>Magnetar</font> per a la <font color='#00FFFF'>Comunitat Catalana de Simulació - Cavallers del Cel</font>.
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
<br/>
- FALCÓ 1 - Freqüència 71 kHz.
- FALCÓ 2 - Freqüència 72 kHz.
- FALCÓ 3 - Freqüència 73 kHz.
- FALCÓ 4 - Freqüència 74 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Alfa</font>
<br/>
- Esquadra ""Alfa"": 200 kHz.
<br/>
- Equip de foc ""Alfa 1-1"": 201 kHz.
<br/>
- Equip de foc ""Alfa 1-2"": 202 kHz.
<br/>
- Pilots ""Alfa 1-3"": 203 kHz.
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
<font color='#FF0000' size='18'>Tasca principals</font>
<br/>
- Coordinar correctament l'assalt a una posició amb unitats d'infanteria i d'aviació.
"]];

//=======================================================================================================//
// NOTES: MISSIÓ.                                                                                        //
//=======================================================================================================//
_missio = player createDiaryRecord ["diary", ["Missió","
Eliminar les tropes enemigues a cada una de les zones amb el mínim de baixes possibles.
"]];

//=======================================================================================================//
// NOTES: INTEL·LIGÈNCIA.                                                                                //
//=======================================================================================================//
_intel = player createDiaryRecord ["diary", ["Intel·ligència","
<font color='#FF0000' size='18'>Forces enemigues</font>
<br/>
- Zona 1: Zona poblada en la seva totalitat per unitats d'infanteria.<br/>
- Zona 2: Zona poblada per unitats d'infanteria i vehicles lleugers.<br/>
- Zona 3: Zona poblada per unitats d'infanteria, vehicles lleugers i blindats.<br/>
- Zona 4: Zona poblada per unitats d'infanteria, vehicles lleugers, blindats i helicòpters.<br/>
- Zona 5: Zona poblada per unitats d'infanteria, vehicles lleugers i helicòpters.
<br/><br/>
<font color='#FF0000' size='18'>Forces aliades</font>
<br/>
- Esquadra Alfa amb suport aeri.
"]];

//=======================================================================================================//
// NOTES: SITUACIÓ.                                                                                      //
//=======================================================================================================//
_situacio = player createDiaryRecord ["diary", ["SITREP","
La zona d'Altis ha sigut invaïda per les forces del mal del CSAT. Els Cavallers del Cel han de destruïr aquesta amenaça que creix com a bolets...
"]];

//============================================ FI DEL FITXER ============================================//
