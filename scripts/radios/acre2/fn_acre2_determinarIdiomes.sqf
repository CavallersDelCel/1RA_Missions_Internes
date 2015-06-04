//=======================================================================================================//
// Arxiu: fn_acre2_determinarcc_acre2_determinarIdiomes.sqf                                              //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 05/05/2015                                                                      //
// Descripció: Configuració dels idiomes que parla cada unitat utilitzant el Advanced Combat Radio       //
//             Environment 2 (ACRE2) http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home   //
//=======================================================================================================//

// Declaració de variables
private["_faccioUnitat"];

// Identificar la facció de la unitat.
_faccioUnitat = toLower (faction player);

// Si la faccio de la unitat és different a la del líder, aquesta última es la que s'utilitzarà.
if (_faccioUnitat != toLower (faction (leader group player))) then {
	_faccioUnitat = toLower (faction (leader group player));
};

// DEBUG OUTPUT
if ( cc_param_debugOutput == 1 ) then {
	player sideChat format ["DEBUG (fn_acre2_determinarcc_acre2_determinarIdiomes.sqf): facció del jugador: %1", _faccioUnitat];
};


// Idiomes per la facció BLUFOR
if (_faccioUnitat == "blu_f") exitWith {
		
	cc_acre2_config_idioma_blufor call acre_api_fnc_babelSetSpokenLanguages;
	[cc_acre2_config_idioma_blufor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
	// DEBUG OUTPUT
	if ( cc_param_debugOutput == 1 ) then {
		player sideChat format ["DEBUG (cc_acre2_determinarIdiomes.sqf): Utilitzant %1 per la faccio %2.", cc_acre2_config_idioma_blufor, _faccioUnitat];
	};
};

// Idiomes per la facció FIA
if (_faccioUnitat in ["blu_g_f","ind_g_f","opf_g_f"]) exitWith {

	cc_acre2_config_idioma_fia call acre_api_fnc_babelSetSpokenLanguages;
	[cc_acre2_config_idioma_fia select 0] call acre_api_fnc_babelSetSpeakingLanguage;
	// DEBUG OUTPUT
	if ( cc_param_debugOutput == 1 ) then {
		player sideChat format ["DEBUG (cc_acre2_determinarIdiomes.sqf): Utilitzant %1 per la faccio %2.", cc_acre2_config_idioma_fia, _faccioUnitat];
	};
};

// Idiomes per la facció OPFOR
if (_faccioUnitat == "opf_f") exitWith {

	cc_acre2_config_idioma_opfor call acre_api_fnc_babelSetSpokenLanguages;
	[cc_acre2_config_idioma_opfor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
	// DEBUG OUTPUT
	if ( cc_param_debugOutput == 1 ) then {
		player sideChat format ["DEBUG (cc_acre2_determinarIdiomes.sqf): Utilitzant %1 per la faccio %2.", cc_acre2_config_idioma_opfor, _faccioUnitat];
	};
};

// Idiomes per la facció independent
if (_faccioUnitat == "ind_f") exitWith {

	cc_acre2_config_idioma_indfor call acre_api_fnc_babelSetSpokenLanguages;
	[cc_acre2_config_idioma_indfor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
	// DEBUG OUTPUT
	if ( cc_param_debugOutput == 1 ) then {
		player sideChat format ["DEBUG (cc_acre2_determinarIdiomes.sqf): Utilitzant %1 per la faccio %2.", cc_acre2_config_idioma_indfor, _faccioUnitat];
	};
};

// Idiomes per la facció civil
if (_faccioUnitat == "civ_f") exitWith {

	cc_acre2_config_idioma_civ call acre_api_fnc_babelSetSpokenLanguages;
	[cc_acre2_config_idioma_civ select 0] call acre_api_fnc_babelSetSpeakingLanguage;
	// DEBUG OUTPUT
	if ( cc_param_debugOutput == 1 ) then {
		player sideChat format ["DEBUG (cc_acre2_determinarIdiomes.sqf): Utilitzant %1 per la faccio %2.", cc_acre2_config_idioma_civ, _faccioUnitat];
	};
};

// Idiomes per la facció RHS USAF "United States Armed Forces"
if (_faccioUnitat in ["rhs_faction_usarmy_14","rhs_faction_usarmy_10","rhs_faction_usmc_14", "rhs_faction_usmc_10"] ) exitWith {

	cc_acre2_config_idioma_rhsusaf call acre_api_fnc_babelSetSpokenLanguages;
	[cc_acre2_config_idioma_rhsusaf select 0] call acre_api_fnc_babelSetSpeakingLanguage;
	// DEBUG OUTPUT
	if ( cc_param_debugOutput == 1 ) then {
		player sideChat format ["DEBUG (cc_acre2_determinarIdiomes.sqf): Utilitzant %1 per la faccio %2.", cc_acre2_config_idioma_rhsusaf, _faccioUnitat];
	};
};

// Idiomes per la facció RHS: AFRF "Armed Forces of the Russian Federation"
if (_faccioUnitat == "rhs_faction_vpvo" ) exitWith {

	cc_acre2_config_idioma_rhsusaf call acre_api_fnc_babelSetSpokenLanguages;
	[cc_acre2_config_idioma_rhsusaf select 0] call acre_api_fnc_babelSetSpeakingLanguage;
	// DEBUG OUTPUT
	if ( cc_param_debugOutput == 1 ) then {
		player sideChat format ["DEBUG (cc_acre2_determinarIdiomes.sqf): Utilitzant %1 per la faccio %2.", cc_acre2_config_idioma_rhsafrf, _faccioUnitat];
	};
};

//============================================ FI DEL FITXER ============================================//