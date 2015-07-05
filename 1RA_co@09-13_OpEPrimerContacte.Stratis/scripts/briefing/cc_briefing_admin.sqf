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
- Community Base Addons (CBA) v1.1.23.150604. RC7 Hotfix 2
<br/>
- RHS United States Army Forces (RHS USAF) v0.3.8.
<br/>
- RHS United States Army Forces (RHS USAF) v0.3.8.
<br/>
- Task Force Arrowhead Radio (TFAR) v0.9.8.
<br/>
- Authentic Gameplay Modification (AGM) v0.95.3.
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
<font color='#00FFFF'>Nom de la Missió:</font> ""Operació Escurçó: Primer Contacte"".
<br/>
<font color='#00FFFF'>Versió:</font> 1.0.
<br/>
<font color='#00FFFF'>Autor:</font> CC Arnau002, CC_Magnetar.
<br/>
<font color='#00FFFF'>Nombre mínim de jugadors:</font> 9.
<br/>
<font color='#00FFFF'>Nombre màxim de jugadors:</font> 13.
<br/>
<font color='#00FFFF'>Respawn:</font> Deshabilitat.
<br/>
<font color='#00FFFF'>Dificultat:</font> Elevada.
<br/>
<font color='#00FFFF'>Resum de la missió:</font>
<br/><br/>
""Operació Escurçó: Primer Contacte"" representa els primers dies d'una revolució a Stratis. Hi participen dos forces d'exèrcits diferents, amb inici en punts diferents, cada una amb els seus propis objectius, els catalans destruir uns llançamíssils i els rebels capturar Kill Farm, Camp Rogain i Kamino. Al principi no es poden comunicar per ràdio ja que tenen models diferents. Aquestes forces poden cooperar per complir els diferents objectius, de fet es recomana ja que la missió té una dificultat elevada, apta per a 9-13 jugadors. Les tasques no s'actualitzen al completar-les, els propis jugadors han de valorar si ho estan o no.
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