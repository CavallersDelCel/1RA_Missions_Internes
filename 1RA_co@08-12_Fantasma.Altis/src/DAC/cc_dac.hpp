//=======================================================================================================//
// Arxiu: cc_dac.hpp                                                                                     //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/11/26                                                                      //
// Descripció: Aquest fitxer serveix per definir les funcions que estan disponibles si s'utilitza aquest //
//             mòdul durant la missió. En aquest cas declara funcions que depenen de la missió i que     //
//             serveixen per finalitzar la missió depenent dels objectius assolits.                      //                                                                  //
// Canvis: 1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

// Especifica que aquest component ha estat carregat.
#ifdef CC_COMPONENTS
    class dac {};
#endif

// Defineix els paràmetres configurables a l'inici de la missió.
#ifdef CC_PARAMETRES
    //===================================================================================================//
    // Delimitador                                                                                       //
    //===================================================================================================//
    class cc_paramLinia_dac {
        title = "========== Configuració de DAC";
        values[] = {0};
        texts[] = {""};
        default = 0;
    };

    //===================================================================================================//
    // Dynamic-AI-Creator: Variable per controlar si es fa servir el Dynamic-AI-Creator (DAC) durant la //
    //                     missió o si aquest es vol desactivar.                                         //
    // Opció per defecte: Habilitat                                                                      //
    //===================================================================================================//
    class cc_param_dac_habilitat {
        title = "Utilitzar DAC";
        values[] = {0,1};
        texts[] = {"Desactivat", "Activat"};
        default = 1;
    };

    //===================================================================================================//
    // Debug del DAC: Variable per controlar la quantitat d'informació que es mostra a l'utilitzar el    //
    //                DAC en una missió.                                                                 //
    //                  - Desactivat: No es mostra cap informació referent al DAC.                       //
    //                  - Simplificat: No es mostren les zones DAC al mapa ni missatges de reducció dels //
    //                                 diferents grups. Missatges d'inicialització simplificats. Es      //
    //                                 recomana aquest valor durant la missió.                           //
    //                  - Complert: Es mostren les zones DAC i les unitats al mapa així com els diversos //
    //                              missatges de reducció/creació dels diferents grups. Els missatges    //
    //                              a l'inici dónen la màxima informació possible.                       //
    // Opció per defecte: Complert.                                                                      //
    //===================================================================================================//
    class cc_param_dac_debug {
        title = "Debug DAC";
        values[] = {0,1,2};
        texts[] = {"Desactivat", "Simplificat", "Complert"};
        default = 2;
    };
#endif

//============================================ FI DEL FITXER ============================================//
