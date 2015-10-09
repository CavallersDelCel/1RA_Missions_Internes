//=======================================================================================================//
// Arxiu: cc_briefing_rhs_usarmy_d.sqf                                                                   //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 2015/02/22                                                                      //
// Descripció: Aquest document serveix per oferir informació de la missió si la unitat forma part de     //
//             la facció RHS: United States Army "rhs_faction_usarmy_d".                                 //
//             http://class.rhsmods.org/rhsusaf/CfgGroups_West_rhs_faction_usarmy_d.html                 //
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
_admlog = player createDiaryRecord ["diary", ["Freqüències de Ràdio","
<font color='#FF0000' size='18'>Freiheit (Infanteria)</font>: 40 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Eisenfaust (Blindats)</font>: 50 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Himmelsaugen (Aeronaus)</font>: 60 kHz.
- Himmelshilfe (Evacuació mèdica): 61 kHz.
- Himmelsfaust (Helicòpter de combat): 62 kHz
<br/><br/>
<font color='#FF0000' size='18'>Freiheit</font>
<br/>
- Esquadra ""Freiheit"": 200 kHz.
<br/>
- Equip de foc ""Freiheit 1"": 201 kHz.
<br/>
- Equip de foc ""Freiheit 2"": 202 kHz.
<br/><br/>
<font color='#FF0000' size='18'>Himmelsaugen</font>
<br/>
- Suport i evacuació ""Himmelsaugen"": 600 kHz.
<br/>
- Evacuació mèdica ""Himmelshilfe"": 601 kHz.
<br/>
- Helicòpter de combat ""Himmelsfaust"": 602 kHz.
"]];

//=======================================================================================================//
// NOTES: ADMINISTRACIÓ/LOGÍSTICA.                                                                       //
//=======================================================================================================//
_admlog = player createDiaryRecord ["diary", ["Administració/Logística","
<font color='#FF0000' size='18'>Suport</font>
<br/>
- Helicòpter de combat denepent d'efectius d'última hora.<br/>
- Evacuació mèdica depenet d'efectius d'última hora.
<br/><br/>
<font color='#FF0000' size='18'>Abastiment</font>
<br/>
Avastiment depenent d'efectius d'última hora.
"]];

//=======================================================================================================//
// NOTES: EXECUCIÓ.                                                                                      //
//=======================================================================================================//
_execucio = player createDiaryRecord ["diary", ["Execució","
<font color='#FF0000' size='18'>Tasques</font>
<br/>
- Freiheit 1 investigarà la pèrdua de contacte amb Eisenfaust per tal d'afegir la seva potència de foc a la defensa del HQ.<br/>
- Freiheit 2 farà un perímetre d'explosius a Sofia i un cop detonats es retirarà de forma organitzada per col·laborar a la defensa de HQ.<br/>
- Defensar el HQ de l'atac de les forces CSAT."]];

//=======================================================================================================//
// NOTES: MISSIÓ.                                                                                        //
//=======================================================================================================//
_missio = player createDiaryRecord ["diary", ["Missió","
Dos equips d'infanteria, amb un possible suport aèri són les peces clau de la defensa del campament aliat al nord d'Altis. Mentres Freiheit 1 investiga la pèrdua de contacte per ràdio amb Eisenfaust, Freiheit 2 montarà un perímetre de defensa amb explosius a Sofia per després fer una retirada estratègica cap al HQ.
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
- Esquadra d'Infanteria Freiheit.<br/>
- Esquadra mecanitzada Eisenfaust.<br/>
- Suport aèri Himmelsaugen.<br/>
- Secció Vergeltung (Nord d'Altis: Molos).
<br/><br/>
<font color='#FF0000' size='18'>Civils</font>
<br/>
Presència civil baixa a l'àrea d'operacions. És possible que siguin simpatitzants del CSAT.
"]];

//=======================================================================================================//
// NOTES: SITUACIÓ.                                                                                      //
//=======================================================================================================//
_situacio = player createDiaryRecord ["diary", ["SITREP","
L'avanç inexorable de les forces del CSAT han obligat als països aliats a intervenir per tal d'aturar l'annexió constant de territori utilitzant la força bruta. L'illa d'Altis, ha sigut considerada com un punt estratègic clau a l'hora de mantenir el control del Mediterrani. Després de diversos intents, s'ha aconseguit establir una zona d'operacions al nord d'aquesta illa però la situació no està gens resolta.<br/>

Després de l'operació fallida per acabar amb el coronel enemic Ohmid Raheem es preveu un atac de represàlia contra les forces aliades estacionades al nord d'Altis. L'atac es creu inminent i es preveu que començarà, en un acte d'arrogància, per la ciutat recentment alliberada de Sofia i de pas acabar amb brots d'insurgència entre la població civil. Per aquest motiu, Sofia ha sigut evacuada però algunes families no han volgut abandonar la seva llar malgrat l'amenaça i es creu que alguns d'ells poden ser simpatitzants de la nació del CSAT. <br/>

L'atac inicial a Sofia permetrâ a les forces aliades crear un punt de defensa avançat des del que mermar l'efectivitat dels blindats enemics. A tal efecte l'equip de sabotejadors Freiheit 2 es dirigirà amb tota celeritat a la ciutat de Sofia per plantar un perímetre defensiu amb explosius i dur a terme una retirada estratègica fins al camp base. La resta de la companyia Freiheit intentarà donar suport durant la retirada.<br/>

Mentrestant Freiheit 1 investigarà la pèrdua de contacte per ràdio amb la columna de blindats *Eisenfaust* per tal de reforçar la defensa. S'intentarà donar suport aèri durant l'operació de rescat depenent dels efectius disponibles a última hora.
"]];

//============================================ FI DEL FITXER ============================================//
