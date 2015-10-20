//=======================================================================================================//
// Arxiu: fn_ace3_config.sqf                                                                             //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.2                                                                                           //
// Creació del Document: 28/05/2015                                                                      //
// Descripció: Aquest document serveix per configurar una missió amb ACE 3 sense haver de posar          //
//             manualment els mòduls a l'editor. http://ace3mod.com/wiki/index.html                      //
//             http://ace3mod.com/wiki/missionmaker/modules.html                                         //
// Canvis: 0.1 (2015/05/28) Versió inicial.                                                              //
//         0.2 (2015/07/03) Canvis en l'estructura del document. Versió 3.1.1 de ACE3.                   //
//         0.3 (2015/09/09) Versió 3.2.3 de ACE3.                                                        //
//=======================================================================================================//

private["_metges", "_vehiclesMedics", "_edificisMedics", "_espExplosius", "_enginyers", "_vehiclesReparacio", "_tallers", "_unitatsRendeixen","_unitat", "_ErrorModul"];

if (cc_mod_ace3) then {
    _ErrorModul = false;
    _metges = [Esq1_ME, Esq2_ME];
    _vehiclesMedics = [];
    _edificisMedics = [];
    _espExplosius = [Esq2_EXP];
    _enginyers = [];
    _vehiclesReparacio = [];
    _tallers = [];
    _unitatsRendeixen = [];

    // Definir les variables manualment utilitzant la funció de ACE 3 ACE_common_fnc_setSetting:
    //  ["setting_name"], Value, forceSetting(bool), broadcastSetting(bool)] ACE_common_fnc_setSetting

    if (isClass (configFile >> "CfgPatches" >> "ace_common")) then {
        ["ace_common_forceAllSettings", false, true, true] call ACE_common_fnc_setSetting;                         // 0* = Deshabilitat, 1 = Habilitat.

        //====================================================================================================//
        // Check PBOs: http://ace3mod.com/wiki/missionmaker/modules.html#1.4-check-pbos                       //
        //====================================================================================================//

        ["ace_common_checkPBOsAction", false, true, true] call ACE_common_fnc_setSetting;                          // Scalar 0 = Valor per defecte.
        ["ace_common_checkPBOsCheckAll", false, true, true] call ACE_common_fnc_setSetting;                        // 0* = Deshabilitat, 1 = Habilitat.
        ["ace_common_checkPBOsWhitelist", "[]", true, true] call ACE_common_fnc_setSetting;                        // String.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_common.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_finger")) then {
        //====================================================================================================//
        // Finger: http://ace3mod.com/wiki/missionmaker/modules.html#1-7-finger-settings                      //
        //====================================================================================================//

        ["ace_finger_enabled", true, true, true] call ACE_common_fnc_setSetting;                                   // 0 = No, 1* = Si.
        ["ace_finger_maxRange", 4.0, true, true] call ACE_common_fnc_setSetting;                                   // Scalar. 4 = Valor per defecte.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_finger.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_frag")) then {
        ["ace_frag_enabled", true, true, true] call ACE_common_fnc_setSetting;                                     // 0 = Deshabilitat, 1* = Habilitat.
        ["ace_frag_SpallEnabled", false, true, true] call ACE_common_fnc_setSetting;                               // 0* = Deshabilitat, 1 = Habilitat.
        ["ace_frag_maxTrack", 500, true, true] call ACE_common_fnc_setSetting;                                     // Scalar. 500 = Valor per defecte.
        ["ace_frag_MaxTrackPerFrame", 50, true, true] call ACE_common_fnc_setSetting;                              // Scalar. 50 = Valor per defecte.
        ["ace_frag_EnableDebugTrace", false, true, true] call ACE_common_fnc_setSetting;                           // 0 = Deshabilitat, 1* = Habilitat.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_frag.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_hitreactions")) then {

        ["ace_hitreactions_minDamageToTrigger", 0.1, true, true] call ACE_common_fnc_setSetting;                   // 0 = Deshabilitat, 1* = Habilitat.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_hitreactions.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_interaction")) then {
        //====================================================================================================//
        // Interaction System: http://ace3mod.com/wiki/missionmaker/modules.html#1.8-interaction-system       //
        //====================================================================================================//

        ["ace_interaction_EnableTeamManagement", true, true, true] call ACE_common_fnc_setSetting;                 // 0 = Deshabilitat, 1* = Habilitat.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_interaction.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_laserpointer")) then {

        ["ace_laserpointer_enabled", true, true, true] call ACE_common_fnc_setSetting;                             // Scalar. 0.1 = Valor per defecte.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_laserpointer.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_magazinerepack")) then {
        ["ace_magazinerepack_TimePerAmmo", 1.5, true, true] call ACE_common_fnc_setSetting;                        // Scalar. 1.5 = Valor per defecte.
        ["ace_magazinerepack_TimePerMagazine", 2, true, true] call ACE_common_fnc_setSetting;                      // Scalar. 2 = Valor per defecte.
        ["ace_magazinerepack_TimePerBeltLink", 8, true, true] call ACE_common_fnc_setSetting;                      // Scalar. 8 = Valor per defecte.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_magazinerepack.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_map")) then {
        //====================================================================================================//
        // BlueForce Tracking: http://ace3mod.com/wiki/missionmaker/modules.html#1.3-blueforcetracking        //
        //====================================================================================================//

        ["ace_map_BFT_Interval", 1.0, true, true] call ACE_common_fnc_setSetting;                                  // Scalar. 1 = Valor per defecte.
        ["ace_map_BFT_Enabled", false, true, true] call ACE_common_fnc_setSetting;                                 // 0* = Deshabilitat, 1 = Habilitat.
        ["ace_map_BFT_HideAiGroups", false, true, true] call ACE_common_fnc_setSetting;                            // 0* = Deshabilitat, 1 = Habilitat.

        //====================================================================================================//
        // Map: http://ace3mod.com/wiki/missionmaker/modules.html#1.10-map                                    //
        //====================================================================================================//

        ["ace_map_mapIllumination", true, true, true] call ACE_common_fnc_setSetting;                              // 0 = Deshabilitat, 1* = Habilitat.
        ["ace_map_mapShake", true, true, true] call ACE_common_fnc_setSetting;                                     // 0 = Deshabilitat, 1* = Habilitat.
        ["ace_map_mapGlow", true, true, true] call ACE_common_fnc_setSetting;                                      // 0 = Deshabilitat, 1* = Habilitat.
        ["ace_map_mapLimitZoom", false, true, true] call ACE_common_fnc_setSetting;                                // 0* = Deshabilitat, 1 = Habilitat.
        ["ace_map_mapShowCursorCoordinates", false, true, true] call ACE_common_fnc_setSetting;                    // 0* = Deshabilitat, 1 = Habilitat.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_map.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_maptools")) then {
        ["ace_maptools_EveryoneCanDrawOnBriefing", true, true, true] call ACE_common_fnc_setSetting;               // 0* = Deshabilitat, 1 = Habilitat.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_maptools.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_medical")) then {

        //====================================================================================================//
        // ACE3 Medical: http://ace3mod.com/wiki/missionmaker/modules.html#2.-ace3-medical                    //
        //====================================================================================================//
        ["ace_medical_level", cc_param_sistemaMedic, true, true] call ACE_common_fnc_setSetting;                   // 0 = Deshabilitat, 1* = Bàsic, 2 = Avançat.
        ["ace_medical_medicSetting", cc_param_sistemaMedic, true, true] call ACE_common_fnc_setSetting;            // 0 = Deshabilitat, 1* = Bàsic, 2 = Avançat.
        ["ace_medical_enableFor", 1, true, true] call ACE_common_fnc_setSetting;                                   // 0* = Només Jugadors, 1 = Jugadors i IA.
        ["ace_medical_enableOverdosing", true, true, true] call ACE_common_fnc_setSetting;                         // 0 = Deshabilitat, 1* = Habilitat.
        ["ace_medical_bleedingCoefficient", 1, true, true] call ACE_common_fnc_setSetting;                         // Scalar. 1 = Valor per defecte.
        ["ace_medical_painCoefficient", 1, true, true] call ACE_common_fnc_setSetting;                             // Scalar. 1 = Valor per defecte.
        ["ace_medical_enableAirway", false, true, true] call ACE_common_fnc_setSetting;                            // 0* = Deshabilitat, 1 = Habilitat.
        ["ace_medical_enableFractures", false, true, true] call ACE_common_fnc_setSetting;                         // 0* = Deshabilitat, 1 = Habilitat.
        ["ace_medical_enableAdvancedWounds", true, true, true] call ACE_common_fnc_setSetting;                     // 0* = Deshabilitat, 1 = Habilitat.
        ["ace_medical_enableVehicleCrashes", true, true, true] call ACE_common_fnc_setSetting;                     // 0 = Deshabilitat, 1* = Habilitat.
        ["ace_medical_enableScreams", true, true, true] call ACE_common_fnc_setSetting;                            // 0 = Deshabilitat, 1* = Habilitat.
        ["ace_medical_playerDamageThreshold", 1, true, true] call ACE_common_fnc_setSetting;                       // Scalar. 1 = Valor per defecte.
        ["ace_medical_AIDamageThreshold", 1, true, true] call ACE_common_fnc_setSetting;                           // Scalar. 1 = Valor per defecte.
        ["ace_medical_enableUnconsciousnessAI", 1, true, true] call ACE_common_fnc_setSetting;                     // 0 = Deshabilitat, 1* = 50/50, 2 = Habilitat.
        ["ace_medical_remoteControlledAI", true, true, true] call ACE_common_fnc_setSetting;                       // 0 = Deshabilitat, 1* = Habilitat.
        ["ace_medical_preventInstaDeath", false, true, true] call ACE_common_fnc_setSetting;                       // 0* = Deshabilitat, 1 = Habilitat.
        ["ace_medical_enableRevive", 0, true, true] call ACE_common_fnc_setSetting;                                // 0* = Deshabilitat, 1 = Només jugadors, 2 = Jugadors i IA.
        ["ace_medical_maxReviveTime", 120, true, true] call ACE_common_fnc_setSetting;                             // Scalar. 120 = Valor per defecte.
        ["ace_medical_amountOfReviveLives", -1, true, true] call ACE_common_fnc_setSetting;                        // Scalar. -1 = Valor per defecte.
        ["ace_medical_allowDeadBodyMovement", false, true, true] call ACE_common_fnc_setSetting;                   // 0* = Deshabilitat, 1 = Habilitat.
        ["ace_medical_allowLitterCreation", true, true, true] call ACE_common_fnc_setSetting;                      // 0 = Deshabilitat, 1* = Habilitat.
        // ["ace_medical_litterSimulationDetail", 3, false, false] call ACE_common_fnc_setSetting;                 // Client. 0 = Deshabilitat (0), 1 = Baix(50), 2 = Mitjà (100), 3* = Alt (1000), 4 = Ultra (5000).
        ["ace_medical_litterCleanUpDelay", 1800, true, true] call ACE_common_fnc_setSetting;                       // Scalar. 1800 = Valor per defecte.
        ["ace_medical_medicSetting_PAK", 1, true, true] call ACE_common_fnc_setSetting;                            // 0 = Qualsevol, 1* = Només metges, 2 = Només doctors.
        ["ace_medical_medicSetting_SurgicalKit", 1, true, true] call ACE_common_fnc_setSetting;                    // 0 = Qualsevol, 1* = Només metges, 2 = Només doctors.
        ["ace_medical_consumeItem_PAK", 1, true, true] call ACE_common_fnc_setSetting;                             // 0* = No, 1 = Si.
        ["ace_medical_consumeItem_SurgicalKit", 1, true, true] call ACE_common_fnc_setSetting;                     // 0* = No, 1 = Si.
        ["ace_medical_useLocation_PAK", 3, true, true] call ACE_common_fnc_setSetting;                             // 0 = A qualsevol lloc, 1 = Vehicles mèdics, 2 = Edificis mèdics, 3* = Vehicles i edificis mèdics, 4 = Deshabilitat.
        ["ace_medical_useLocation_SurgicalKit", 2, true, true] call ACE_common_fnc_setSetting;                     // 0 = A qualsevol lloc, 1 = Vehicles mèdics, 2* = Edificis mèdics, 3 = Vehicles i edificis mèdics, 4 = Deshabilitat.
        ["ace_medical_useConditionPAK", 1, true, true] call ACE_common_fnc_setSetting;                             // 0* = En qualsevol moment, 1 = Estable.
        ["ace_medical_useConditionSurgicalKit", 1, true, true] call ACE_common_fnc_setSetting;                     // 0* = En qualsevol moment, 1 = Estable.
        ["ace_medical_keepLocalSettingsSynced", true, true, true] call ACE_common_fnc_setSetting;                  // 0 = Deshabilitat, 1* = Habilitat.
        ["ace_medical_healHitPointAfterAdvBandage", false, true, true] call ACE_common_fnc_setSetting;             // 0* = Deshabilitat, 1 = Habilitat.
        ["ace_medical_painIsOnlySuppressed", true, true, true] call ACE_common_fnc_setSetting;                     // 0 = No, 1* = Si.
        // ["ace_medical_painEffectType", 0, true, true] call ACE_common_fnc_setSetting;                           // Client. 0 = Pain effect flash, 1 = Pain effect chroma.
        ["ace_medical_allowUnconsciousAnimationOnTreatment", false, true, true] call ACE_common_fnc_setSetting;    // 0* = No, 1 = Si.
        ["ace_medical_moveUnitsFromGroupOnUnconscious", false, true, true] call ACE_common_fnc_setSetting;         // 0* = No, 1 = Si.
        //["ace_medical_menuTypeStyle", 0, true, true] call ACE_common_fnc_setSetting;                               // 0* = Seleccio, 1 = Radial.

        // Assignar rols de metge, vehicle mèdic i edificis mèdics.
        {
            if (!isNil format["s%1",_x]) then {
                _x setVariable ["ace_medical_medicClass", 1, true];
            };
        } foreach _metges;

        {
            if (!isNil format["s%1",_x]) then {
                _x setVariable ["ace_medical_medicClass", 1, true];
            };
        } foreach _vehiclesMedics;

        {
            if (!isNil format["s%1",_x]) then {
                _x setVariable ["ace_medical_isMedicalFacility", true, true];
            };
        } foreach _edificisMedics;

    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_medical.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_medical_menu")) then {
        ["ace_medical_menu_allow", 2, true, true] call ACE_common_fnc_setSetting;                                  // 0 = Deshabilitat, 1* = Habilitat, 2 = Només vehicles.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_medical_menu.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_microdagr")) then {
        //====================================================================================================//
        // MicroDAGR Map Fill: http://ace3mod.com/wiki/missionmaker/modules.html#1.11-microdagr-map-fill      //
        //                     - 2: Full Satellite + Buildings                                                //
        //====================================================================================================//

        ["ace_microdagr_MapDataAvailable", 2, true, true] call ACE_common_fnc_setSetting;                          // 0 = Sense mapa, 1 = Carreteres/Topografia, 2* = Sense limitacions.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_microdagr.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_mk6mortar")) then {
        //====================================================================================================//
        // MK6 Settings: http://ace3mod.com/wiki/missionmaker/modules.html#1.12-mk6-settings                  //
        //====================================================================================================//

        ["ace_mk6mortar_airResistanceEnabled", true, true, true] call ACE_common_fnc_setSetting;                   // 0* = Deshabilitat, 1 = Habilitat. Simula la resistència de l'aire per dispars dels jugadors.
        ["ace_mk6mortar_allowComputerRangefinder", false, true, true] call ACE_common_fnc_setSetting;              // 0 = Deshabilitat, 1* = Habilitat. Monstra l'ordinador i el Rangefinder (s'ha de deshabilitar si es modela la resistència de l'aire.
        ["ace_mk6mortar_allowCompass", true, true, true] call ACE_common_fnc_setSetting;                           // 0 = Deshabilitat, 1* = Habilitat. Mostra la brújula digital del morter MK6.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_mk6mortar.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_nametags")) then {
        //====================================================================================================//
        // Name Tags: http://ace3mod.com/wiki/missionmaker/modules.html#1.13-name-tags                        //
        //====================================================================================================//

        // ["ace_nametags_defaultNametagColor", [0.77, 0.51, 0.08, 1], true, true] call ACE_common_fnc_setSetting; // Client.
        // ["ace_nametags_showPlayerNames", true, true, true] call ACE_common_fnc_setSetting;                      // Client.
        // ["ace_nametags_showPlayerRanks", true, true, true] call ACE_common_fnc_setSetting;                      // Client.
        // ["ace_nametags_showVehicleCrewInfo", true, true, true] call ACE_common_fnc_setSetting;                  // Client.
        // ["ace_nametags_showNamesForAI", false, true, true] call ACE_common_fnc_setSetting;                      // Client.
        ["ace_nametags_showCursorTagForVehicles", false, true, true] call ACE_common_fnc_setSetting;               // 0* = No, 1 = Si.
        // ["ace_nametags_showSoundWaves", true, true, true] call ACE_common_fnc_setSetting;                       // Client.
        ["ace_nametags_PlayerNamesViewDistance", 5, true, true] call ACE_common_fnc_setSetting;                    // Scalar. 5 = Valor per defecte.
        ["ace_nametags_PlayerNamesMaxAlpha", 0.8, true, true] call ACE_common_fnc_setSetting;                      // Scalar. 0.8 = Valor per defecte.
        // ["ace_nametags_tagSize", 2, true, true] call ACE_common_fnc_setSetting;                                 // Client.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_nametags.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_repair")) then {
        ["ace_ace_repair_engineerSetting_Repair", 1, true, true] call ACE_common_fnc_setSetting;                   // 0 = Qualsevol, 1* = Només enginyers, 2 = Només especialistes.
        ["ace_repair_engineerSetting_Wheel", 0, true, true] call ACE_common_fnc_setSetting;                        // 0* = Qualsevol, 1 = Només enginyers, 2 = Només especialistes.
        ["ace_repair_repairDamageThreshold", 0.6, true, true] call ACE_common_fnc_setSetting;                      // Scalar. 0.6 = Valor per defecte.
        ["ace_repair_repairDamageThreshold_Engineer", 0.4, true, true] call ACE_common_fnc_setSetting;             // Scalar. 0.4 = Valor per defecte.
        ["ace_repair_consumeItem_ToolKit", false, true, true] call ACE_common_fnc_setSetting;                      // 0* = No, 1 = Si.
        ["ace_repair_fullRepairLocation", 2, true, true] call ACE_common_fnc_setSetting;                           // 0 = Qualsevol lloc, 1 = Vehicle de reparació, 2* = Tallers, 3 = Vehicles de reparació i tallers, 4 = Deshabilitat.
        ["ace_repair_engineerSetting_fullRepair", 2, true, true] call ACE_common_fnc_setSetting;                   // 0 = Qualsevol, 1 = Només enginyers, 2 = Tallers, 3 = Vehicles de reparació i tallers, 4 = Deshabilitat.
        ["ace_repair_addSpareParts", true, true, true] call ACE_common_fnc_setSetting;                             // 0 = No, 1* = Si.
        ["ace_repair_wheelRepairRequiredItems", 1, true, true] call ACE_common_fnc_setSetting;                     // 0* = No es requereixen eines, 1 = Es requereixen eines.
        // Assignar rols d'enginyer, vehicle de reparació i tallers.
        {
            if (!isNil format["s%1",_x]) then {
                _x setVariable ["ACE_IsEngineer", 1, true];
            };
        } foreach _enginyers;

        {
            if (!isNil format["s%1",_x]) then {
                _x setVariable ["ACE_isRepairVehicle", 1, true];
            };
        } foreach _vehiclesReparacio;

        {
            if (!isNil format["s%1",_x]) then {
                _x setVariable ["ACE_isRepairFacility", true, true];
            };
        } foreach _tallers;
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_repair.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_respawn")) then {
        //====================================================================================================//
        // Respawn System: http://ace3mod.com/wiki/missionmaker/modules.html#1.15-respawn-system              //
        //====================================================================================================//

        ["ace_respawn_SavePreDeathGear", false, true, true] call ACE_common_fnc_setSetting;                        // 0* = No, 1 = Si.
        ["ace_respawn_RemoveDeadBodiesDisconnected", false, true, true] call ACE_common_fnc_setSetting;            // 0 = No, 1* = Si.
        ["ace_respawn_BodyRemoveTimer", 0, true, true] call ACE_common_fnc_setSetting;                             // Scalar. 0 = Valor per defecte.

        //====================================================================================================//
        // Friendly Fire Messages:                                                                            //
        //          http://ace3mod.com/wiki/missionmaker/modules.html#1.6-friendly-fire-messages              //
        //====================================================================================================//

        //["ace_respawn_showFriendlyFireMessage", false, true, true] call ACE_common_fnc_setSetting;
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_respawn.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_sitting")) then {
        ["ace_sitting_enable", true, true, true] call ACE_common_fnc_setSetting;                                   // 0 = Deshabilitat, 1* = Habilitat.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_sitting.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_spectator")) then {
        ["ace_spectator_filterUnits", 3, true, true] call ACE_common_fnc_setSetting;                               // 0 = Cap, 1 = Jugadors, 2* = Unitats jugables, 3 = Totes les unitats.
        ["ace_spectator_filterSides", 0, true, true] call ACE_common_fnc_setSetting;                               // 0* = Bàndol del jugador, 1 = Bàndols amics, 2 = Bàndols enemics, 3 = Tots els bàndols.
        ["ace_spectator_restrictModes", 0, true, true] call ACE_common_fnc_setSetting;                             // 0* = Tots, 1 = Modes d'unitat, 2 = Lliure, 3 = Modes interns, 4 = Modes externs.
        ["ace_spectator_restrictVisions", 0, true, true] call ACE_common_fnc_setSetting;                           // 0* = Tots, 1 = Visió nocturna, 2 = Visió tèrmica.

    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_spectator.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_switchunits")) then {
        //====================================================================================================//
        // SwitchUnits System: http://ace3mod.com/wiki/missionmaker/modules.html#1.16-switchunits-system      //
        //====================================================================================================//

        ["ace_switchunits_EnableSwitchUnits", false, true, true] call ACE_common_fnc_setSetting;                   // 0* = No, 1 = Si.
        ["ace_switchunits_SwitchToWest", false, true, true] call ACE_common_fnc_setSetting;                        // 0* = No, 1 = Si.
        ["ace_switchunits_SwitchToEast", false, true, true] call ACE_common_fnc_setSetting;                        // 0* = No, 1 = Si.
        ["ace_switchunits_SwitchToIndependent", false, true, true] call ACE_common_fnc_setSetting;                 // 0* = No, 1 = Si.
        ["ace_switchunits_SwitchToCivilian", false, true, true] call ACE_common_fnc_setSetting;                    // 0* = No, 1 = Si.
        ["ace_switchunits_EnableSafeZone", true, true, true] call ACE_common_fnc_setSetting;                       // 0 = No, 1* = Si.
        ["ace_switchunits_SafeZoneRadius", 100, true, true] call ACE_common_fnc_setSetting;                        // Scalar. 100 = Valor per defecte.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_switchunits.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_vehiclelock")) then {
        //====================================================================================================//
        // Vehicle Lock: http://ace3mod.com/wiki/missionmaker/modules.html#1.17-vehicle-lock                  //
        //====================================================================================================//

        ["ace_vehiclelock_DefaultLockpickStrength", 10, true, true] call ACE_common_fnc_setSetting;                // Scalar. 10 = Valor per defecte.
        ["ace_vehiclelock_LockVehicleInventory", true, true, true] call ACE_common_fnc_setSetting;                 // 0* = No, 1 = Si.
        ["ace_vehiclelock_VehicleStartingLockState", 0, true, true] call ACE_common_fnc_setSetting;                // Scalar. 0 = Valor per defecte.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_vehiclelock.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_viewdistance")) then {
        //====================================================================================================//
        // View Distance Limiter: http://ace3mod.com/wiki/missionmaker/modules.html#1.18-view-distance-limiter//
        //====================================================================================================//

        ["ace_viewdistance_enabled", true, true, true] call ACE_common_fnc_setSetting;                             // 0 = No, 1* = Si.
        ["ace_viewdistance_limitViewDistance", 10000, true, true] call ACE_common_fnc_setSetting;                  // Scalar. 10000 = Valor per defectre.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_viewdistance.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_weather")) then {
        //====================================================================================================//
        // Weather: http://ace3mod.com/wiki/missionmaker/modules.html#1.19-weather                            //
        //====================================================================================================//

        ["ace_weather_enableServerController", true, true, true] call ACE_common_fnc_setSetting;                   // 0 = No, 1* = Si.
        ["ace_weather_useACEWeather", true, true, true] call ACE_common_fnc_setSetting;                            // 0 = No, 1* = Si.
        ["ace_weather_syncRain", true, true, true] call ACE_common_fnc_setSetting;                                 // 0 = No, 1* = Si.
        ["ace_weather_syncWind", true, true, true] call ACE_common_fnc_setSetting;                                 // 0 = No, 1* = Si.
        ["ace_weather_syncMisc", true, true, true] call ACE_common_fnc_setSetting;                                 // 0 = No, 1* = Si.
        ["ace_weather_serverUpdateInterval", 60, true, true] call ACE_common_fnc_setSetting;                       // Scalar. 60 = Valor per defectre.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_weather.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_winddeflection")) then {
        //====================================================================================================//
        // Wind Deflection: http://ace3mod.com/wiki/missionmaker/modules.html#1.20-wind-deflection            //
        //====================================================================================================//

        ["ace_winddeflection_enable", true, true, true] call ACE_common_fnc_setSetting;                            // 0 = No, 1* = Si.
        ["ace_winddeflection_vehicleEnabled", true, true, true] call ACE_common_fnc_setSetting;                    // 0 = No, 1* = Si.
        ["ace_winddeflection_simulationInterval", 0.05, true, true] call ACE_common_fnc_setSetting;                // Scalar. 0.05 = Valor per defecte.
        ["ace_winddeflection_simulationRadius", 3000, true, true] call ACE_common_fnc_setSetting;                  // Scalar. 3000 = Valor per defecte.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_winddeflection.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_zeus")) then {

        ["ace_zeus_zeusAscension", false, true, true] call ACE_common_fnc_setSetting;                              // 0* = No, 1 = Si.
        ["ace_zeus_zeusBird", false, true, true] call ACE_common_fnc_setSetting;                                   // 0* = No, 1 = Si.
        ["ace_zeus_remoteWind", false, true, true] call ACE_common_fnc_setSetting;                                 // 0* = No, 1 = Si.
        ["ace_zeus_radioOrdnance", false, true, true] call ACE_common_fnc_setSetting;                              // 0* = No, 1 = Si.
        ["ace_zeus_revealMines", false, true, true] call ACE_common_fnc_setSetting;                                // 0* = No, 1 = Si.
        ["ace_zeus_autoAddObjects", false, true, true] call ACE_common_fnc_setSetting;                             // 0* = No, 1 = Si.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_zeus.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_captives")) then {
        //====================================================================================================//
        // Make Unit Surrender: http://ace3mod.com/wiki/missionmaker/modules.html#1.9-make-unit-surrender     //
        //====================================================================================================//

        ["ace_captives_allowHandcuffOwnSide", true, true, true] call ACE_common_fnc_setSetting;                    // 0 = No, 1* = Si.
        ["ace_captives_requireSurrender", 1, true, true] call ACE_common_fnc_setSetting;                           // 0 = Deshabilitat, 1* = Rendir únicament, 2 = Rendir o sense arma.
        ["ace_captives_allowSurrender", true, true, true] call ACE_common_fnc_setSetting;                          // 0 = No, 1* = Si.

        //{
        //    _x setVariable ["XXXXX", true, true];
        //} foreach _unitatsRendeixen;
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_captives.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_cargo")) then {
        ["ace_cargo_enable", true, true, true] call ACE_common_fnc_setSetting;                                     // 0 = No, 1* = Si.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_cargo.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_explosives")) then {
        //====================================================================================================//
        // Explosive System: http://ace3mod.com/wiki/missionmaker/modules.html#1.5-explosive-system           //
        //====================================================================================================//

        ["ace_explosives_RequireSpecialist", true, true, true] call ACE_common_fnc_setSetting;                     // 0* = No, 1 = Si.
        ["ace_explosives_PunishNonSpecialists", true, true, true] call ACE_common_fnc_setSetting;                  // 0 = No, 1* = Si.
        ["ace_explosives_ExplodeOnDefuse", true, true, true] call ACE_common_fnc_setSetting;                       // 0 = No, 1* = Si.

        // Assignar rols d'especialista en explosius.
        {
            if (!isNil format["s%1",_x]) then {
                _x setVariable ["ACE_IsEOD", true, true];
            };
        } foreach _espExplosius;
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_explosives.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_hearing")) then {
        //====================================================================================================//
        // Hearing: http://ace3mod.com/wiki/missionmaker/modules.html#1.7-hearing                             //
        //====================================================================================================//

        ["ace_hearing_EnableCombatDeafness", true, true, true] call ACE_common_fnc_setSetting;                     // 0* = Deshabilitat, 1 = Habilitat.
        ["ace_hearing_EarplugsVolume", 0.5, true, true] call ACE_common_fnc_setSetting;                            // Scalar. 0.5 = Valor per defecte.
        ["ace_hearing_UnconsciousnessVolume", 0.4, true, true] call ACE_common_fnc_setSetting;                     // Scalar. 0.4 = Valor per defecte.
        ["ace_hearing_enabledForZeusUnits", true, true, true] call ACE_common_fnc_setSetting;                      // 0 = Deshabilitat, 1* = Habilitat.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_hearing.pbo.";
    };

    if (isClass (configFile >> "CfgPatches" >> "ace_advanced_ballistics")) then {

        //====================================================================================================//
        // Advanced ballistics: http://ace3mod.com/wiki/missionmaker/modules.html#1.1-advanced-ballistics     //
        //====================================================================================================//
        ["ace_advanced_ballistics_enabled", cc_param_ace3Balistica, true, true] call ACE_common_fnc_setSetting;    // 0* = No, 1 = Si.
        ["ace_advanced_ballistics_simulateForSnipers", true, true, true] call ACE_common_fnc_setSetting;           // 0 = No, 1* = Si.
        ["ace_advanced_ballistics_simulateForGroupMembers", true, true, true] call ACE_common_fnc_setSetting;      // 0* = No, 1 = Si.
        ["ace_advanced_ballistics_simulateForEveryone", false, true, true] call ACE_common_fnc_setSetting;         // 0* = No, 1 = Si.
        ["ace_advanced_ballistics_disabledInFullAutoMode", false, true, true] call ACE_common_fnc_setSetting;      // 0* = No, 1 = Si.
        ["ace_advanced_ballistics_ammoTemperatureEnabled", true, true, true] call ACE_common_fnc_setSetting;       // 0 = No, 1* = Si.
        ["ace_advanced_ballistics_barrelLengthInfluenceEnabled", true, true, true] call ACE_common_fnc_setSetting; // 0 = No, 1* = Si.
        ["ace_advanced_ballistics_bulletTraceEnabled", true, true, true] call ACE_common_fnc_setSetting;           // 0 = No, 1* = Si.
        ["ace_advanced_ballistics_simulationInterval", 0.0, true, true] call ACE_common_fnc_setSetting;            // Scalar. 0.0 = Valor per defecte.
        ["ace_advanced_ballistics_simulationRadius", 3000, true, true] call ACE_common_fnc_setSetting;             // Scalar. 3000 = Valor per defecte.
    } else {
        _ErrorModul = true;
        diag_log "No s'ha trobat el fitxer ace_advanced_ballistics.pbo.";
    };

    if ( cc_param_debugOutput == 1) then {

        if (_ErrorModul) then {
            player sideChat format ["DEBUG (fn_ace3_config.sqf): ACE 3 no es pot configurar completament ja que hi ha fitxers que no estan carregats."];
        } else {
            player sideChat format ["DEBUG (fn_ace3_config.sqf): ACE 3 configurat."];
        };
    };
};

//============================================ FI DEL FITXER ============================================//
