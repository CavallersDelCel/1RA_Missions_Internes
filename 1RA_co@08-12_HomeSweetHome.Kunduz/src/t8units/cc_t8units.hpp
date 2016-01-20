//=======================================================================================================//
// Arxiu: cc_t8units.hpp                                                                                 //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/12/06                                                                      //
// Descripció: Aquest fitxer serveix per configurar el script de T8 Units. Aquest script és totalment    //
//             compatible amb Dynamic-AI-Creator (DAC). Per més informació:                              //
//             https://forums.bistudio.com/topic/172795-release-t8-units-a-less-dynamic-ai-creator       //
// Canvis: 1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

// Especifica que aquest component ha estat carregat.
#ifdef CC_COMPONENTS
    class t8units {};
#endif

// Defineix les funcions que té aquest component.
#ifdef CC_FUNCIONS_EXTERN
    #include "..\..\scriptsExterns\T8\FUNCTIONS.hpp"
#endif

// Defineix els paràmetres configurables a l'inici de la missió.
#ifdef CC_PARAMETRES
    //===================================================================================================//
    // Delimitador                                                                                       //
    //===================================================================================================//
    class cc_paramLinia_t8units {
        title = "========== Configuració de T8 Units";
        values[] = {0};
        texts[] = {""};
        default = 0;
    };

    //===================================================================================================//
    // T8 Units: Variable per controlar si es fa servir el T8 Units durant la missió o si aquest es vol  //
    //           desactivar.                                                                             //
    // Opció per defecte: Habilitat                                                                      //
    //===================================================================================================//
    class cc_param_t8units_habilitat {
        title = "Utilitzar T8 Units";
        values[] = {0,1};
        texts[] = {"Desactivat", "Activat"};
        default = 1;
    };

    //===================================================================================================//
    // Debug del T8 Units: Variable per controlar la quantitat d'informació que es mostra a l'utilitzar  //
    //                     el T8 Units en una missió.                                                    //
    //                     - Desactivat: No es mostra cap informació referent al T8 Units.               //
    //                     - Activat: Es mostren marcadors, waypoints i informació addicional.           //
    // Opció per defecte: Activat.                                                                       //
    //===================================================================================================//
    class cc_param_t8units_debug {
        title = "Debug T8 Units";
        values[] = {0,1};
        texts[] = {"Desactivat", "Activat"};
        default = 1;
    };

    //===================================================================================================//
    // Compatibilitat amb DAC: Variable per controlar si les unitats creades pel T8 Units demanaran      //
    //                         ajuda a les generades utilitzant DAC.                                     //
    // Opció per defecte: Activat.                                                                       //
    //===================================================================================================//
    class cc_param_t8units_dac {
        title = "Compatibilitat amb DAC";
        values[] = {0,1};
        texts[] = {"Desactivat", "Activat"};
        default = 1;
    };
#endif

//============================================ FI DEL FITXER ============================================//
