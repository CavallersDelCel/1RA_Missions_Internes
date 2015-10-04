//=======================================================================================================//
// Arxiu: init.sqf                                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.6                                                                                           //
// Creació del Document: 2015/02/22                                                                      //
// Descripció: Fitxer init.sqf. Aquest fitxer inclou aquelles funcions que en MP s'executen al final de  //
//             la cadena d'inicialització. Serveix per configurar mòduls, briefings, radios, etc.        //
// Canvis: 0.1 (2015/02/22) Versió inicial.                                                              //
//         0.2 (2015/05/26) Afegit el suport per ACE 3.                                                  //
//         0.3 (2015/06/10) Afegida la opció de carregar els perfils en cas de que es decideixi          //
//                          utilitzar-los als paràmetres de la missió.                                   //
//         0.4 (2015/06/12) Canvis deguts a les noves faccions a la versió 0.3.8 de RHS.                 //
//         0.5 (2015/09/29) Configuració de DAC i ASR AI.                                                //
//         0.6 (2015/09/30) Afegit un script per comprovar la configuració dels paràmetres de la missió. //
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

// Execució del script per declarar i definir variables comunes.
cc_script_comu = [] execVM "scripts\comu\cc_variables_comunes.sqf";

//=======================================================================================================//
// Comprovar la configuració de la missió.                                                               //
//=======================================================================================================//
cc_comprovar_configuracio = [] execVM "scripts\comu\cc_comprovar_configuracio.sqf";

//=======================================================================================================//
// Inicialitzar el Dynamic AI Creator 3.1b (DAC 3.1b): http://www.armaholic.com/page.php?id=25550        //
//=======================================================================================================//
if (cc_param_utilitzarDAC == 1) then {
    cc_inicialitzar_DAC = [] execVM "scripts\DAC\cc_inicialitzar_DAC.sqf";
};

//=======================================================================================================//
// Configurar de forma més específica el ASR AI: https://forums.bistudio.com/topic/163742-asr-ai-3/      //
//=======================================================================================================//
cc_configurar_ASRAI = [] execVM "scripts\asrai3\cc_configurar_ASRAI.sqf";

// Execució del script per generar els Briefings.
cc_script_briefing = [] execVM "briefing.sqf";

onPreloadFinished {
    endLoadingScreen;
    cc_preload_completat = true;
};

if (cc_param_utilitzarPerfils == 1 && !isDedicated) then {
    cc_script_perfils = [] execVM "scripts\configEquipacio\cc_configEquipacio_perfils.sqf";
};

// Inicialitzar el sistema de radios.
cc_script_radio = [] execVM "scripts\radios\cc_inicialitzar_radios.sqf";

// Pantalla d'introducció.
cc_script_intro = [] execVM "scripts\intro\cc_intro.sqf";

if (isServer) then {
    cc_script_zeus = [] execVM "scripts\zeus\cc_zeus_init.sqf"
};

cc_crearEntradaEspionatge = compileFinal "
	_jugador = _this select 0;
	{

		_x createDiaryRecord[ ""Diary"", [""Documents Secrets"", ""Aquests documents detallen informació sobre la localització del traidor. També especulen sobre la presència d'un alt comandament enemic. <br/><br/>El traidor: Erik Schultz.<br/><br/><img image='imatges\Traidor.jpg'/> ""]];
		[""Nova Informació:"",""Documents Secrets""] call BIS_fnc_infoText;
	} forEach units (group _jugador) - [_jugador];
";

cc_crearEntradaIEDs = compileFinal "
	_jugador = _this select 0;
	{

		_x createDiaryRecord[ ""Diary"", [""IEDs"", ""Localització dels IEDs afegida al mapa.""]];
		[""Nova Informació:"",""Localització dels IEDs""] call BIS_fnc_infoText;
	} forEach units (group _jugador) - [_jugador];
";

cc_crearEntradaRadio = compileFinal "
	_jugador = _this select 0;
	{

		_x createDiaryRecord[ ""Diary"", [""Inhibidors de senyal"", ""Aquests documents contenen informació detallada sobre la localització de les torres inhibidores de senyal de ràdio.""]];
		[""Nova Informació:"",""Inhibidors de senyal""] call BIS_fnc_infoText;
	} forEach units (group _jugador) - [_jugador];
";

//[] execVM "ActivarRadios.sqf";

[] call compile preprocessFile "ActivarRadios.sqf";

//============================================ FI DEL FITXER ============================================//
