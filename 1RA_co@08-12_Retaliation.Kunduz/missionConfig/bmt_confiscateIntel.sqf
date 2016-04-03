_gen = _this select 0;
_caller = _this select 1;
_id = _this select 2;

_caller createDiaryRecord[ "Diary", ["Intel", "Aquests documents contenen informació compromesa sobre l'ubicació de les forces aliades a Kunduz."]];
processDiaryLink (createDiaryLink ["Diary", _caller, "Intel"]);

["Nova Informació:","Intel confiscada."] call BIS_fnc_infoText;

[[_caller], "bmt_fnc_createIntelEntry", true, true] call BIS_fnc_MP;

_gen removeAction _id;
deleteVehicle _gen;
