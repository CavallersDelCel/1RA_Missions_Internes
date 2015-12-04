//=======================================================================================================//
// Arxiu: cc_acre2.hpp                                                                                   //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/11/26                                                                      //
// Descripció: Aquest fitxer serveix per definir les funcions que estan disponibles si s'utilitza aquest //
//             mòdul durant la missió. En aquest cas declara funcions relacionades amb la configuració   //
//             de les ràdios i les seves freqüències del Advanced Combat Radio Environment 2 (ACRE 2).   //
// Canvis: 1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

// Especifica que aquest component ha estat carregat.
#ifdef CC_COMPONENTS
    class acre2 {};
#endif

// Defineix les funcions que té aquest component.
#ifdef CC_FUNCIONS
    class acre2 {
        file = "src\acre2\funcions";
        class acre2_determinarIdiomes{};
        class acre2_afegirRadios{};
        class acre2_treureRadios{};
        class acre2_configurarCanals{};
        class acre2_configurarXatEspectador{};
    };
#endif

//============================================ FI DEL FITXER ============================================//
