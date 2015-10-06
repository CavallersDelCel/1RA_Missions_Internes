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
*** Llistat d'addons i les seves versions. ***
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
<font color='#00FFFF'>Nom de la missió:</font> ""DCS i Arma 3"".
<br/>
<font color='#00FFFF'>Versió:</font> 1.0.
<br/>
<font color='#00FFFF'>Autor:</font> CC_Magnetar.
<br/>
<font color='#00FFFF'>Nombre mínim de jugadors:</font> 1.
<br/>
<font color='#00FFFF'>Nombre màxim de jugadors:</font> 14.
<br/>
<font color='#00FFFF'>Respawn:</font> Base.
<br/>
<font color='#00FFFF'>Dificultat:</font> Nula.
<br/>
<font color='#00FFFF'>Resum de la missió:</font> Pràctiques de coordinació entre els grups d'infanteria i d'aviació. La missió té varies zones DAC que es poden activar/desactivar a través d'accions assignades al líder d'esquadra. Cada zona conté un tipus especial d'unitats enemigues:
<br/>
- Zona 1: Zona poblada en la seva totalitat per unitats d'infanteria.<br/>
- Zona 2: Zona poblada per unitats d'infanteria i vehicles lleugers.<br/>
- Zona 3: Zona poblada per unitats d'infanteria, vehicles lleugers i blindats.<br/>
- Zona 4: Zona poblada per unitats d'infanteria, vehicles lleugers, blindats i helicòpters.<br/>
- Zona 5: Zona poblada per unitats d'infanteria, vehicles lleugers i helicòpters.
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
