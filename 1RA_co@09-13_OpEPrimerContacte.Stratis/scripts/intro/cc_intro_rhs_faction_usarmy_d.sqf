//=======================================================================================================//
// Arxiu: cc_intro_rhs_faction_usarmy_d.sqf                                                              //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.2                                                                                           //
// Creació del Document: 2015/04/03                                                                      //
// Descripció: Aquest document serveix crear una pantalla d'introducció i mostrar el nom de la missió    //
//             així com la data i la localització per la facció RHS: United States Army                  //
//             "rhs_faction_usarmy_d":                                                                   //
//             http://class.rhsmods.org/rhsusaf/CfgGroups_West_rhs_faction_usarmy_d.html                 //
// Canvis: 0.1 (2015/04/03) Versió inicial.                                                              //
//         0.2 (2015/06/12) Canvis deguts a la versió 0.3.8 de RHS.                                      //
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
	titleText ["Relaxar-se mata\nViper - Capità dels cavallers del Cel","PLAIN"]; 
    titleFadeOut 7;
    sleep 5;

	// Rehabilitar la simulació a totes les unitats durant la pantalla negra
	{
		_x enableSimulation true;
	} forEach allUnits;
	
	// Nom de la missió, dia i localització
	[
		[
			["Operació Escurçó: Primer Contacte","<t color = '#F70D1A' align = 'right' shadow = '1' size = '1.2'>%1</t><br/>"],
			[([([daytime] call BIS_fnc_TimeToString),0,4] call BIS_fnc_trimString) + " " + str(date select 2) + "." + str(date select 1) + "." + str(date select 0),"<t align = 'right' shadow = '1' size = '1.0'>%1</t><br/>"],
			["Nord-Oest de Stratis","<t align = 'right' shadow = '1' size = '1.0'>%1</t>"]
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