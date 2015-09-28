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
// MISSATGES QUE NOMÉS VEURÀ L'ADMINISTRADOR.                                                            //
//=======================================================================================================//

//=======================================================================================================//
// NOTES: ADMINISTRADOR.                                                                                 //
//=======================================================================================================//
_briefingAdmin = "
<font color='#FF0000' size='18'>Informació per l'administrador</font>
<br/>
Aquesta missió s'ha comprovat que funciona amb el següent:
<br/><br/>
- Community Base Addons (CBA) v2.0.
<br/>
- RHS United States Army Forces (RHS USAF) v0.3.9.1.
<br/>
- Task Force Arrowhead Radio (TFAR) v0.9.7.3.
<br/>
- Advanced Combat Environment 3 (ACE3) v3.3.2.
<br/>
- Dynamic-AI-Creator (DAC) v3.1b (versió en script).
<br/><br/>
Si els requisits no es compleixen o les versions són diferents cal comprovar prèviament que tot funcioni correctament.
<br/>
";

//=======================================================================================================//
// NOTES: CREADOR DE LA MISSIÓ.                                                                          //
//=======================================================================================================//

_briefingNotes = "
<br/>
<font color='#FF0000' size='18'>Notes del creador de la missió</font>
<br/>
<font color='#00FFFF'>Nom de la missió:</font> ""Operació Fantasma"".
<br/>
<font color='#00FFFF'>Versió:</font> 1.0.
<br/>
<font color='#00FFFF'>Autor:</font> CC_Magnetar.
<br/>
<font color='#00FFFF'>Nombre mínim de jugadors:</font> 8.
<br/>
<font color='#00FFFF'>Nombre màxim de jugadors:</font> 12.
<br/>
<font color='#00FFFF'>Respawn:</font> Deshabilitat.
<br/>
<font color='#00FFFF'>Dificultat:</font> Elevada.
<br/>
<font color='#00FFFF'>Resum de la missió:</font> Operació ""Fantasma"" és una missió en el que dos equips de foc i un de tiradors han d'eliminar un oficial enemic en una zona amb força presència civil. Per tal d'acomplir els objectius es requereixen entre 8 i 12 jugadors molt ben coordinats ja que es
considera una missió difícil. La tasca no s'actualitza un cop completada i són els jugadors els qui decideixen si l'han completat o no.
<br/>
";

//=======================================================================================================//
// NOTES: FINALS DE LA MISSIÓ.                                                                           //
//=======================================================================================================//

_briefingFinals = "
<br/>
<font color='#FF0000' size='18'>Diferents finals de la missió</font>
<br/>
Selecciona un dels finals per activar-lo.
<br/><br/>
";

// Cada un dels finals a description.ext s'ha d'incloure.
_briefingFinals = _briefingFinals + format [
"<execute expression=""['Final1',true] call BIS_fnc_endMission;"">- Final amb èxit 1</execute>: Coronel eliminat.<br/>"
];

_briefingFinals = _briefingFinals + format [
"<execute expression=""['FinalFallit1',false] call BIS_fnc_endMission;"">- Final fallit 1</execute>: Tots morts. Coronel eliminat.<br/>"
];

_briefingFinals = _briefingFinals + format [
"<execute expression=""['FinalFallit2',false] call BIS_fnc_endMission;"">- Final fallit 2</execute>: Missió abortada.<br/>"
];

_briefingFinals = _briefingFinals + format [
"<execute expression=""['FracasAbsolut',false] call BIS_fnc_endMission;"">- Fracàs Absolut</execute>: Tots morts. Coronel no eliminat."
];

_briefing = _briefingAdmin + _briefingNotes + _briefingFinals;

//=======================================================================================================//
// CREACIÓ DE L'ENTRADA.                                                                                 //
//=======================================================================================================//
player createDiaryRecord ["diary", ["Admin",_briefing]];

//============================================ FI DEL FITXER ============================================//