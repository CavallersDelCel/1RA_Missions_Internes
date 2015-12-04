//=======================================================================================================//
// Arxiu: cc_asrai3.hpp                                                                                  //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/11/26                                                                      //
// Descripció: Aquest fitxer serveix per definir les funcions que estan disponibles si s'utilitza aquest //
//             mòdul durant la missió. En aquest cas declara funcions relacionades amb el mod ASR AI 3.  //
// Canvis: 1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

// Especifica que aquest component ha estat carregat.
#ifdef CC_COMPONENTS
    class asrai3 {};
#endif

// Defineix les funcions que té aquest component.
#ifdef CC_FUNCIONS
    class asrai3 {
        file = "src\asrai3\funcions";
        class asrai3_config { PostInit = 1; }; // La funció s'executa al iniciar la missió, DESPRÉS d'inicialitzar objectes.
    };
#endif

// Defineix els paràmetres configurables a l'inici de la missió.
#ifdef CC_PARAMETRES
    //===================================================================================================//
    // Delimitador                                                                                       //
    //===================================================================================================//
    class cc_paramLinia_asrai3 {
        title = "========== Configuració de ASR AI";
        values[] = {0};
        texts[] = {""};
        default = 0;
    };

    //===================================================================================================//
    // ASR AI 3: Variable per controlar si es fa servir el mod d'inteligència artifical ASR AI 3 durant  //
    //           la missió o si aquest es vol desactivar.                                                //
    // Opció per defecte: Habilitat                                                                      //
    //===================================================================================================//
    class cc_param_asrai3_habilitat {
        title = "Utilitzar ASR AI 3";
        values[] = {0,1};
        texts[] = {"Desactivat", "Activat"};
        default = 1;
    };
#endif

//============================================ FI DEL FITXER ============================================//
