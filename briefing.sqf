//=======================================================================================================//
// Arxiu: briefing.sqf                                                                                   //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 22/02/2015                                                                      //
// Descripció: Aquest document serveix per oferir diverses informacions de la missió depenent de la      //
//             facció dels jugadors. Això només serà útil en el cas de que es vulgui més endavant fer    //
//             partides TvT. De moment només està inclòs com a plantilla.                                //
//=======================================================================================================//

// Declaració de variables
private ["_faccioUnitat"];

// Identificar la facció de la unitat.
_faccioUnitat = toLower (faction player);

// Si la faccio de la unitat és different a la del líder, aquesta última es la que s'utilitzarà.
if (_faccioUnitat != toLower (faction (leader group player))) then{
	_faccioUnitat = toLower (faction (leader group player))
};

// Briefing per l'Administrador.
if (serverCommandAvailable "#kick") then {
//	#include "scripts\briefing\cc_briefing_admin.sqf"
//	player sideChat format ["DEBUG (briefing.sqf): Utilitzant briefing per administrador", _faccioUnitat];
};

// Briefing per la facció BLUFOR
//if (_faccioUnitat == "blu_f") exitWith {
//	player sideChat format ["DEBUG (briefing.sqf): Utilitzant briefing per %1",_faccioUnitat];
//	#include "scripts\briefing\cc_briefing_blu_f.sqf"
//};

// COMPROVACIÓ D'ERRORS: Si la facció de la unitat no està definida es mostra un missatge d'error.
player globalchat format ["DEBUG (briefing.sqf): La facció %1 no està definida",_faccioUnitat];