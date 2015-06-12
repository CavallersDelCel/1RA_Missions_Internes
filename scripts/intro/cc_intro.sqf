//=======================================================================================================//
// Arxiu: cc_intro.sqf                                                                                   //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.4                                                                                           //
// Creació del Document: 2015/04/03                                                                      //
// Descripció: Aquest document serveix crear una pantalla d'introducció i mostrar el nom de la missió    //
//             així com la data i la localització                                                        //
// Canvis: 0.1 (2015/04/02) Versió inicial.                                                              //
//         0.2 (2015/04/26) Canviada la facció de les unitats RHS v0.3.7.                                //
//         0.3 (2015/06/04) Afegida la facció RHS Insurgents.                                            //
//         0.4 (2015/06/12) Canvis als noms de les faccions deguts a la versió 0.3.8 de RHS.             //
//         0.5 (2015/06/12) Afegides les faccions "rhs_faction_usarmy_wd", "rhs_faction_usmc_wd",        //
//                          "rhs_faction_usmc_d" i "blu_f".                                              //
//=======================================================================================================//

if (isDedicated) exitWith {};

// Esperar a que la variable que habilita/deshabilita el text de Debug estigui inicialitzada
waitUntil {!isNil "cc_param_debugOutput"};
	
// Identificar la facció de la unitat.
_faccioUnitat = toLower (faction player);

// Si la faccio de la unitat és different a la del líder, aquesta última es la que s'utilitzarà.
if (_faccioUnitat != toLower (faction (leader group player))) then {
	_faccioUnitat = toLower (faction (leader group player));
};
	
// DEBUG OUTPUT
if ( cc_param_debugOutput == 1 ) then {
	player sideChat format ["DEBUG (cc_intro.sqf): facció del jugador: %1", _faccioUnitat];
};

// Introducció per la facció BLUFOR
if (_faccioUnitat == "blu_f") exitWith {
	#include "cc_intro_blu_f.sqf"
};
	
// Introducció per la facció RHS: USAF "United States Army"
if (_faccioUnitat == "rhs_faction_usarmy_d") exitWith {
	#include "cc_intro_rhs_faction_usarmy_d.sqf"
};    

// Introducció per la facció RHS: USAF "United States Army"
if (_faccioUnitat == "rhs_faction_usarmy_wd") exitWith {
	#include "cc_intro_rhs_faction_usarmy_wd.sqf"
};

// Introducció per la facció RHS: USAF "United States Marine Corps"
if (_faccioUnitat == "rhs_faction_usmc_d") exitWith {
	#include "cc_intro_rhs_faction_usmc_d.sqf"
};    

// Introducció per la facció RHS: USAF "United States Marine Corps"
if (_faccioUnitat == "rhs_faction_usmc_wd") exitWith {
	#include "cc_intro_rhs_faction_usmc_wd.sqf"
};

// Introducció per la facció RHS: Insurgents
if (_faccioUnitat == "rhs_faction_insurgents") exitWith {
	#include "cc_intro_rhs_faction_insurgents.sqf"
};

// COMPROVACIÓ D'ERRORS: Si la facció de la unitat no està definida es mostra un missatge d'error.
player globalchat format ["DEBUG (cc_intro.sqf): La facció %1 no està definida",_faccioUnitat];

//============================================ FI DEL FITXER ============================================//