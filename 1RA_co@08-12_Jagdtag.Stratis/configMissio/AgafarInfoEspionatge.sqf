_gen = _this select 0;
_caller = _this select 1;
_id = _this select 2;


//_caller createDiarySubject["InfoRec", "Intel·ligència", "imatges\Traidor.jpg" ];
_caller createDiaryRecord[ "Diary", ["Documents Secrets", "Aquests documents detallen informació sobre la localització del traidor. També especulen sobre la presència d'un alt comandament enemic. <br/><br/>El traidor: Erik Schultz.<br/><br/><img image='imatges\Traidor.jpg'/>"]];

[[_caller], "cc_crearEntradaEspionatge", true, true] call BIS_fnc_MP;

//if( player == _caller) then {
"ObjMaritim2" setMarkerAlphaLocal 1;
"ObjMaritim2_1" setMarkerAlphaLocal 1;
"ObjMaritim2_2" setMarkerAlphaLocal 1;
"ObjMaritim3" setMarkerAlphaLocal 1; 
"ObjMaritim4" setMarkerAlphaLocal 1;
//};

openMap true;
//sleep 1;
_link = createDiaryLink ["Diary", _caller, "Admin"];
processDiaryLink _link;
	
_gen removeAction _id;
//[[_gen,_id], "_this select 0 removeAction _this select 1", true, true] call BIS_fnc_MP;
//[[_gen], "deleteVehicle _this select 0", true, true] call BIS_fnc_MP;
deleteVehicle _gen;

