//=======================================================================================================//
// Arxiu: configEquipacio.sqf                                                                            //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.6                                                                                           //
// Creació del Document: 2015/04/02                                                                      //
// Descripció: Aquest document serveix per equipar els jugadors depenent del rol i la facció. A l'hora   //
//             de configurar l'equip de la unitat la següent línia s'ha d'afegir al INIT de la unitat en //
//             l'editor:                                                                                 //
//                                                                                                       //
//                  ["ROL_JUGADOR",this] call cc_fnc_configEquipacio;                                    //
//                                                                                                       //
//             on "ROL_JUGADOR" és una de les següents entrades:                                         //
//                                                                                                       //
//                  ROL_JUGADOR         Rol assignat                                                     //
//                  pl                  Cap de secció (Platoon Leader)                                   //
//                  psg                 Sergent (Platoon Sergeant)                                       //
//                  rto                 Operador de Radio (Platoon Radiotelephone Operator)              //
//                  fo                  Observador avançat (Forward Observer)                            //
//                  me                  Metge (Platoon Medic)                                            //
//                  sl                  Líder d'esquadra (Squad Leader)                                  //
//                  tl                  Líder d'equip (Team Leader)                                      //
//                  rfl                 Fuseller (Rifleman)                                              //
//                  rflat               Fusellser amb AT4 (Rifleman with AT4)                            //
//                  gr                  Granader (Grenadier)                                             //
//                  ar                  Fuseller automàtic (Automàtic Rifleman)                          //
//                  dm                  Tirador designat (Designated Marksman)                           //
//                  mg                  Metrallador (Machine Gunner)                                     //
//                  amg                 Assitent de metrallador (Assitant Machine Gunner)                //
//                  at                  Antitanc (Antitank)                                              //
//                  aat                 Assistent d'antitanc (AT Ammo handler)                           //
//                  aa                  Anti aèri (Anti Air gunner)                                      //
//                  aaa                 Assistent d'anti aèri (Anti Air Assitant)                        //
//                  en                  Enginyer (Engineer)                                              //
//                  sn                  Franctirador (Sniper)                                            //
//                  sp                  Observador (Spotter)                                             //
//                  divsl               Bussejador líder d'esquadra (Diver Squad Leader)                 //
//                  divme               Bussejador metge (Diver Medic)                                   //
//                  div                 Bussejador (Diver)                                               //
//                                                                                                       //
//                  hmmwv               Equipació per HMMWVs                                             //
//                                                                                                       //
// Canvis: 0.1 (2015/04/02) Versió inicial.                                                              //
//         0.2 (2015/04/26) Canviada la facció de les unitats RHS v0.3.7.                                //
//         0.3 (2015/05/17) Afegida l'equipació pel vehicle HMMWV, divsl i divme.                        //
//         0.4 (2015/06/10) Afegit el cas default amb equipació de fuseller (rfl) i s'ha mogut la opció  //
//                          d'utilitzar els perfils a init.sqf.                                          //
//         0.5 (2015/06/12) Canvis als noms de les faccions deguts a la versió 0.3.8 de RHS.             //
//         0.6 (2015/06/12) Afegides les faccions rhs_faction_usarmy_wd, rhs_faction_usmc_wd             //
//=======================================================================================================//

// Declaració de variables
private ["_faccioUnitat", "_tipusUnitat", "_unitat"];

_tipusUnitat = toLower (_this select 0);
_unitat = _this select 1;

// Depenent d'on s'executi el script, averiguar si cal executar-lo o no
if !(local _unitat) exitWith {};

_faccioUnitat = toLower (faction _unitat);
if(count _this > 2) then {
	_faccioUnitat = toLower (_this select 2);
};

// Guarda en una variable pública el tipus d'unitat
_unitat setVariable ["cc_var_configEquipacio",_tipusUnitat,true];

// Començar a assignar l'equip als diferents rols
_unitat setVariable ["cc_var_configEquipacio_Llesta",false,true];

// DEBUG OUTPUT
if (cc_param_debugOutput == 1) then {
	_unitat sideChat format ["DEBUG (configEquipacio.sqf): facció de la unitat: %1", _faccioUnitat];
};

// Equipació per la facció BLUFOR
if (_faccioUnitat == "blu_f") then {
	#include "cc_equipacio_blu_f.sqf"
};

// Equipació per la facció FIA
if (_faccioUnitat in ["blu_g_f","ind_g_f","opf_g_f"]) then {
	#include "cc_equipacio_fia_f.sqf"
};

// Equipació per la facció OPFOR
if (_faccioUnitat == "opf_f") then {
	#include "cc_equipacio_opf_f.sqf"
};

// Equipació per la facció independent
if (_faccioUnitat == "ind_f") then {
	#include "cc_equipacio_ind_f.sqf"
};

// Equipació per la facció civil
if (_faccioUnitat == "civ_f") then {
	#include "cc_equipacio_civ_f.sqf"
};

// Equipació per la facció USA "United States Army" 
if (_faccioUnitat == "rhs_faction_usarmy_d") then {
	#include "cc_equipacio_rhs_usarmy_d.sqf"
};

// Equipació per la facció USA "United States Army" 
if (_faccioUnitat == "rhs_faction_usarmy_wd") then {
	#include "cc_equipacio_rhs_usarmy_wd.sqf"
};

// Equipació per la facció USA "United States Marine Corps"
if (_faccioUnitat == "rhs_faction_usmc_d") then {
	#include "cc_equipacio_rhs_usmc_d.sqf"
};

// Equipació per la facció USA "United States Marine Corps"
if (_faccioUnitat == "rhs_faction_usmc_wd") then {
	#include "cc_equipacio_rhs_usmc_wd.sqf"
};

// Equipació per la facció USA "United States Army"
if (_faccioUnitat == "rhs_faction_insurgents") then {
	#include "cc_equipacio_rhs_insurgents.sqf"
};

// Equipació per la facció russa "Russian Air Defense Troops"
if (_faccioUnitat == "rhs_faction_vpvo" ) then {
	#include "cc_equipacio_rhs_vpvo.sqf"
};

// S'ha acabat l'assignació de l'Equipacio
_unitat setVariable ["cc_var_configEquipacio_Llesta",true,true];

//============================================ FI DEL FITXER ============================================//