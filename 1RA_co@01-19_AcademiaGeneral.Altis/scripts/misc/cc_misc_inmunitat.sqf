
params[["_permetreMal",false]];

hint "Executant MP.";
{
    if (local _x) then {
        _x allowDamage _permetreMal;
        hint "Inmune al mal.";
    };
} forEach playableUnits;
