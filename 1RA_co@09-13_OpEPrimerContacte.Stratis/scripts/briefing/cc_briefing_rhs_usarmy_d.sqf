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
- Equip Alpha: 201 kHz.
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
- Marcada al mapa hi ha la zona on es troba una caixa amb armes, munició i material mèdic
"]];

//=======================================================================================================//
// NOTES: EXECUCIÓ                                                                                       //
//=======================================================================================================//
_execucio = player createDiaryRecord ["diary", ["Tasques i Execució","
<br/>
<font color='#FF0000' size='18'>Tasca prioritària</font>
<br/>
- Destruir el llançamíssils
<br/><br/>
<font color='#FF0000' size='18'>Altres tasques</font>
<br/>
- Contactar amb tropes rebels a la zona de Kill Farm
<br/>
- Si les condicions ho permeten capturar les antenes de comunicacions
<br/>
- Establir una base com a punt d'operacions per a properes missions a la zona
<br/><br/>
<font color='#FF0000' size='18'>Execució</font>
<br/>
- Inserció al nord-oest de l'illa
<br/>
- Anar fins a Kill Farm mirant de no alertar als enemics, com més a l'interior de l'illa és més probable
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
- Cal extremar les precaucions per evitar foc amic a les àrees controlades pels Rebels
<br/>
- Es recomana no estar més temps del imprescindible en territori hostil
<br/>
- Es recomana cooperar amb les forces Rebels
<br/>
- Es consideraran les Antenes capturades si elimineu tots els enemics de la zona i comproveu sobre el terreny que no queden contactes
<br/>
- Les vostres vides són més importants que qualsevol objectiu, no us exposeu innecessàriament
<br/>
- En qualsevol moment podeu donar per finalitzada la missió retirant-vos a un d'aquests tres punts (Campament Rebel, Kill Farm, Camp Rogain o Kamino) i comunicant-ho per radio
<br/>
- La desició de finalitzar la missió s'ha de prendre conjuntament amb les unitats Rebels
"]];

//=======================================================================================================//
// NOTES: INTEL·LIGÈNCIA                                                                                 //
//=======================================================================================================//
_intel = player createDiaryRecord ["diary", ["Intel·ligència","
<br/>
- L'extrem al nord-oest de l'illa és el punt de la costa menys controlat per l'enemic
<br/>
- En cas de ser detectats en el procés d'aproximació a l'illa s'espera una reacció immediata de les forces Russes
<br/>
- Poden haver-hi observadors i patrulles al llarg de la costa controlada pels Russos
<br/>
- S'espera gran presència enemiga a l'àrea objectiu
<br/>
- Les ordres, objectius i condicions de l'exèrcit rebel són desconegudes per a nosaltres
<br/><br/>
<font color='#FF0000' size='18'>Forces enemigues</font>
<br/>
Forces d'infanteria aerotransportades abundants, blindats lleugers i algun helicòpter de transport. Hi ha la possibilitat de trobar algun tanc (T-72), antitanc o antiaeri.
<br/><br/>
<font color='#FF0000' size='18'>Forces aliades</font>
<br/>
Soldats rebels amb armes lleugeres i alguna arma estàtica. No coneixem la quantitat de les forces aliades a l'illa.
"]];

//=======================================================================================================//
// NOTES: SITUACIÓ                                                                                       //
//=======================================================================================================//
_situacio = player createDiaryRecord ["diary", ["Situació","
<br/>
La ocupació de les illes d'Altis i Stratis per part de la Federació Russa ha fet augmentar la tensió en aquesta zona del Mediterrani. Després de mesos de negociació sense èxit ha esclatat una revolta entre la població d'aquestes illes. Els rebels controlen dues zones de l'illa, la zona muntanyosa del nord i al sud la població de Girna i les seves rodalies.
<br/><br/>
Tenim informacions d'intel•ligència sobre la instal•lació d'una  base llançamíssils a l'illa de Stratis amb abast a zones importants del sud d'Europa, hem d'aprofitar aquesta revolta per destruir aquests míssil
<br/><br/>
Per aquest motiu s'ha enviat un equip per actuar ràpidament davant d'aquesta amenaça. S'espera una gran presència enemiga a la zona d'operacions, principalment a la zona objectiu, bases i  vies de comunicació
"]];

//============================================ FI DEL FITXER ============================================//