//=======================================================================================================//
// Arxiu: cc_ace3.hpp                                                                                    //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/11/26                                                                      //
// Descripció: Aquest fitxer serveix per definir les funcions que estan disponibles si s'utilitza aquest //
//             mòdul durant la missió. En aquest cas declara funcions relacionades amb Advanced          //
//             Combat Radio Environment 3 (ACE 3).                                                       //
// Canvis: 1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

// Especifica que aquest component ha estat carregat.
#ifdef CC_COMPONENTS
    class ace3 {};
#endif

// Defineix les funcions que té aquest component.
#ifdef CC_FUNCIONS
    class ace3 {
        file = "src\ace3\funcions";
        class ace3_assignarFerides {};
        class ace3_config {
            PreInit = 1;
            PostInit = 1; // La funció s'executa al iniciar la missió, DESPRÉS d'inicialitzar objectes.
        };
    };
#endif

// Defineix els paràmetres configurables a l'inici de la missió.
#ifdef CC_PARAMETRES
    //===================================================================================================//
    // Delimitador                                                                                       //
    //===================================================================================================//
    class cc_paramLinia_ace3 {
        title = "========== Configuració de ACE 3";
        values[] = {0};
        texts[] = {""};
        default = 0;
    };

    //===================================================================================================//
    // Sistema mèdic: Nivell de detall del sistema mèdic de ACE3.                                        //
    // Opció per defecte: Avançat.                                                                       //
    //===================================================================================================//
    class cc_param_ace3_sistemaMedic {
        title = "Sistema mèdic";
        values[] = {0, 1, 2};
        texts[] = {"Deshabilitat", "Bàsic", "Avançat"};
        default = 2;
    };

    //===================================================================================================//
    // Sistema de balística: Nivell de detall del sistema de balística de ACE3.                          //
    // Opció per defecte: Avançat.                                                                       //
    //===================================================================================================//
    class cc_param_ace3_Balistica {
        title = "Sistema de balística";
        values[] = {0,1};
        texts[] = {"Bàsic", "Avançat"};
        default = 1;
    };
#endif

// Especifica els permisos de la funció en multijugador.
#ifdef CC_REMOTEEXEC_FUNCIONS
    class cc_fnc_ace3_config { allowedTargets = 0; }; // Aquesta funció pot accedir a tothom.
#endif

//============================================ FI DEL FITXER ============================================//
