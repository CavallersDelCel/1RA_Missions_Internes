//=======================================================================================================//
// Arxiu: cc_init.sqf                                                                                    //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/11/27                                                                      //
// Descripció: Aquest fitxer serveix per afegir al fitxer init.sqf scripts o variables que depenen de la //
//             missió.                                                                                   //
// Canvis: 1.0 (2015/11/26) Versió estable de la plantilla.                                              //
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
