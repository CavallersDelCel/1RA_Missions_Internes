//=======================================================================================================//
// Arxiu: cc_configEquipacio.hpp                                                                         //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/11/26                                                                      //
// Descripció: Aquest fitxer serveix per definir les funcions que estan disponibles si s'utilitza aquest //
//             mòdul durant la missió. En aquest cas declara funcions que configuren l'equipació de la   //
//             unitat jugable.                                                                           //
// Canvis: 1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

// Especifica que aquest component ha estat carregat.
#ifdef CC_COMPONENTS
    class configEquipacio {};
#endif

// Defineix les funcions que té aquest component.
#ifdef CC_FUNCIONS
    class configEquipacio {
        file = "src\configEquipacio\funcions";
        class configEquipacio{};
    };
#endif

// Defineix els paràmetres configurables a l'inici de la missió.
#ifdef CC_PARAMETRES
    //===================================================================================================//
    // Delimitador                                                                                       //
    //===================================================================================================//
    class cc_paramLinia_perfils {
        title = "========== Configuració de l'equipació";
        values[] = {0};
        texts[] = {""};
        default = 0;
    };

    //===================================================================================================//
    // Perfils: Utilitzar els perfils a l'hora d'equipar les unitats                                     //
    // Opció per defecte: Els perfils no s'utilitzen.                                                    //
    //===================================================================================================//
    class cc_param_utilitzarPerfils {
        title = "Utilitzar perfils";
        values[] = {0,1};
        texts[] = {"No","Si"};
        default = 0;
    };
#endif

//============================================ FI DEL FITXER ============================================//
