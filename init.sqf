//=======================================================================================================//
// Arxiu: init.sqf                                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 22/02/2015                                                                      //
//=======================================================================================================//

// Marcadors al mapa
"IED1" setMarkerAlpha 0;
"IED2" setMarkerAlpha 0;
"IED3" setMarkerAlpha 0;
"IED4" setMarkerAlpha 0;
"IED5" setMarkerAlpha 0;
"IED6" setMarkerAlpha 0;
"IED7" setMarkerAlpha 0;

"ObjMaritim2" setMarkerAlpha 0;
"ObjMaritim2_1" setMarkerAlpha 0;
"ObjMaritim2_2" setMarkerAlpha 0;
"ObjMaritim3" setMarkerAlpha 0;
"ObjMaritim4" setMarkerAlpha 0;

"ObjTerra2" setMarkerAlpha 0;
"ObjTerra2_1" setMarkerAlpha 0;
"ObjTerra2_2" setMarkerAlpha 0;

intelEspionatge = 0;
intelIED = 0;
intelTropes = 0;
torresDestruides = 0;
traidorMort = 0;

//=======================================================================================================//
// Desactivar guardar i guardar automàticament: https://community.bistudio.com/wiki/enableSaving         //
//=======================================================================================================//
enableSaving [false, false];

//=======================================================================================================//
// Desactivar les ordres per radio o informes: https://community.bistudio.com/wiki/enableSentences       //
//=======================================================================================================//
enableSentences false;

if( cc_param_modRealisme == 1 ) then {
	cc_script_ace3 = [] execVM "scripts\ace3\cc_ace3_config.sqf";
};

// Execució del script per generar els Briefings
cc_script_briefing = [] execVM "briefing.sqf";

onPreloadFinished {
    endLoadingScreen; 
    cc_preload_completat = true; 
};

// Pantalla d'introducció
cc_script_intro = [] execVM "scripts\intro\cc_intro.sqf";

// Inicialitzar el sistema de radios
cc_script_radio = [] execVM "scripts\radios\cc_inicialitzar_radios.sqf";

if ( isServer ) then {
	cc_script_zeus = [] execVM "scripts\zeus\cc_zeus_init.sqf"
};

// Desactivar les radios
[] call compile preprocessFile "ActivarRadios.sqf";

if (isServer) then 
{
//ZeusModule = your curator module name; true = boolean, if civilians should be editable by zeus as well - set to false if you don't want civilians to be editable.
[ZeusModule] execVM "InitZeus.sqf";
};

//============================================ FI DEL FITXER ============================================//
