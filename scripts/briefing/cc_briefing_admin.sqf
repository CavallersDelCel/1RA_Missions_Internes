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
_customText = "";

//=======================================================================================================//
// NOTES: ADMINISTRADOR                                                                                  //
//=======================================================================================================//
_briefing ="
<br/>
<font size='18'>Secció de l'administrador</font><br/>
*** Informació que només l'administrador podrà veure. ***
<br/><br/>
";

//=======================================================================================================//
// NOTES: CREADOR DE LA MISSIÓ                                                                           //
//=======================================================================================================//

_briefing ="
<br/>
<font size='18'>Notes del creador de la missió</font><br/>
*** Notes i missatges del creador de la missió. ***
";

_briefing = _briefing + _customText;
_briefing = _briefing + "<br/><br/>";

//=======================================================================================================//
// CREACIÓ DE L'ENTRADA                                                                                  //
//=======================================================================================================//
player createDiaryRecord ["diary", ["Admin",_briefing]];