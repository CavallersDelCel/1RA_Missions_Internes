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
<<<<<<< HEAD
<br/><br/>
<font color='#00FFFF'>Nom de la missió:</font> ""*** Nom de la missió ***"".
=======
>>>>>>> 4dd9bedd64e5e33de7f8073a81e37cbdeedc4c05
<br/>
<font color='#00FFFF'>Nom de la missió:</font> ""Operació Jagdtag: Dia de caça"".
<br/>
<font color='#00FFFF'>Versió:</font> 1.2.
<br/>
<font color='#00FFFF'>Autor:</font> CC_Magnetar.
<br/>
<font color='#00FFFF'>Col·laboradors:</font> *** Listat de col·laboradors ***.
<br/>
<font color='#00FFFF'>Col·laboradors:</font> *** Listat de col·laboradors ***.
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

<<<<<<< HEAD
// Cada un dels finals a description.ext s'ha d'incloure.
_briefingFinals = _briefingFinals + format [
"<execute expression=""['FinalExit1',true] call BIS_fnc_endMission;"">Final amb èxit 1</execute>: Torres destruides. Traidor mort. Sense documents d'intel·ligència.<br/><br/>"
];
_briefingFinals = _briefingFinals + format [
"<execute expression=""['FinalExit2',true] call BIS_fnc_endMission;"">Final amb èxit 2</execute>: Torres no destruides. Traidor mort. Sense documents d'intel·ligència.<br/><br/>"
];
_briefingFinals = _briefingFinals + format [
"<execute expression=""['FinalExit3',true] call BIS_fnc_endMission;"">Final amb èxit 3</execute>: Torres no destruides. Traidor mort. Amb documents d'intel·ligència.<br/><br/>"
];
_briefingFinals = _briefingFinals + format [
"<execute expression=""['FinalExit4',true] call BIS_fnc_endMission;"">Final amb èxit 4</execute>: Torres destruides. Traidor viu. Sense documents d'intel·ligència.<br/><br/>"
];
_briefingFinals = _briefingFinals + format [
"<execute expression=""['FinalExit5',true] call BIS_fnc_endMission;"">Final amb èxit 5</execute>: Torres destruides. Traidor viu. Amb documents d'intel·ligència.<br/><br/>"
];
_briefingFinals = _briefingFinals + format [
"<execute expression=""['FinalExit6',true] call BIS_fnc_endMission;"">Final amb èxit 6</execute>: Torres destruides. Traidor mort. Amb documents d'intel·ligència.<br/><br/>"
];
_briefingFinals = _briefingFinals + format [
"<execute expression=""['FinalFallit1',false] call BIS_fnc_endMission;"">Fracàs 1</execute>: Tots morts. Torres destruides. Traidor viu. Sense documents d'intel·ligència.<br/><br/>"
];
_briefingFinals = _briefingFinals + format [
"<execute expression=""['FinalFallit2',false] call BIS_fnc_endMission;"">Fracàs 2</execute>: Tots morts. Torres no destruides. Traidor mort. Sense documents d'intel·ligència.<br/><br/>"
];
_briefingFinals = _briefingFinals + format [
"<execute expression=""['FinalFallit3',false] call BIS_fnc_endMission;"">Fracàs 3</execute>: Tots morts. Torres destruides. Traidor mort. Sense documents d'intel·ligència.<br/><br/>"
];
_briefingFinals = _briefingFinals + format [
"<execute expression=""['FinalFallit4',false] call BIS_fnc_endMission;"">Fracàs 4</execute>: Deserció. Torres no destruides. Traidor viu. Sense documents d'intel·ligència.<br/><br/>"
];
_briefingFinals = _briefingFinals + format [
"<execute expression=""['FinalFallit5',false] call BIS_fnc_endMission;"">Fracàs 5</execute>: Deserció. Torres no destruides. Traidor viu. Amb documents d'intel·ligència.<br/><br/>"
];
_briefingFinals = _briefingFinals + format [
"<execute expression=""['FracasAbsolut',false] call BIS_fnc_endMission;"">Fracàs Absolut</execute>: Tots morts. Torres no destruides. Traidor viu. Sense documents d'intel·ligència.<br/><br/>"
];
=======
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
>>>>>>> 4dd9bedd64e5e33de7f8073a81e37cbdeedc4c05

_briefing = _briefingAdmin + _briefingNotes + _briefingFinals;

//=======================================================================================================//
// CREACIÓ DE L'ENTRADA.                                                                                 //
//=======================================================================================================//
player createDiaryRecord ["diary", ["Admin",_briefing]];

//============================================ FI DEL FITXER ============================================//