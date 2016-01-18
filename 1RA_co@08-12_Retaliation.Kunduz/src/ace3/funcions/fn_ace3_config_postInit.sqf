//=======================================================================================================//
// Arxiu: fn_ace3_config.sqf                                                                             //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.1                                                                                           //
// Creació del Document: 2015/05/28                                                                      //
// Descripció: Aquest document serveix per configurar una missió amb ACE 3 sense haver de posar          //
//             manualment els mòduls a l'editor. http://ace3mod.com/wiki/index.html                      //
//             http://ace3mod.com/wiki/missionmaker/modules.html                                         //
// Canvis: 0.1 (2015/05/28) Versió inicial.                                                              //
//         0.2 (2015/07/03) Canvis en l'estructura del document. Versió 3.1.1 de ACE3.                   //
//         0.3 (2015/09/09) Versió 3.2.3 de ACE3.                                                        //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//         1.1 (2015/12/02) Versió 3.4.0 de ACE3.                                                        //
//=======================================================================================================//
if (!cc_mod_ace3) exitWith {};

private["_ErrorModul", "_objecte"];

_ErrorModul = false;

// Incloure les variables que defineixen quines unitats tenen tractament especial (metges, enginyers, ...)
#include "..\..\..\configMissio\ace3\scripts\cc_ace3_configuracio.sqf"

if (isClass (configFile >> "CfgPatches" >> "ace_medical")) then {

    // Assignar rols de metge, vehicle mèdic i edificis mèdics.
    {
        if (!isNil _x) then {
            call compile format ["_objecte = %1", _x];
            _objecte setVariable ["ace_medical_medicClass", 1.0, true];
        };
    } foreach _metges;
    
    {
        if (!isNil _x) then {
            call compile format ["_objecte = %1", _x];
            _objecte setVariable ["ace_medical_medicClass", 2.0, true];
        };
    } foreach _doctors;

    {
        if (!isNil _x) then {
            call compile format ["_objecte = %1", _x];
            _objecte setVariable ["ace_medical_medicClass", 1.0, true];
        };
    } foreach _vehiclesMedics;

    {
        if (!isNil _x) then {
            call compile format ["_objecte = %1", _x];
            _objecte setVariable ["ace_medical_isMedicalFacility", true, true];
        };
    } foreach _edificisMedics;

} else {
    _ErrorModul = true;
    diag_log "No s'ha trobat el fitxer ace_medical.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_repair")) then {
    
    // Assignar rols d'enginyer, vehicle de reparació i tallers.
    {
        if (!isNil _x) then {
            call compile format ["_objecte = %1", _x];
            _objecte setVariable ["ACE_IsEngineer", 1.0, true];
        };
    } foreach _enginyers;

    {
        if (!isNil _x) then {
            call compile format ["_objecte = %1", _x];
            _objecte setVariable ["ACE_isRepairVehicle", 1.0, true];
        };
    } foreach _vehiclesReparacio;

    {
        if (!isNil _x) then {
            call compile format ["_objecte = %1", _x];
            _objecte setVariable ["ACE_isRepairFacility", true, true];
        };
    } foreach _tallers;
} else {
    _ErrorModul = true;
    diag_log "No s'ha trobat el fitxer ace_repair.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_captives")) then {
    //====================================================================================================//
    // Make Unit Surrender: http://ace3mod.com/wiki/missionmaker/modules.html#1.9-make-unit-surrender     //
    //====================================================================================================//

    {
        if (!isNil _x) then {
            call compile format ["_objecte = %1", _x];
            [_objecte, true] call ACE_captives_fnc_setSurrendered;
        };
    } foreach _surrenderedUnits;
    
    {
        if (!isNil _x) then {
            call compile format ["_objecte = %1", _x];
            [_objecte, true] call ACE_captives_fnc_setHandcuffed;
        };
    } foreach _handcuffedUnits;
} else {
    _ErrorModul = true;
    diag_log "No s'ha trobat el fitxer ace_captives.pbo.";
};

if (isClass (configFile >> "CfgPatches" >> "ace_explosives")) then {
    //====================================================================================================//
    // Explosive System: http://ace3mod.com/wiki/missionmaker/modules.html#1.5-explosive-system           //
    //====================================================================================================//

    // Assignar rols d'especialista en explosius.
    {
        if (!isNil _x) then {
            call compile format ["_objecte = %1", _x];
            _objecte setVariable ["ACE_IsEOD", true, true];
        };
    } foreach _espExplosius;
} else {
    _ErrorModul = true;
    diag_log "No s'ha trobat el fitxer ace_explosives.pbo.";
};

if (cc_param_debugOutput == 1) then {
    if (_ErrorModul) then {
        player sideChat format ["DEBUG (fn_ace3_config_client.sqf): ACE 3 no es pot configurar completament ja que hi ha fitxers que no estan carregats."];
    } else {
        player sideChat format ["DEBUG (fn_ace3_config_client.sqf): ACE 3 configurat."];
    };
};

//============================================ FI DEL FITXER ============================================//
