//=======================================================================================================//
// Arxiu: cc_comu.hpp                                                                                    //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/11/26                                                                      //
// Descripció: Aquest fitxer serveix per definir les funcions que estan disponibles si s'utilitza aquest //
//             mòdul durant la missió. En aquest cas declara funcions que defineixen variables comunes   //
//             (globals) utilitzades en altres scripts i funcions de la plantilla.                       //
// Canvis: 1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

// Especifica que aquest component ha estat carregat.
#ifdef CC_COMPONENTS
    class comu {};
#endif

// Defineix les funcions que té aquest component.
#ifdef CC_FUNCIONS
    class comu {
        file = "src\comu\funcions";
        class comu_processarParamsArray { preInit = 1; };   // La funció s'executa al iniciar la missió, ABANS d'inicialitzar objectes.
        class comu_processarMods        { preInit = 1; };   // La funció s'executa al iniciar la missió, ABANS d'inicialitzar objectes.
    };
#endif

//============================================ FI DEL FITXER ============================================//
