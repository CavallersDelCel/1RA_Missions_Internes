//=======================================================================================================//
// Arxiu: cc_comu.hpp                                                                                    //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/11/26                                                                      //
// Descripció: Aquest fitxer serveix per definir les funcions que estan disponibles si s'utilitza aquest //
//             mòdul durant la missió. En aquest cas declara funcions que depenen de la missió i que     //
//             afecten a altres scripts i funcions de la plantilla.                                      //                                                                  //
// Canvis: 1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

// Especifica que aquest component ha estat carregat.
#ifdef CC_COMPONENTS
    class configMissio_comu {};
#endif

// Defineix les funcions que té aquest component.
#ifdef CC_FUNCIONS
    class configMissio_comu {
        file = "configMissio\comu\funcions";
        class comu_comprovarConfiguracio { postInit = 1; };
        class comu_variablesComunes      { preInit = 1; };
    };
#endif

//============================================ FI DEL FITXER ============================================//
