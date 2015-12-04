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
<br/>
- Dynamic-AI-Creator (DAC) v3.1b (versió en script).<br/>
- RHS United States Armed Forces (RHS USAF) v0.3.9.1.<br/>
- Community Base Addons (CBA) v2.0.<br/>
- Advanced Combat Environment 3 (ACE3) v0.3.2.<br/>
- Task Force Arrowhead Radio (TFAR) v0.9.7.3.<br/>
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
<font color='#00FFFF'>Nom de la missió:</font> ""Vergeltung (Venjança)"".
<br/>
<font color='#00FFFF'>Versió:</font> 1.0.
<br/>
<font color='#00FFFF'>Autor:</font> CC_Magnetar.
<br/>
<font color='#00FFFF'>Nombre mínim de jugadors:</font> 8.
<br/>
<font color='#00FFFF'>Nombre màxim de jugadors:</font> 14.
<br/>
<font color='#00FFFF'>Respawn:</font> BIRD amd càmera d'espectador.
<br/>
<font color='#00FFFF'>Dificultat:</font> Elevada.
<br/>
<font color='#00FFFF'>Resum de la missió:</font> ""Vergeltung (Venjança)"" és una missió en el que dos equips de foc
han de dur a terme tasques independents per tal de col·laborar en la defensa del campament aliat enfront un atac
enemic. Els equips de foc tenen cobertura i evacuació aèria. Per tal d'acomplir els objectius es requereixen entre 8
i 12 jugadors molt ben coordinats ja que es considera una missió difícil i requereix coordinació a tres bandes. La
partida no espera als jugadors i els esdeveniments succeiexen de cert temps. S'acaba un cop les forces enemigues hagin
sigut eliminades en la seva totalitat. El brífing el dóna el líder d'equip de foc a dins de la partida.
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
