//=======================================================================================================//
// Arxiu: cc_finalitzarMissio.hpp                                                                        //
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
    class configMissio_finalitzarMissio {};
#endif

// Defineix les funcions que té aquest component.
#ifdef CC_FUNCIONS
    class configMissio_finalitzarMissio {
        file = "configMissio\finalitzarMissio\funcions";
        class finalitzarMissio{};
    };
#endif

// Especifica els permisos de la funció en multijugador.
#ifdef CC_REMOTEEXEC_FUNCIONS
    class cc_fnc_finalitzarMissio { allowedTargets = 0; }; // Aquesta funció pot accedir a tothom.
#endif

//============================================ FI DEL FITXER ============================================//
