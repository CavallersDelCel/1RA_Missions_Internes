_gen = _this select 0;
_caller = _this select 1;
_id = _this select 2;

_caller createDiaryRecord[ "Diary", ["Warlord", "Aquests documents, recopilats per la policia Afgana, detallen la localització del Warlord de la regió de Kunduz."]];
processDiaryLink (createDiaryLink ["Diary", _caller, "Warlord"]);

"markerWarlord" setMarkerAlphaLocal 1;
openMap true;

[[_caller], "cc_fnc_createWarlordEntry", true, true] call BIS_fnc_MP;

_gen removeAction _id;
deleteVehicle _gen;