//=======================================================================================================//
// Arxiu: cc_intro.sqf                                                                                   //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 03/04/2015                                                                      //
// Descripció: Aquest document serveix crear una pantalla d'introducció i mostrar el nom de la missió    //
//             així com la data i la localització                                                        //
//=======================================================================================================//

if (isDedicated) exitWith {};

// Esperar a que la variable que habilita/deshabilita el text de Debug estigui inicialitzada
waitUntil {!isNil "cc_var_debugOutput"};
	
// Identificar la facció de la unitat.
_faccioUnitat = toLower (faction player);

// Si la faccio de la unitat és different a la del líder, aquesta última es la que s'utilitzarà.
if (_faccioUnitat != toLower (faction (leader group player))) then {
	_faccioUnitat = toLower (faction (leader group player));
};
	
// DEBUG OUTPUT
if ( cc_var_debugOutput == 1 ) then
{
	player sideChat format ["DEBUG (cc_intro.sqf): facció del jugador: %1", _faccioUnitat];
};
	
// Briefing per la facció BLUFOR
if (_faccioUnitat == "rhs_faction_usarmy_wd") exitWith {
	#include "cc_intro_rhs_faction_usarmy_wd.sqf"
};    

// COMPROVACIÓ D'ERRORS: Si la facció de la unitat no està definida es mostra un missatge d'error.
player globalchat format ["DEBUG (cc_intro.sqf): La facció %1 no està definida",_faccioUnitat];

//============================================ FI DEL FITXER ============================================//