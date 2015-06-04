//=======================================================================================================//
// Arxiu: cc_briefing_admin.sqf                                                                          //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 22/02/2015                                                                      //
// Descripció: Aquest document serveix per oferir informació de la missió a l'administrador. Aquests     //
//             missatges només els veurà l'administrador) i per tant poden oferir suggerències sobre     //
//             condicions de la partida, Zeus, possibles finals, etc.                                    //
//=======================================================================================================//

//=======================================================================================================//
// MISSATGES QUE NOMÉS VEURÀ L'ADMINISTRADOR                                                             //
//=======================================================================================================//

//=======================================================================================================//
// NOTES: ADMINISTRADOR                                                                                  //
//=======================================================================================================//
_briefingAdmin = "
<br/>
<font color='#FF0000' size='18'>Informació per l'administrador</font>
<br/><br/>
Aquesta missió s'ha comprovat que funciona amb el següent:
<br/><br/>
*** Llistat d'addons i les seves versions. ***
<br/><br/>
Si els requisits no es compleixen o les versions són diferents cal comprovar prèviament que tot funcioni correctament.
<br/><br/>
";

//=======================================================================================================//
// NOTES: CREADOR DE LA MISSIÓ                                                                           //
//=======================================================================================================//

_briefingNotes = "
<br/>
<font color='#FF0000' size='18'>Notes del creador de la missió</font>
<br/><br/>
<font color='#00FFFF'>Nom de la Missió:</font> ""Operació Jagdtag: Dia de caça"".
<br/>
<font color='#00FFFF'>Versió:</font> 1.0.
<br/>
<font color='#00FFFF'>Autor:</font> CC Magnetar.
<br/>
<font color='#00FFFF'>Nombre mínim de jugadors:</font> 8.
<br/>
<font color='#00FFFF'>Nombre màxim de jugadors:</font> 12.
<br/>
<font color='#00FFFF'>Respawn:</font> Deshabilitat.
<br/>
<font color='#00FFFF'>Dificultat:</font> Elevada.
<br/>
<font color='#00FFFF'>Resum de la missió:</font>
<br/><br/>
*** Notes i missatges addicionals del creador de la missió. ***
";

//=======================================================================================================//
// NOTES: FINALS DE LA MISSIÓ                                                                            //
//=======================================================================================================//

_briefingFinals = "
<br/>
<font color='#FF0000' size='18'>Diferents finals de la missió</font>
<br/>
Selecciona un dels finals per activar-lo.
<br/><br/>
";

_briefing = _briefingAdmin + _briefingNotes + _briefingFinals;
_briefing = _briefing + "<br/><br/>";

//=======================================================================================================//
// CREACIÓ DE L'ENTRADA                                                                                  //
//=======================================================================================================//
player createDiaryRecord ["diary", ["Admin",_briefing]];

//============================================ FI DEL FITXER ============================================//