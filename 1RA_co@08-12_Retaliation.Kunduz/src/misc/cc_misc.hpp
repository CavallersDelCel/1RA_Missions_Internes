//=======================================================================================================//
// Arxiu: cc_misc.hpp                                                                                    //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/11/26                                                                      //
// Descripció: Aquest fitxer serveix per definir les funcions que estan disponibles si s'utilitza aquest //
//             mòdul durant la missió. En aquest cas declara funcions miscel·làniques que poden ser      //
//             en certes missions, com ara teleport...                                                   //
// Canvis: 1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

// Especifica que aquest component ha estat carregat.
#ifdef CC_COMPONENTS
    class misc {};
#endif

// Defineix les funcions que té aquest component.
#ifdef CC_FUNCIONS
    class misc {
        file = "src\misc\funcions";
        class misc_teleport         {};
        class misc_teleport_configurarPunts { postInit = 1; };
    };
#endif

// Especifica els permisos de la funció en multijugador.
#ifdef CC_REMOTEEXEC_FUNCIONS
    class misc_createDiaryEntry { allowedTargets = 0; }; // Aquesta funció pot accedir a tothom.
#endif

//============================================ FI DEL FITXER ============================================//
