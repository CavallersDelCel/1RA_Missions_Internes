//=======================================================================================================//
// Arxiu: cc_inicialitzar_DAC.sqf                                                                        //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 2015/09/29                                                                      //
// Descripció: Aquest document serveix per inicialitzar la versió script del Dynamic-AI-Creator (DAC)    //
//             de l'autor Silola (http://www.armaholic.com/page.php?id=25550). Aquest script inclou a    //
//             més a més una funció per omplir la variable "DAC_STRPlayers" amb els noms dels jugadors   //
//             de forma que no sigui necessàri afegir-los manualment al fixer "DAC_Config_Creator.sqf".  //
// Canvis: 0.1 (2015/09/29) Versió inicial.                                                              //
//=======================================================================================================//

// Esperar a que la variable que habilita/deshabilita el text de Debug estigui inicialitzada
waitUntil {(!isNil "cc_param_debugOutput")};
waitUntil {(!isNil "cc_param_debugDAC")};

DAC_Basic_Value = 0;

// Formar la variable necessària pel DAC amb les unitats a l'editor. Cal que totes les unitats jugables
// tinguin un nom assignat.
if (isServer) then {
    DAC_STRPlayers = [];
    {
        DAC_STRPlayers pushBack format ["%1",_x];
    } forEach playableUnits;
    publicVariable "DAC_STRPlayers";

    if ((cc_param_debugOutput == 1)) then {
        player sideChat format ["DEBUG (cc_inicialitzar_DAC.sqf): %1", DAC_STRPlayers];
    };
};


// Modificar el output de DAC depenent de si el debug està activat o no.
switch (cc_param_debugDAC) do {
    case 0: {
        // No mostrar res corresponent al DAC.
        DAC_Com_Values = [0,0,0,0];
        DAC_Marker     = 0;
    };

    case 1: {
        // Mostrar missatges d'inicialització.
        DAC_Com_Values    = [0,1,0,0];
        DAC_Marker        = 0;
    };

    case 2: {
        // Mostrar missatges de reducció, inicializació i marcadors al mapa.
        DAC_Com_Values = [1,2,0,0];
        DAC_Marker     = 2;
    };

    default {
        player sideChat format ["DEBUG (cc_inicialitzar_DAC.sqf): Paràmetre del DAC no reconegut."];
    };
};

execVM "DAC\DAC_Config_Creator.sqf";

//============================================ FI DEL FITXER ============================================//
