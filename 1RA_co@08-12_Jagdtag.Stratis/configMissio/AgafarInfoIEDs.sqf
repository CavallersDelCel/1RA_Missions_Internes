_gen = _this select 0;
_caller = _this select 1;
_id = _this select 2;


//_caller createDiarySubject["InfoRec", "Intel·ligència", "imatges\Traidor.jpg" ];
_caller createDiaryRecord[ "Diary", ["IEDs", "Localització dels IEDs afegida al mapa."]];

[[_caller], "cc_crearEntradaIEDs", true, true] call BIS_fnc_MP;

//if( player == _caller) then {
"IED1" setMarkerAlphaLocal 1;
"IED2" setMarkerAlphaLocal 1;
"IED3" setMarkerAlphaLocal 1;
"IED4" setMarkerAlphaLocal 1;
"IED5" setMarkerAlphaLocal 1;
"IED6" setMarkerAlphaLocal 1;
"IED7" setMarkerAlphaLocal 1;
//};

openMap true;
//sleep 1;
_link = createDiaryLink ["Diary", _caller, "Admin"];
processDiaryLink _link;
	
_gen removeAction _id;
//[[_gen,_id], "_this select 0 removeAction _this select 1", true, true] call BIS_fnc_MP;
//[[_gen], "deleteVehicle _this select 0", true, true] call BIS_fnc_MP;
deleteVehicle _gen;

