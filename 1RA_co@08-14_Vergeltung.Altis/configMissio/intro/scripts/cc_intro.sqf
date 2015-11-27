//=======================================================================================================//
// Arxiu: cc_intro.sqf                                                                                   //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/04/03                                                                      //
// Descripció: Aquest document serveix crear una pantalla d'introducció i mostrar el nom de la missió    //
//             així com la data i la localització                                                        //
// Canvis: 0.1 (2015/04/02) Versió inicial.                                                              //
//         0.2 (2015/04/26) Canviada la facció de les unitats RHS v0.3.7.                                //
//         0.3 (2015/06/04) Afegida la facció RHS Insurgents.                                            //
//         0.4 (2015/06/12) Canvis als noms de les faccions deguts a la versió 0.3.8 de RHS.             //
//         0.5 (2015/06/12) Afegides les faccions "rhs_faction_usarmy_wd", "rhs_faction_usmc_wd",        //
//                          "rhs_faction_usmc_d" i "blu_f".                                              //
//         0.6 (2015/07/13) Afegides les faccions "civ_f", "blu_g_f", "ind_g_f", "opf_g_f", "ind_f",     //
//                          "opf_f", "rhs_faction_vdv" i "rhs_faction_vpvo".                             //
//         0.7 (2015/10/30) Unificació de l'efecte a un sol fitxer.                                      //
//         0.8 (2015/11/05) Afegida la facció "bwa3_faction"                                             //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

private ["_faccioUnitat"];

if (isDedicated) exitWith {};

// Esperar a que la variable que habilita/deshabilita el text de Debug estigui inicialitzada.
waitUntil {!isNil "cc_param_debugOutput"};

#define nomMissio  "Vergeltun"

// Identificar la facció de la unitat.
_faccioUnitat = toLower (faction player);

// Si la faccio de la unitat és different a la del líder, aquesta última es la que s'utilitzarà.
if (_faccioUnitat != toLower (faction (leader group player))) then {
    _faccioUnitat = toLower (faction (leader group player));
};

// Introducció per la facció BLUFOR.
if (_faccioUnitat == "blu_f") exitWith {
    #define introText "Whoever said the pen is mightier than the sword obviously never encountered automatic weapons.\nDouglas MacArthur."
    #define llocMissio "Localització"

    #include "..\..\..\src\intro\scripts\cc_intro_pantallaNegre_typeText.sqf"

      // DEBUG OUTPUT.
    if (cc_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Utilitzant text introductori per la facció %1.", _faccioUnitat];
    };
};

// Introducció per la facció civil.
if (_faccioUnitat == "civ_f") exitWith {
    #define introText "Whoever said the pen is mightier than the sword obviously never encountered automatic weapons.\nDouglas MacArthur."
    #define llocMissio "Localització"

    #include "..\..\..\src\intro\scripts\cc_intro_pantallaNegre_typeText.sqf"

      // DEBUG OUTPUT.
    if (cc_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Utilitzant text introductori per la facció %1.", _faccioUnitat];
    };
};

// Introducció per la facció FIA.
if (_faccioUnitat in ["blu_g_f","ind_g_f","opf_g_f"]) exitWith {
    #define introText "Whoever said the pen is mightier than the sword obviously never encountered automatic weapons.\nDouglas MacArthur."
    #define llocMissio "Localització"

    #include "..\..\..\src\intro\scripts\cc_intro_pantallaNegre_typeText.sqf"

      // DEBUG OUTPUT.
    if (cc_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Utilitzant text introductori per la facció %1.", _faccioUnitat];
    };
};

// Introducció per la facció independent.
if (_faccioUnitat == "ind_f") exitWith {
    #define introText "Whoever said the pen is mightier than the sword obviously never encountered automatic weapons.\nDouglas MacArthur."
    #define llocMissio "Localització"

    #include "..\..\..\src\intro\scripts\cc_intro_pantallaNegre_typeText.sqf"

      // DEBUG OUTPUT.
    if (cc_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Utilitzant text introductori per la facció %1.", _faccioUnitat];
    };
};

// Introducció per la facció OPFOR.
if (_faccioUnitat == "opf_f") exitWith {
    #define introText "Whoever said the pen is mightier than the sword obviously never encountered automatic weapons.\nDouglas MacArthur."
    #define llocMissio "Localització"

    #include "..\..\..\src\intro\scripts\cc_intro_pantallaNegre_typeText.sqf"

      // DEBUG OUTPUT.
    if (cc_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Utilitzant text introductori per la facció %1.", _faccioUnitat];
    };
};

// Introducció per la facció RHS: USAF "United States Army".
if (_faccioUnitat == "rhs_faction_usarmy_d") exitWith {
    #define introText "Whoever said the pen is mightier than the sword obviously never encountered automatic weapons.\nDouglas MacArthur."
    #define llocMissio "Nord d'Altis"

    #include "..\..\..\src\intro\scripts\cc_intro_pantallaNegre_typeText.sqf"

      // DEBUG OUTPUT.
    if (cc_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Utilitzant text introductori per la facció %1.", _faccioUnitat];
    };
};

// Introducció per la facció RHS: USAF "United States Army".
if (_faccioUnitat == "rhs_faction_usarmy_wd") exitWith {
    #define introText "Whoever said the pen is mightier than the sword obviously never encountered automatic weapons.\nDouglas MacArthur."
    #define llocMissio "Localització"

    #include "..\..\..\src\intro\scripts\cc_intro_pantallaNegre_typeText.sqf"

      // DEBUG OUTPUT.
    if (cc_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Utilitzant text introductori per la facció %1.", _faccioUnitat];
    };
};

// Introducció per la facció RHS: USAF "United States Marine Corps".
if (_faccioUnitat == "rhs_faction_usmc_d") exitWith {
    #define introText "Whoever said the pen is mightier than the sword obviously never encountered automatic weapons.\nDouglas MacArthur."
    #define llocMissio "Localització"

    #include "..\..\..\src\intro\scripts\cc_intro_pantallaNegre_typeText.sqf"

      // DEBUG OUTPUT.
    if (cc_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Utilitzant text introductori per la facció %1.", _faccioUnitat];
    };
};

// Introducció per la facció RHS: USAF "United States Marine Corps".
if (_faccioUnitat == "rhs_faction_usmc_wd") exitWith {
    #define introText "Whoever said the pen is mightier than the sword obviously never encountered automatic weapons.\nDouglas MacArthur."
    #define llocMissio "Localització"

    #include "..\..\..\src\intro\scripts\cc_intro_pantallaNegre_typeText.sqf"

      // DEBUG OUTPUT.
    if (cc_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Utilitzant text introductori per la facció %1.", _faccioUnitat];
    };
};

// Introducció per la facció RHS: Insurgents.
if (_faccioUnitat == "rhs_faction_insurgents") exitWith {
    #define introText "Whoever said the pen is mightier than the sword obviously never encountered automatic weapons.\nDouglas MacArthur."
    #define llocMissio "Localització"

    #include "..\..\..\src\intro\scripts\cc_intro_pantallaNegre_typeText.sqf"

      // DEBUG OUTPUT.
    if (cc_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Utilitzant text introductori per la facció %1.", _faccioUnitat];
    };
};

// Briefing per la facció russa "Russian Airborne Troops".
if (_faccioUnitat == "rhs_faction_vdv" ) exitWith {
    #define introText "Whoever said the pen is mightier than the sword obviously never encountered automatic weapons.\nDouglas MacArthur."
    #define llocMissio "Localització"

    #include "..\..\..\src\intro\scripts\cc_intro_pantallaNegre_typeText.sqf"

      // DEBUG OUTPUT.
    if (cc_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Utilitzant text introductori per la facció %1.", _faccioUnitat];
    };
};

// Briefing per la facció russa "Soviet Air Defense Forces".
if (_faccioUnitat == "rhs_faction_vpvo" ) exitWith {
    #define introText "Whoever said the pen is mightier than the sword obviously never encountered automatic weapons.\nDouglas MacArthur."
    #define llocMissio "Localització"

    #include "..\..\..\src\intro\scripts\cc_intro_pantallaNegre_typeText.sqf"

    // DEBUG OUTPUT.
    if (cc_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Utilitzant text introductori per la facció %1.", _faccioUnitat];
    };
};

// Introducció per la facció alemana "Bundeswehr".
if (_faccioUnitat == "blu_f") exitWith {
    #define introText "Whoever said the pen is mightier than the sword obviously never encountered automatic weapons.\nDouglas MacArthur."
    #define llocMissio "Localització"

    #include "..\..\..\src\intro\scripts\cc_intro_pantallaNegre_typeText.sqf"

      // DEBUG OUTPUT.
    if (cc_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Utilitzant text introductori per la facció %1.", _faccioUnitat];
    };
};

// COMPROVACIÓ D'ERRORS: Si la facció de la unitat no està definida es mostra un missatge d'error.
player globalchat format ["DEBUG (cc_intro.sqf): La facció %1 no està definida",_faccioUnitat];

//============================================ FI DEL FITXER ============================================//
