//=======================================================================================================//
// Arxiu: cc_briefing_rhs_usmc_d.sqf                                                                     //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/02/22                                                                      //
// Descripció: Aquest document serveix per oferir informació de la missió si la unitat forma part de     //
//             la facció RHS: United States Marine Corps "rhs_faction_usmc_d"                            //
//             http://doc.rhsmods.org/index.php/United_States_Marine_Corps                               //
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
// NOTES: RADIO.                                                                                         //
//=======================================================================================================//
_admlog = player createDiaryRecord ["diary", ["Freqüències de Radio","
- Esquadra ""Alfa"": 200 kHz.
<br/>
- Equip de foc ""Alfa 1-1"": 201 kHz.
<br/>
- Equip de foc ""Alfa 1-2"": 202 kHz.
<br/>
- Equip de foc ""Alfa 1-3"": 203 kHz.
"]];

//=======================================================================================================//
// NOTES: ADMINISTRACIÓ/LOGÍSTICA.                                                                       //
//=======================================================================================================//
_admlog = player createDiaryRecord ["diary", ["Administració/Logística","
<font color='#FF0000' size='18'>Suport</font>
<br/>
- ""November 1"": Helicòpter amb capacitats CAS.de combat denepent d'efectius d'última hora.<br/>
- ""Rain 1-3"": 3 helicòpters de transport sense capacitat ofensiva.
<br/><br/>
<font color='#FF0000' size='18'>Abastiment</font>
<br/>
Sense abastiment, les tropes s'hauran d'espavilar amb el que tenen.
"]];

//=======================================================================================================//
// NOTES: EXECUCIÓ.                                                                                      //
//=======================================================================================================//
_execucio = player createDiaryRecord ["diary", ["Execució","
<font color='#FF0000' size='18'>Tasques principals</font>
<br/>
- <font color='#00FFFF'>Tasca principal 1</font>: Rescatar els marines capturats en l'atac enemic la setmana passada..
<br/>
- <font color='#00FFFF'>Tasca principal 2</font>: Recuperar qualsevol informe d'inteligència filtrat.
<br/><br/>
<font color='#FF0000' size='18'>Tasques secundària</font>
<br/>
- <font color='#00FFFF'>Tasca secundària 1</font>: Capturar el nou cap del grup insurgent.
<br/><br/>
<font color='#FF0000' size='18'>Execució</font>
<br/>
- Inserció al punt <marker name=""Insercio"">LZ1</marker>.
<br/>
- Contactar amb la <marker name=""Insercio"">policia afgana</marker> per intercanviar informació sobre la localització del nou cap insurgent.
<br/>
- Acostar-se a l'àrea d'operacions i <marker name=""Eliminar"">rescatar els marines capturats</marker>.
<br/>
- Minimitzar les baixes civils per tal de guanyar-se el seu respecte i col·laboració.
<br/>
- Dirigir-se a la base aliada de Foxtrot pel <marker name=""Extraccio"">nord-est</marker> per tal de tractar mèdicament els marines capturats.
"]];

//=======================================================================================================//
// NOTES: MISSIÓ.                                                                                        //
//=======================================================================================================//
_missio = player createDiaryRecord ["diary", ["Missió","
Dos equips d'infanteria i un de tiradors seran desplegats a Kunduz, Afghanistan, amb l'objectiu d'alliberar,
amb la col·laboració passiva de la policia afgana, els marines capturats la setmana passada en un atac
insurgent mai vist fins ara. Amb tota seguretat els marines capturats hauran estat sotmesos a tortura. És
d'alta prioritat recuperar qualsevol possbile informació que s'hagi pogut extreure als nostres companys.
<br/>
Degut a la forta presència de tropes enemigues i a la hostilitat dels civils, s'ha considerat oportú assignar
la unitat de suport aèri (CAS) ""November"" i l'equip d'evacuació ""Rain"" a l'esquadra alfa. Segons
intel·ligència les tropes enemigues estan mal equipades i disposen de poques o nul·les possibilitats de
contraatacar de forma efectiva un atac aèri o a distancia, especialment a la foscor.
"]];

//=======================================================================================================//
// NOTES: INTEL·LIGÈNCIA.                                                                                //
//=======================================================================================================//
_intel = player createDiaryRecord ["diary", ["Intel·ligència","
<font color='#FF0000' size='18'>Forces enemigues</font>
<br/>
S'espera una forta presència d'unitats enemigues a la zona. Els insurgents estan mal equipats i no disposen
de visió nocturna
<br/><br/>
<font color='#FF0000' size='18'>Forces aliades</font>
<br/>
- Esquadra alfa amb equip de tiradors.
- Helicòpter de combat (CAS) ""November"".
- Equip d'evacuació ""Rain"": 3 helicòpters sense capacitats ofensives destinats a evacuació.
<br/><br/>
<font color='#FF0000' size='18'>Civils</font>
<br/>
Forta presència civil a l'àrea d'operacions. S'ha demostrat en passades operacions que els civils a la regió
són simpatitzants de la insurgència i per tant són mitjanament hostils a les forces aliades.
"]];

//=======================================================================================================//
// NOTES: SITUACIÓ.                                                                                      //
//=======================================================================================================//
_situacio = player createDiaryRecord ["diary", ["SITREP","
La setmana passada, un convoy de marines que tornaven a casa va ser atacat brutalment i els pocs supervivents
van ser capturats. Els autors de l'atac són un nou grup d'insurgents radicals a la regió de Kunduz.
<br/>
Degut a la retirada activa de tropes per raons polítiques, un grup reduït de soldats altament equipats s'ha
assignat a la tasca de rescatar els companys capturats. S'espera, amb aquesta operació, llençar un missatge
a qualsevol grup insurgent: cap atac quedarà sense resposta!
"]];

//============================================ FI DEL FITXER ============================================//
