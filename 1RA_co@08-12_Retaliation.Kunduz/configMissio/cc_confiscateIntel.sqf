_gen = _this select 0;
_caller = _this select 1;
_id = _this select 2;

[_caller, "Intel", "Aquests documents contenen informació compromesa sobre l'ubicació de les forces aliades a Kunduz.", 1, true, ["Nova Informació:","Intel confiscada."]] remoteExecCall ["cc_fnc_misc_createDiaryEntry", 0, true];	

_gen removeAction _id;
deleteVehicle _gen;