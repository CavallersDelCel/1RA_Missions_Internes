_gen = _this select 0;
_caller = _this select 1;
_id = _this select 2;

[_caller, "Warlord", "Aquests documents, recopilats per la policia Afgana, detallen la localització del Warlord de la regió de Kunduz.", 1, true, ["Nova Informació:","Localització del Warlord afegida al mapa."]] remoteExecCall ["cc_fnc_misc_createDiaryEntry", 0, true];	
"markerWarlord" setMarkerAlphaLocal 1;

_gen removeAction _id;
deleteVehicle _gen;