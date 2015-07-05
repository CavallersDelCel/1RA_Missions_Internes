//=======================================================================================================//
// Arxiu: init.sqf                                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.4                                                                                           //
// Creació del Document: 2015/02/22                                                                      //
// Descripció: Fitxer init.sqf. Aquest fitxer inclou aquelles funcions que en MP s'executen al final de  //
//             la cadena d'inicialització. Serveix per configurar mòduls, briefings, radios, etc.        //
// Canvis: 0.1 (2015/02/22) Versió inicial.                                                              //
//         0.2 (2015/05/26) Afegit el suport per ACE 3.                                                  //
//         0.3 (2015/06/10) Afegida la opció de carregar els perfils en cas de que es decideixi          //
//                          utilitzar-los als paràmetres de la missió.                                   //
//         0.4 (2015/06/12) Canvis deguts a les noves faccions a la versió 0.3.8 de RHS.                 //
//=======================================================================================================//

//=======================================================================================================//
// Variables Objectius                                                                                   //
//=======================================================================================================//
objKillFarm = 0;
objCampRogain = 0;
objKamino = 0;
objMissils = 0;
objAntenes = 0;
objOficial = 0;

//=======================================================================================================//
// Marques del Mapa                                                                                      //
//=======================================================================================================//
if (playerSide == west) then 
 {
    _marcadorInsercio = createMarker ["MarkerInsercio", [3850, 7840] ];
    _marcadorInsercio setMarkerShape "ICON";
	_marcadorInsercio setMarkerType "hd_start";
	_marcadorInsercio setMarkerColor "ColorBLUFOR";
	_marcadorInsercio setMarkerText "Punt Inserció";
	_marcadorInsercio setMarkerDir 160;
	
	_marcadorContactar = createMarker ["MarkerContactar", [4500, 6800] ];
    _marcadorContactar setMarkerShape "ICON";
	_marcadorContactar setMarkerType "hd_join";
	_marcadorContactar setMarkerColor "ColorBLUFOR";
	_marcadorContactar setMarkerText "Contactar";
	_marcadorContactar setMarkerDir 0;
	
	_marcadorMunicio = createMarker ["MarkerMunicio", [4900, 6700] ];
    _marcadorMunicio setMarkerShape "ICON";
	_marcadorMunicio setMarkerType "hd_dot";
	_marcadorMunicio setMarkerColor "ColorBLUFOR";
	_marcadorMunicio setMarkerText "Munició";
	_marcadorMunicio setMarkerDir 0;
	
	_marcadorMissils = createMarker ["MarkerMissils", [4170, 5340] ];
    _marcadorMissils setMarkerShape "ICON";
	_marcadorMissils setMarkerType "hd_objective";
	_marcadorMissils setMarkerColor "ColorBLUFOR";
	_marcadorMissils setMarkerText "Missils";
	_marcadorMissils setMarkerDir 0;
	
	_marcadorAntenes = createMarker ["MarkerAntenes", [5250, 5025] ];
    _marcadorAntenes setMarkerShape "ICON";
	_marcadorAntenes setMarkerType "hd_unknown";
	_marcadorAntenes setMarkerColor "ColorBLUFOR";
	_marcadorAntenes setMarkerText "Antenes";
	_marcadorAntenes setMarkerDir 0;
};

if (playerSide == resistance) then 
 {
    _marcadorInici = createMarker ["MarkerInici", [4837, 6736] ];
    _marcadorInici setMarkerShape "ICON";
	_marcadorInici setMarkerType "hd_start";
	_marcadorInici setMarkerColor "ColorGUER";
	_marcadorInici setMarkerText "Punt Inici";
	_marcadorInici setMarkerDir 281;
	
	_marcadorKillFarm = createMarker ["MarkerKillFarm", [4493, 6785] ];
    _marcadorKillFarm setMarkerShape "ICON";
	_marcadorKillFarm setMarkerType "hd_objective";
	_marcadorKillFarm setMarkerColor "ColorGUER";
	_marcadorKillFarm setMarkerText "Kill Farm";
	_marcadorKillFarm setMarkerDir 0;
	
	_marcadorContactar = createMarker ["MarkerContactar", [4519, 6767] ];
    _marcadorContactar setMarkerShape "ICON";
	_marcadorContactar setMarkerType "hd_join";
	_marcadorContactar setMarkerColor "ColorGUER";
	_marcadorContactar setMarkerText "Contactar";
	_marcadorContactar setMarkerDir 0;
	
	_marcadorCampament = createMarker ["MarkerCampament", [5332, 6221] ];
    _marcadorCampament setMarkerShape "ICON";
	_marcadorCampament setMarkerType "hd_flag";
	_marcadorCampament setMarkerColor "ColorGUER";
	_marcadorCampament setMarkerText "Campament";
	_marcadorCampament setMarkerDir 0;
	
	_marcadorMunicioBLU = createMarker ["MarkerMunicioBLU", [4833.19, 6845.25] ];
    _marcadorMunicioBLU setMarkerShape "ICON";
	_marcadorMunicioBLU setMarkerType "hd_dot";
	_marcadorMunicioBLU setMarkerColor "ColorGUER";
	_marcadorMunicioBLU setMarkerText "Munició";
	_marcadorMunicioBLU setMarkerDir 0;
	
	_marcadorRogain = createMarker ["MarkerRogain", [4988, 5920] ];
    _marcadorRogain setMarkerShape "ICON";
	_marcadorRogain setMarkerType "hd_objective";
	_marcadorRogain setMarkerColor "ColorGUER";
	_marcadorRogain setMarkerText "Rogain";
	_marcadorRogain setMarkerDir 0;
	
	_marcadorEmboscada = createMarker ["MarkerEmboscada", [5539, 5400] ];
    _marcadorEmboscada setMarkerShape "ICON";
	_marcadorEmboscada setMarkerType "hd_ambush";
	_marcadorEmboscada setMarkerColor "ColorGUER";
	_marcadorEmboscada setMarkerText "Emboscada";
	_marcadorEmboscada setMarkerDir 0;
	
	_marcadorKamino = createMarker ["MarkerKamino", [6441, 5400] ];
    _marcadorKamino setMarkerShape "ICON";
	_marcadorKamino setMarkerType "hd_objective";
	_marcadorKamino setMarkerColor "ColorGUER";
	_marcadorKamino setMarkerText "Kamino";
	_marcadorKamino setMarkerDir 0;
	
	_marcadorHeliMissils = createMarker ["MarkerHeliMissils", [4507, 5297] ];
    _marcadorHeliMissils setMarkerShape "ICON";
	_marcadorHeliMissils setMarkerType "hd_flag";
	_marcadorHeliMissils setMarkerColor "ColorGUER";
	_marcadorHeliMissils setMarkerText "Heliport Missils";
	_marcadorHeliMissils setMarkerDir 0;
	
	_marcadorMissils = createMarker ["MarkerMissils", [4170, 5340] ];
    _marcadorMissils setMarkerShape "ICON";
	_marcadorMissils setMarkerType "hd_flag";
	_marcadorMissils setMarkerColor "ColorGUER";
	_marcadorMissils setMarkerText "Missils";
	_marcadorMissils setMarkerDir 0;
	
	_marcadorAntenes = createMarker ["MarkerAntenes", [5250, 5025] ];
    _marcadorAntenes setMarkerShape "ICON";
	_marcadorAntenes setMarkerType "hd_flag";
	_marcadorAntenes setMarkerColor "ColorGUER";
	_marcadorAntenes setMarkerText "Antenes";
	_marcadorAntenes setMarkerDir 0;
	
	_marcadorRuines = createMarker ["MarkerRuines", [5504, 4714] ];
    _marcadorRuines setMarkerShape "ICON";
	_marcadorRuines setMarkerType "hd_unknown";
	_marcadorRuines setMarkerColor "ColorGUER";
	_marcadorRuines setMarkerText "Ruines";
	_marcadorRuines setMarkerDir 0;
};

//=======================================================================================================//
// Desactivar guardar i guardar automàticament: https://community.bistudio.com/wiki/enableSaving         //
//=======================================================================================================//
enableSaving [false, false];

//=======================================================================================================//
// Desactivar les ordres per radio o informes: https://community.bistudio.com/wiki/enableSentences       //
//=======================================================================================================//
enableSentences false;

if( cc_mod_ace3 ) then {
	cc_script_ace3 = [] execVM "scripts\ace3\cc_ace3_config.sqf";
};

// Execució del script per generar els Briefings
cc_script_briefing = [] execVM "briefing.sqf";

onPreloadFinished {
    endLoadingScreen; 
    cc_preload_completat = true; 
};

if (cc_param_utilitzarPerfils == 1 && !isDedicated) then {
	cc_script_perfils = [] execVM "scripts\configEquipacio\cc_equipacio_rhs_usarmy_d_perfils.sqf";
};

// Pantalla d'introducció
cc_script_intro = [] execVM "scripts\intro\cc_intro.sqf";

// Inicialitzar el sistema de radios
cc_script_radio = [] execVM "scripts\radios\cc_inicialitzar_radios.sqf";

if ( isServer ) then {
	cc_script_zeus = [] execVM "scripts\zeus\cc_zeus_init.sqf"
};

//============================================ FI DEL FITXER ============================================//
