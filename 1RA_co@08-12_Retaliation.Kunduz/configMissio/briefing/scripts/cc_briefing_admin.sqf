//=======================================================================================================//
// Arxiu: cc_briefing_admin.sqf                                                                          //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/02/22                                                                      //
// Descripció: Aquest document serveix per oferir informació de la missió a l'administrador. Aquests     //
//             missatges només els veurà l'administrador) i per tant poden oferir suggerències sobre     //
//             condicions de la partida, Zeus, possibles finals, etc.                                    //
// Cavnis: 0.1 (2015/02/22) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
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
- Advanced Combat Environment 3 (ACE3) v3.4.2.
<br/>
- Advanced Light Infantry Virtual Environment (ALIVE) v0.9.10
<br/>
- Community Base Addons (CBA) v2.0.
<br/>
- Dynamic-AI-Creator (DAC) v3.1b (addon version).
<br/>
- Kunduz, Afghanistan v1.08.
<br/>
- Leights Opfor Pack (LOP) v1.7.1.
<br/>
- RHS United States Army Forces (RHS USAF) v0.4.2.
<br/>
- RHS Armed Forces of the Russian Federation (RHS AFRF) v0.4.2.
<br/>
- Task Force Arrowhead Radio (TFAR) v0.9.7.3.
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
<font color='#00FFFF'>Nom de la missió:</font> ""Retaliation"".
<br/>
<font color='#00FFFF'>Versió:</font> 1.0.
<br/>
<font color='#00FFFF'>Autor:</font> CC_Magnetar.
<br/>
<font color='#00FFFF'>Col·laboradors:</font> -.
<br/>
<font color='#00FFFF'>Nombre mínim de jugadors:</font> 8.
<br/>
<font color='#00FFFF'>Nombre màxim de jugadors:</font> 12.
<br/>
<font color='#00FFFF'>Respawn:</font> Deshabilitat.
<br/>
<font color='#00FFFF'>Dificultat:</font> Elevada amb CQB.
<br/>
<font color='#00FFFF'>Resum de la missió:</font> ""Retaliation"" és una missió que transcorre a Kunduz,
Afghanistan, després dels esdeveniments de la missió ""Home sweet home..."". En aquesta missió, els
jugadors hauran de rescatar els companys capturats per les forces insurgents afganes i recuperar qualsevol
informació que hagin pogut extreure dels militars capturats. La tasca no s'actualitza un cop completada i
són els jugadors els qui decideixen si l'han completat o no. Les patrulles i unitats al mapa són totalment
aleatòries i el briefing de la missió es du a terme al principi, utilitzant les eines Slideshow de ACE3.
Els jugadors tenen al seu abast, CAS i evacuació per helicòpter.
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

// Fes una llista de tots els finals inclosos a desctiption.ext de forma automàtica.
_tipusFinals = (missionConfigFile >> "CfgDebriefing");
for [{ _x = 0 }, {_x < count _tipusFinals}, { _x = _x + 1}] do {
    _nomFinal = (configName ((missionConfigFile >> "CfgDebriefing") select _x));
    _titol = getText (missionConfigFile >> "CfgDebriefing" >> format["%1",_nomFinal] >> "title");
    _descripcio = getText (missionConfigFile >> "CfgDebriefing" >> format["%1",_nomFinal] >> "description");
    _briefingFinals = _briefingFinals + format [
    "<execute expression=""['%1',true] remoteExec ['BIS_fnc_endMission', 0, true];"">- %2</execute>: %3.<br/>", _nomFinal, _titol, _descripcio
    ];
};

_briefing = _briefingAdmin + _briefingNotes + _briefingFinals;

//=======================================================================================================//
// CREACIÓ DE L'ENTRADA.                                                                                 //
//=======================================================================================================//
player createDiaryRecord ["diary", ["Admin",_briefing]];

//============================================ FI DEL FITXER ============================================//
