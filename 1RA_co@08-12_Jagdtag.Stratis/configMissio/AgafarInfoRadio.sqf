_gen = _this select 0;
_caller = _this select 1;
_id = _this select 2;


//_caller createDiarySubject["InfoRec", "Intel·ligència", "imatges\Traidor.jpg" ];
_caller createDiaryRecord[ "Diary", ["Inhibidors de senyal", "Aquests documents contenen informació detallada sobre la localització de les torres inhibidores de senyal de ràdio."]];

[[_caller], "cc_crearEntradaRadio", true, true] call BIS_fnc_MP;

//if( player == _caller) then {
"ObjTerra2" setMarkerAlphaLocal 1;
"ObjTerra2_1" setMarkerAlphaLocal 1;
"ObjTerra2_2" setMarkerAlphaLocal 1;
//};

openMap true;
//sleep 1;
_link = createDiaryLink ["Diary", _caller, "Admin"];
processDiaryLink _link;
	
_gen removeAction _id;
//[[_gen,_id], "_this select 0 removeAction _this select 1", true, true] call BIS_fnc_MP;
//[[_gen], "deleteVehicle _this select 0", true, true] call BIS_fnc_MP;
deleteVehicle _gen;

