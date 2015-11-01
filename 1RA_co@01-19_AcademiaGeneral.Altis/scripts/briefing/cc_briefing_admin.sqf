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
- RHS United States Armed Forces (RHS USAF) v0.3.9.1.<br/>
- Community Base Addons (CBA) v2.0.<br/>
- Advanced Combat Environment 3 (ACE3) v0.3.2.<br/>
- Task Force Arrowhead Radio (TFAR) v0.9.7.3.<br/>
- Dynamic-AI-Creator (DAC) v3.1b (versió script).
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
<font color='#00FFFF'>Nom de la missió:</font> ""Acadèmia General"".
<br/>
<font color='#00FFFF'>Versió:</font> 1.0.
<br/>
<font color='#00FFFF'>Autor:</font> CC_Magnetar.
<br/>
<font color='#00FFFF'>Col·laboradors:</font> CC_Viper.
<br/>
<font color='#00FFFF'>Nombre mínim de jugadors:</font> 1.
<br/>
<font color='#00FFFF'>Nombre màxim de jugadors:</font> 16.
<br/>
<font color='#00FFFF'>Respawn:</font> INSTANT amb càmera d'espectador.
<br/>
<font color='#00FFFF'>Dificultat:</font> Nul·la.
<br/>
<font color='#00FFFF'>Resum de la missió:</font> ""Acadèmia General"" és una missió que serveix per entrenar
diferents aspectes de l'Arma 3 adaptats al nivell de simulació del grup 1er Regiment Aerotransportat (1RA)
dels Cavallers del Cel.
<br/>
Patrulles del CSAT estan disponibles a les següents posicions. Cal activar-les mitjançant els ordinadors a
cada punt de teletransport.
- Marcador ""Patrulla"": 3 zones DAC amb infanteria amb 2-3 grups. Cada grup està format per 2-4 unitats
(Líder d'esquadra i unitats aleatòries [fuseller lleuger, fuseller, fuseller automàtic i metge].
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
    "<execute expression=""[[%1],true] call BIS_fnc_endMission;"">- %2</execute>: %3.<br/>", _nomFinal, _titol, _descripcio
    ];
};

_briefing = _briefingAdmin + _briefingNotes + _briefingFinals;

//=======================================================================================================//
// CREACIÓ DE L'ENTRADA.                                                                                 //
//=======================================================================================================//
player createDiaryRecord ["diary", ["Admin",_briefing]];

//============================================ FI DEL FITXER ============================================//
