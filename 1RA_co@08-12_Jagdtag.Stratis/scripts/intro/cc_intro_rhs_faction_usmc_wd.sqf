//=======================================================================================================//
// Arxiu: cc_intro_rhs_faction_usmc_wd.sqf                                                               //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 2015/06/12                                                                      //
// Descripció: Aquest document serveix crear una pantalla d'introducció i mostrar el nom de la missió    //
//             així com la data i la localització per la facció RHS: United States Marine Corps          //
//             "rhs_faction_usmc_wd":                                                                    //
//             http://class.rhsmods.org/rhsusaf/CfgGroups_West_rhs_faction_usmc_wd.html                  //
// Canvis: 0.1 (2015/06/12) Versió inicial.                                                              //
//=======================================================================================================//

// Mostrar una pantalla negra
titleCut ["", "BLACK FADED", 999];

[] Spawn {
    waitUntil{!(isNil "cc_preload_completat")};
    
    // Deshabilitar la simulació a totes les unitats durant la pantalla negra
    {
        _x enableSimulation false;
    } forEach allUnits;
    
    // Mostrar una citació
    titleText ["Relaxar-se mata! Estigueu alerta!\nViper - Capità dels cavallers del Cel","PLAIN"]; 
    titleFadeOut 7;
    sleep 5;

    // Rehabilitar la simulació a totes les unitats durant la pantalla negra
    {
        _x enableSimulation true;
    } forEach allUnits;
    
    // Nom de la missió, dia i localització
    [
        [
            ["Nom de la missió","<t color = '#F70D1A' align = 'right' shadow = '1' size = '1.2'>%1</t><br/>"],
            [([([daytime] call BIS_fnc_TimeToString),0,4] call BIS_fnc_trimString) + " " + str(date select 2) + "." + str(date select 1) + "." + str(date select 0),"<t align = 'right' shadow = '1' size = '1.0'>%1</t><br/>"],
            ["Localització","<t align = 'right' shadow = '1' size = '1.0'>%1</t>"]
        ],-safeZoneX,-safeZoneY
    ] spawn BIS_fnc_typeText; 
    
    sleep 5;    
    "dynamicBlur" ppEffectEnable true;   
    "dynamicBlur" ppEffectAdjust [6];   
    "dynamicBlur" ppEffectCommit 0;     
    "dynamicBlur" ppEffectAdjust [0.0];  
    "dynamicBlur" ppEffectCommit 5;  

    titleCut ["", "BLACK IN", 5];
};

//============================================ FI DEL FITXER ============================================//