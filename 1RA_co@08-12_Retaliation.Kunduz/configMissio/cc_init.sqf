//=======================================================================================================//
// Arxiu: cc_init.sqf                                                                                    //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/11/27                                                                      //
// Descripció: Aquest fitxer serveix per afegir al fitxer init.sqf scripts o variables que depenen de la //
//             missió.                                                                                   //
// Canvis: 1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

"markerWarlord" setMarkerAlpha 0;
warlordDead = 0;
intelConfiscated = 0;
rescuedMarines = 0;

cc_fnc_checkMarines = compileFinal "
    private _listMarines = [cc_marine1, cc_marine2, cc_marine3, cc_marine4];
    
    {
        if ((_x in thisList) and (alive _x)) then {
            rescuedMarines = rescuedMarines + 1;
        };
    } forEach _listMarines;
";

cc_fnc_createIntelEntry = compileFinal "
    params[""_unit""];
	{

		_x createDiaryRecord[ ""Diary"", [""Intel"", ""Aquests documents contenen informació compromesa sobre l'ubicació de les forces aliades a Kunduz.""]];
        processDiaryLink (createDiaryLink [""Diary"", _x, ""Intel""]);
		[""Nova Informació:"",""Intel confiscada.""] call BIS_fnc_infoText;
	} forEach units (group _unit) - [_unit];
";

cc_fnc_createWarlordEntry = compileFinal "
    params[""_unit""];
	{

		_x createDiaryRecord[ ""Diary"", [""Warlord"", ""Aquests documents, recopilats per la policia Afgana, detallen la localització del Warlord de la regió de Kunduz.""]];
        processDiaryLink (createDiaryLink [""Diary"", _x, ""Warlord""]);
		[""Nova Informació:"",""Localització del Warlord afegida al mapa.""] call BIS_fnc_infoText;
	} forEach units (group _unit) - [_unit];
";

//============================================ FI DEL FITXER ============================================//
