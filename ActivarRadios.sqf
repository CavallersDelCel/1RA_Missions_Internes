private["_factorReceiving", "_factorSending"];

// Esperar fins que l'equipació estigui assignada
waitUntil{(player getVariable ["cc_var_configEquipacio_Llesta", false])};

if( torresDestruides == 0 ) then {
	_factorReceiving = 1000.0;
	_factorSending = 0.001;
};

if( torresDestruides == 1 ) then {
	_factorReceiving = 100.0;
	_factorSending = 0.01;
};

if( torresDestruides == 2 ) then {
	_factorReceiving = 10.0;
	_factorSending = 0.1;
};

if( torresDestruides == 3 ) then {
	_factorReceiving = 1.0;
	_factorSending = 1.0;
};

{
	if (isPlayer _x) then {
		_x setVariable ["tf_receivingDistanceMultiplicator", _factorReceiving];
		_x setVariable ["tf_sendingDistanceMultiplicator", _factorSending];
	};
} forEach playableUnits;