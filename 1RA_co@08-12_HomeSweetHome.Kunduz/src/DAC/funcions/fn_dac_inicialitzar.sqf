//=======================================================================================================//
// Arxiu: fn_dac_inicialitzar_postInit                                                                   //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/09/29                                                                      //
// Descripció: Aquest document serveix per inicialitzar la versió addon del Dynamic-AI-Creator (DAC)     //
//             de l'autor Silola (http://www.armaholic.com/page.php?id=25550). Aquest script inclou a    //
//             més a més una funció per omplir la variable "DAC_STRPlayers" amb els noms dels jugadors   //
//             de forma que no sigui necessàri afegir-los manualment al fixer "DAC_Config_Creator.sqf".  //
// Canvis: 0.1 (2015/09/29) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

if (cc_param_dac_habilitat == 0) exitWith{};

if (isServer) then {
    // Crear el mòdul de DAC
    if (isNil "cc_var_centreSideLogic") then {
        cc_var_centreSideLogic = createCenter sideLogic;
        cc_var_grupSideLogic = createGroup cc_var_centreSideLogic;
    };
    cc_var_modulDAC = cc_var_grupSideLogic createUnit ["DAC_Source_Extern", [0,0,0],[], 1,"NONE"];
    publicVariable "cc_var_modulDAC";

    // Formar la variable necessària pel DAC amb les unitats a l'editor. Cal que totes les unitats jugables
    // tinguin un nom assignat.
    DAC_STRPlayers = [];
    {
        DAC_STRPlayers pushBack format ["%1",_x];
    } forEach playableUnits;
    publicVariable "DAC_STRPlayers";

    if ((cc_param_debugOutput == 1)) then {
        player sideChat format ["DEBUG (cc_dac_inicialitzar.sqf): %1", DAC_STRPlayers];
    };
};

// Modificar el output de DAC depenent de si el debug està activat o no.
switch (cc_param_dac_debug) do {
    case 0: {
        // No mostrar res corresponent al DAC.
        DAC_Com_Values = [0,0,0,0];
        DAC_Marker     = 0;
    };

    case 1: {
        // Mostrar missatges d'inicialització.
        DAC_Com_Values = [0,1,0,0];
        DAC_Marker     = 0;
    };

    case 2: {
        // Mostrar missatges de reducció, inicializació i marcadors al mapa.
        DAC_Com_Values = [1,2,0,0];
        DAC_Marker     = 2;
    };

    default {
        player sideChat format ["DEBUG (cc_dac_inicialitzar.sqf): Paràmetre del DAC no reconegut."];
    };
};

//============================================ FI DEL FITXER ============================================//
