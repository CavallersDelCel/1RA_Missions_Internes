//=======================================================================================================//
// Arxiu: briefing.sqf                                                                                   //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 22/02/2015                                                                      //
// Descripció: Aquest document serveix per oferir diverses informacions de la missió depenent de la      //
//             facció dels jugadors. Això només serà útil en el cas de que es vulgui més endavant fer    //
//             partides TvT. De moment només està inclòs com a plantilla.                                //
//=======================================================================================================//

// Esperar una mica per tal de que el sistema de briefing s'inicialitzi correctament
if (!isDedicated && (isNull player)) then
{
    waitUntil {sleep 0.1; !isNull player};
};

// Declaració de variables
private ["_faccioUnitat"];

// Identificar la facció de la unitat.
_faccioUnitat = toLower (faction player);

// Si la faccio de la unitat és different a la del líder, aquesta última es la que s'utilitzarà.
if (_unitfaction != toLower (faction (leader group player))) then {
	_unitfaction = toLower (faction (leader group player));
};

// Briefing per l'Administrador.
if (serverCommandAvailable "#kick") then {
	#include "scripts\briefing\cc_briefing_admin.sqf"
};

// Briefing per la facció BLUFOR
if (_faccioUnitat == "blu_f") exitWith {
	#include "scripts\briefing\cc_briefing_blu_f.sqf"
};

// Briefing per la facció FIA
if (_faccioUnitat in ["blu_g_f","ind_g_f","opf_g_f"]) exitWith {
	#include "scripts\briefing\cc_briefing_fia_f.sqf"
};

// Briefing per la facció OPFOR
if (_faccioUnitat == "opf_f") exitWith {
	#include "scripts\briefing\cc_briefing_opf_f.sqf"
};

// Briefing per la facció independent
if (_faccioUnitat == "ind_f") exitWith {
	#include "scripts\briefing\cc_briefing_ind_f.sqf"
};

// Briefing per la facció civil
if (_faccioUnitat == "civ_f") exitWith {
	#include "scripts\briefing\cc_briefing_civ_f.sqf"
};

// Briefing per la facció USA "United States Army"
if (_faccioUnitat == "rhs_faction_usarmy_wd") exitWith {
	#include "scripts\briefing\cc_briefing_rhs_usarmy_wd.sqf"
};

// Briefing per la facció USA "United States Marine Corps"
if (_faccioUnitat == "rhs_faction_usmc_wd") exitWith {
	#include "scripts\briefing\cc_briefing_rhs_usmc_wd.sqf"
};

// Briefing per la facció russa "Russian Air Defense Troops"
if (_faccioUnitat == "rhs_faction_vpvo" ) exitWith {
	#include "scripts\briefing\cc_briefing_rhs_vpvo.sqf"
};

// COMPROVACIÓ D'ERRORS: Si la facció de la unitat no està definida es mostra un missatge d'error.
player globalchat format ["DEBUG (briefing.sqf): La facció %1 no està definida",_faccioUnitat];

//============================================ FI DEL FITXER ============================================//