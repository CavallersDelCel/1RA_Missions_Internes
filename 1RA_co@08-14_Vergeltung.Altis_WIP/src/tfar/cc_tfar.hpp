//=======================================================================================================//
// Arxiu: cc_tfar.hpp                                                                                    //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/11/26                                                                      //
// Descripció: Aquest fitxer serveix per definir les funcions que estan disponibles si s'utilitza aquest //
//             mòdul durant la missió. En aquest cas declara funcions relacionades amb la configuració   //
//             de les ràdios i les seves freqüències del Task Force Arrowhead Radio (TFAR).              //
// Canvis: 1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

// Especifica que aquest component ha estat carregat.
#ifdef CC_COMPONENTS
    class tfar {};
#endif

// Defineix les funcions que té aquest component.
#ifdef CC_FUNCIONS
    class tfar {
        file = "src\tfar\funcions";
        class tfar_treureRadios{};
        class tfar_afegirRadios{};
        class tfar_configurarFreqRadios{};
        class tfar_configurarXatEspectador{};
        class tfar_modificarSenyal{};
        class tfar_configurarCanals{};
        class tfar_configurarEstereo{};
    };
#endif

//============================================ FI DEL FITXER ============================================//
