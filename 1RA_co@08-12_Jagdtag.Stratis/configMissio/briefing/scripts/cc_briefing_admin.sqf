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
- Community Base Addons (CBA) v2.0.
<br/>
- RHS United States Army Forces (RHS USAF) v0.3.9.1.
<br/>
- Task Force Arrowhead Radio (TFAR) v0.9.7.3.
<br/>
- Advanced Combat Environment 3 (ACE3) v3.3.2.
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
<font color='#00FFFF'>Nom de la missió:</font> ""Operació Jagdtag: Dia de caça"".
<br/>
<font color='#00FFFF'>Versió:</font> 1.2.
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
<font color='#00FFFF'>Resum de la missió:</font> Operació ""Jagdtag: Dia de caça"" és una missió que divideix una esquadra en dos equips independents que no es podran comunicar per ràdio fins que les torres inhibidores de senyal siguin destruïdes. Partint d'escaça informació inicial els dos equips van obtenint més detalls dels objectius a mesura que s'avança en la missió a través d'informes d'inteligència. Per tal d'acomplir els objectius es requereixen entre 8 i 12 jugadors molt ben coordinats ja que es considera una missió difícil. Les tasques no s'actualitzen un cop completades i són els jugadors els qui decideixen si l'han completat o no.
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
    "<execute expression=""[[%1],true] remoteExecCall [""BIS_fnc_endMission"", 0, true];"">- %2</execute>: %3.<br/>", _nomFinal, _titol, _descripcio
    ];
};

_briefing = _briefingAdmin + _briefingNotes + _briefingFinals;

//=======================================================================================================//
// CREACIÓ DE L'ENTRADA.                                                                                 //
//=======================================================================================================//
player createDiaryRecord ["diary", ["Admin",_briefing]];

//============================================ FI DEL FITXER ============================================//
