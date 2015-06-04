//=======================================================================================================//
// Arxiu: briefing.sqf                                                                                   //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 22/02/2015                                                                      //
// Descripció: Aquest document serveix per oferir diverses informacions de la missió depenent de la      //
//             facció dels jugadors. Això només serà útil en el cas de que es vulgui més endavant fer    //
//             partides TvT. De moment només està inclòs com a plantilla.                                //
// Canvis: 0.1 (2015/02/22) Versió inicial.                                                              //
//         0.2 (2015/04/26) Canviada la facció de les unitats RHS v0.3.7.                                //
//=======================================================================================================//

// Esperar una mica per tal de que el sistema de briefing s'inicialitzi correctament
if (!isDedicated && (isNull player)) then
{
    waitUntil {sleep 0.1; !isNull player};
};

// Declaració de variables
private ["_faccioUnitat"];

// Esperar a que la variable que habilita/deshabilita el text de Debug estigui inicialitzada
waitUntil {!isNil "cc_param_debugOutput"};


// Identificar la facció de la unitat.
_faccioUnitat = toLower (faction player);

// Si la faccio de la unitat és different a la del líder, aquesta última es la que s'utilitzarà.
if (_faccioUnitat != toLower (faction (leader group player))) then {
	_faccioUnitat = toLower (faction (leader group player));
};

// Briefing per l'Administrador.
if (serverCommandAvailable "#kick") then {
	#include "scripts\briefing\cc_briefing_admin.sqf"
	
	// DEBUG OUTPUT
	if ( cc_param_debugOutput == 1 ) then {
		player sideChat format ["DEBUG (briefing.sqf): Utilitzant briefing per administrador.", _faccioUnitat];
	};
};

// Briefing per la facció BLUFOR
if (_faccioUnitat == "blu_f") exitWith {
	#include "scripts\briefing\cc_briefing_blu_f.sqf"
	
	// DEBUG OUTPUT
	if ( cc_param_debugOutput == 1 ) then {
		player sideChat format ["DEBUG (briefing.sqf): Utilitzant briefing per la facció %1.", _faccioUnitat];
	};
};

// Briefing per la facció FIA
if (_faccioUnitat in ["blu_g_f","ind_g_f","opf_g_f"]) exitWith {
	#include "scripts\briefing\cc_briefing_fia_f.sqf"
	
	// DEBUG OUTPUT
	if ( cc_param_debugOutput == 1 ) then {
		player sideChat format ["DEBUG (briefing.sqf): Utilitzant briefing per la facció %1.", _faccioUnitat];
	};
};

// Briefing per la facció OPFOR
if (_faccioUnitat == "opf_f") exitWith {
	#include "scripts\briefing\cc_briefing_opf_f.sqf"
	
	// DEBUG OUTPUT
	if ( cc_param_debugOutput == 1 ) then {
		player sideChat format ["DEBUG (briefing.sqf): Utilitzant briefing per la facció %1.", _faccioUnitat];
	};
};

// Briefing per la facció independent
if (_faccioUnitat == "ind_f") exitWith {
	#include "scripts\briefing\cc_briefing_ind_f.sqf"
	
	// DEBUG OUTPUT
	if ( cc_param_debugOutput == 1 ) then {
		player sideChat format ["DEBUG (briefing.sqf): Utilitzant briefing per la facció %1.", _faccioUnitat];
	};
};

// Briefing per la facció civil
if (_faccioUnitat == "civ_f") exitWith {
	#include "scripts\briefing\cc_briefing_civ_f.sqf"
	
	// DEBUG OUTPUT
	if ( cc_param_debugOutput == 1 ) then {
		player sideChat format ["DEBUG (briefing.sqf): Utilitzant briefing per la facció %1.", _faccioUnitat];
	};
};

// Briefing per la facció USA "United States Army"
if (_faccioUnitat == "rhs_faction_usarmy_14") exitWith {
	#include "scripts\briefing\cc_briefing_rhs_usarmy_14.sqf"
	
	// DEBUG OUTPUT
	if ( cc_param_debugOutput == 1 ) then {
		player sideChat format ["DEBUG (briefing.sqf): Utilitzant briefing per la facció %1.", _faccioUnitat];
	};
};

// Briefing per la facció USA "United States Marine Corps"
if (_faccioUnitat == "rhs_faction_usmc_14") exitWith {
	#include "scripts\briefing\cc_briefing_rhs_usmc_14.sqf"
	
	// DEBUG OUTPUT
	if ( cc_param_debugOutput == 1 ) then {
		player sideChat format ["DEBUG (briefing.sqf): Utilitzant briefing per la facció %1.", _faccioUnitat];
	};
};

// Briefing per la facció RHS "Insurgents"
if (_faccioUnitat == "rhs_faction_insurgents") exitWith {
	#include "scripts\briefing\cc_briefing_rhs_insurgents.sqf"
	
	// DEBUG OUTPUT
	if ( cc_param_debugOutput == 1 ) then {
		player sideChat format ["DEBUG (briefing.sqf): Utilitzant briefing per la facció %1.", _faccioUnitat];
	};
};

// Briefing per la facció russa "Russian Air Defense Troops"
if (_faccioUnitat == "rhs_faction_vpvo" ) exitWith {
	#include "scripts\briefing\cc_briefing_rhs_vpvo.sqf"
	
	// DEBUG OUTPUT
	if ( cc_param_debugOutput == 1 ) then {
		player sideChat format ["DEBUG (briefing.sqf): Utilitzant briefing per la facció %1.", _faccioUnitat];
	};
};

// COMPROVACIÓ D'ERRORS: Si la facció de la unitat no està definida es mostra un missatge d'error.
player globalchat format ["DEBUG (briefing.sqf): La facció %1 no està definida",_faccioUnitat];

//============================================ FI DEL FITXER ============================================//