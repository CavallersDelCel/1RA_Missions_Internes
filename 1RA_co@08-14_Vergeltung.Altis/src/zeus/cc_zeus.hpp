//=======================================================================================================//
// Arxiu: cc_zeus.hpp                                                                                    //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/11/26                                                                      //
// Descripció: Aquest fitxer serveix per definir les funcions que estan disponibles si s'utilitza aquest //
//             mòdul durant la missió. En aquest cas declara funcions relacionades amb el Zeus.          //
// Canvis: 1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

// Especifica que aquest component ha estat carregat.
#ifdef CC_COMPONENTS
    class zeus {};
#endif

// Defineix les funcions que té aquest component.
#ifdef CC_FUNCIONS
    class zeus {
        file = "src\zeus\funcions";
        class zeus_eventHandlers  { PostInit = 1; }; // La funció s'executa al iniciar la missió, DESPRÉS d'inicialitzar objectes.
        class zeus_afegirGrups    {};
        class zeus_afegirObjectes {};
    };
#endif

// Especifica els permisos de la funció en multijugador.
#ifdef CC_REMOTEEXEC_FUNCIONS
    class cc_fnc_zeus_afegirGrups    { allowedTargets = 2; }; // Aquesta funció només pot tenir com a objectiu servidors.
    class cc_fnc_zeus_afegirObjectes { allowedTargets = 2; }; // Aquesta funció només pot tenir com a objectiu servidors.
#endif

//============================================ FI DEL FITXER ============================================//
