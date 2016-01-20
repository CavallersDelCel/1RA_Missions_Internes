//=======================================================================================================//
// Arxiu: configEquipacio.sqf                                                                            //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/04/02                                                                      //
// Descripció: Aquest document serveix per equipar els jugadors depenent del rol i la facció. A l'hora   //
//             de configurar l'equip de la unitat la següent línia s'ha d'afegir al INIT de la unitat en //
//             l'editor:                                                                                 //
//                                                                                                       //
//                  ["ROL_JUGADOR",this] call cc_fnc_configEquipacio;                                    //
//                                                                                                       //
//             o bé:                                                                                     //
//                                                                                                       //
//                  ["ROL_JUGADOR",this,"FACCIÓ"] call cc_fnc_configEquipacio;                           //
//                                                                                                       //
//             per forçar una facció específica a la unitat.                                             //
//                                                                                                       //
//             on "ROL_JUGADOR" és una de les següents entrades:                                         //
//                                                                                                       //
//                  ROL_JUGADOR             Rol assignat                                                 //
//                  pl                      Cap de secció (Platoon Leader)                               //
//                  psg                     Sergent de secció (Platoon Sergeant)                         //
//                  rto                     Operador de ràdio (Platoon Radiotelephone Operator)          //
//                  fo                      Observador avançat (Forward Observer)                        //
//                  me                      Metge (Platoon Medic)                                        //
//                  sl                      Líder d'esquadra (Squad Leader)                              //
//                  tl                      Líder d'equip (Team Leader)                                  //
//                  rfl                     Fuseller (Rifleman)                                          //
//                  rflat                   Fusellser amb AT4 (Rifleman with AT4)                        //
//                  gr                      Granader (Grenadier)                                         //
//                  ar                      Fuseller automàtic (Automàtic Rifleman)                      //
//                  dm                      Tirador designat (Designated Marksman)                       //
//                  mg                      Metrallador (Machine Gunner)                                 //
//                  amg                     Assitent de metrallador (Assitant Machine Gunner)            //
//                  at                      Antitanc (Antitank)                                          //
//                  aat                     Assistent d'antitanc (AT Ammo handler)                       //
//                  aa                      Anti aèri (Anti Air gunner)                                  //
//                  aaa                     Assistent d'anti aèri (Anti Air Assitant)                    //
//                  en                      Enginyer (Engineer)                                          //
//                  exp                     Explosius (Explosives)                                       //
//                  sn                      Franctirador (Sniper)                                        //
//                  sp                      Observador (Spotter)                                         //
//                  divsl                   Bussejador líder d'esquadra (Diver Squad Leader)             //
//                  divme                   Bussejador metge (Diver Medic)                               //
//                  divexp                  Bussejador especialista en explosius (Diver Explosive        //
//                  div                     Bussejador (Diver)                                           //
//                                                                                                       //
//                  hmmwv                   Equipació per HMMWVs                                         //
//                                                                                                       //
//             i "FACCIÓ" una de les següents entrades:                                                  //
//                                                                                                       //
//                  FACCIÓ                  Facció forçada de la unitat en termes d'equipació            //
//                  blu_f                   Blue Force                                                   //
//                  blu_g_f                 FIA                                                          //
//                  ind_g_f                 FIA                                                          //
//                  opf_g_f                 FIA                                                          //
//                  opf_f                   Opposing Force                                               //
//                  ind_f                   Independent Force                                            //
//                  civ_f                   Facció civil                                                 //
//                  rhs_faction_usarmy_wd   United States Army (Woodland)                                //
//                  rhs_faction_usarmy_d    United States Army (Desert)                                  //
//                  rhs_faction_usmc_wd     United States Marine Corps (Woodland)                        //
//                  rhs_faction_usmc_d      United States Marine Corps (Desert)                          //
//                  rhs_faction_insurgents  Insurgents                                                   //
//                  rhs_faction_vpvo        Soviet Air Defense Forces (Voyska protivovozdushnoy oborony) //
//                  rhs_faction_vdv         Russian Airborne Troops (Vozdushno-desantnye voyska)         //
//                  bwa3_faction            Bundeswehr                                                   //
//                                                                                                       //
// Canvis: 0.1  (2015/04/02) Versió inicial.                                                             //
//         0.2  (2015/04/26) Canviada la facció de les unitats RHS v0.3.7.                               //
//         0.3  (2015/05/17) Afegida l'equipació pel vehicle HMMWV, divsl i divme.                       //
//         0.4  (2015/06/10) Afegit el cas default amb equipació de fuseller (rfl) i s'ha mogut la opció //
//                           d'utilitzar els perfils a init.sqf.                                         //
//         0.5  (2015/06/12) Canvis als noms de les faccions deguts a la versió 0.3.8 de RHS.            //
//         0.6  (2015/06/12) Afegides les faccions rhs_faction_usarmy_wd, rhs_faction_usmc_wd.           //
//         0.7  (2015/06/18) Afegit el rol d'explosius (exp). En cas de que ni AGM ni ACE3 estiguin      //
//                           carregats el script no falla.                                               //
//         0.8  (2015/06/19) Afegida l'explicació pel tercer paràmetre (opcional) i la facció russa      //
//                           rhs_faction_vdv.                                                            //
//         0.9  (2015/07/03) Afegit el rol de Bussejador especialista en explosius (divexp).             //
//         0.10 (2015/07/15) Canvi a Params (Arma v1.48).                                                //
//         0.11 (2015/11/05) Afegida la facció bwa3_faction.                                             //
//         1.0  (2015/11/26) Versió estable de la plantilla.                                             //
//=======================================================================================================//

// Declaració de variables.
params ["_tipusUnitat", "_unitat", ["_faccioUnitat", nil]];

_tipusUnitat = toLower _tipusUnitat;

// Depenent d'on s'executi el script, averiguar si cal executar-lo o no.
if !(local _unitat) exitWith {};

if ( isNil "_faccioUnitat") then {
    _faccioUnitat = toLower (faction _unitat);
} else {
    _faccioUnitat = toLower _faccioUnitat;
};

// Guarda en una variable pública el tipus d'unitat.
_unitat setVariable ["cc_var_configEquipacio",_tipusUnitat,true];

// Començar a assignar l'equip als diferents rols.
_unitat setVariable ["cc_var_configEquipacio_Llesta",false,true];

// DEBUG OUTPUT.
if (cc_param_debugOutput == 1) then {
    _unitat sideChat format ["DEBUG (fn_configEquipacio.sqf): facció de la unitat: %1", _faccioUnitat];
};

// Inclou el fitxer de configuració d'equipacions
#include "..\..\..\configMissio\configEquipacio\scripts\cc_configEquipacio_opcions.sqf";

// Equipació per la facció BLUFOR.
if (_faccioUnitat == "blu_f") then {
    #include "..\..\..\configMissio\configEquipacio\scripts\cc_configEquipacio_blu_f.sqf"
};

// Equipació per la facció FIA.
if (_faccioUnitat in ["blu_g_f","ind_g_f","opf_g_f"]) then {
    #include "..\..\..\configMissio\configEquipacio\scripts\cc_configEquipacio_fia_f.sqf"
};

// Equipació per la facció OPFOR.
if (_faccioUnitat == "opf_f") then {
    #include "..\..\..\configMissio\configEquipacio\scripts\cc_configEquipacio_opf_f.sqf"
};

// Equipació per la facció independent.
if (_faccioUnitat == "ind_f") then {
    #include "..\..\..\configMissio\configEquipacio\scripts\cc_configEquipacio_ind_f.sqf"
};

// Equipació per la facció civil.
if (_faccioUnitat == "civ_f") then {
    #include "..\..\..\configMissio\configEquipacio\scripts\cc_configEquipacio_civ_f.sqf"
};

// Equipació per la facció RHS USA "United States Army" i "United States Marine Corps".
if (((_faccioUnitat find "rhs_faction_usarmy_") >= 0) or ((_faccioUnitat find "rhs_faction_usmc_") >= 0) or ((_faccioUnitat find "rhs_faction_usn_") >= 0)) then {
    #include "..\..\..\configMissio\configEquipacio\scripts\cc_configEquipacio_rhs_usaf.sqf"
};

// Equipació per la facció RHS "Insurgents".
if (_faccioUnitat == "rhs_faction_insurgents") then {
    #include "..\..\..\configMissio\configEquipacio\scripts\cc_configEquipacio_rhs_insurgents.sqf"
};

// Equipació per la facció russa "Russian Airborne Troops".
if (_faccioUnitat == "rhs_faction_vdv" ) then {
    #include "..\..\..\configMissio\configEquipacio\scripts\cc_configEquipacio_rhs_vdv.sqf"
};

// Equipació per la facció russa "Soviet Air Defense Forces".
if (_faccioUnitat == "rhs_faction_vpvo" ) then {
    #include "..\..\..\configMissio\configEquipacio\scripts\cc_configEquipacio_rhs_vpvo.sqf"
};

// Equipació per la facció alemana "Bundeswehr".
if ((_faccioUnitat find "bwa3_faction") >= 0) then {
    #include "..\..\..\configMissio\configEquipacio\scripts\cc_configEquipacio_bwa3_faction.sqf"
};

// S'ha acabat l'assignació de l'equipació
_unitat setVariable ["cc_var_configEquipacio_Llesta",true,true];

//============================================ FI DEL FITXER ============================================//
