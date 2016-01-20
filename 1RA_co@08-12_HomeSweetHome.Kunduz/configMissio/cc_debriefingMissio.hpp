//=======================================================================================================//
// Arxiu: cc_debriefingMissio.hpp                                                                        //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/11/06                                                                      //
// Descripció: Aquest document serveix per definir configurar quins addons es configuraran               //
//             automàticament utilitzant els scripts inclosos a la Plantilla Bàsica per Missions. Els    //
//             paràmetres de la missió, en el cas d'existir, també es tindran en compte.                 //
// Canvis: 0.1 (2015/11/05) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

//=======================================================================================================//
// DEBRIEFING: Informació per quan acaba la missió.                                                      //
//=======================================================================================================//
class CfgDebriefing {
    class FracasAbsolut {
        title = "Fracàs absolut";
        subtitle = "";
        description = "Totes les unitats del convoi han estat abatudes.";
        pictureBackground = "";
        picture = "KIA";
        pictureColor[] = {0.0,0.3,0.6,1};
    };
};

//============================================ FI DEL FITXER ============================================//
