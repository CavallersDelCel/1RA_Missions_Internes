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
    class FinalExit1 {
        title = "Final #1";
        subtitle = "";
        description = "*** Debriefing del final #1. ***";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class FinalExit2 {
        title = "Final #2";
        subtitle = "";
        description = "*** Debriefing del final #2. ***";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    //class FinalExit3, FinalExit4, ....

    class FinalFallit1 {
        title = "Missió fallida #1";
        subtitle = "";
        description = "*** Debriefing del final fallit #1. ***";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class FinalFallit2 {
        title = "Missió fallida #2";
        subtitle = "";
        description = "*** Debriefing final fallit #2. ***";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    //class FinalFallit3, FinalFallit4, ....

    class FracasAbsolut {
        title = "Fracàs absolut";
        subtitle = "";
        description = "*** Descripció de què és fracàs absolut. ***";
        pictureBackground = "";
        picture = "KIA";
        pictureColor[] = {0.0,0.3,0.6,1};
    };
};

//============================================ FI DEL FITXER ============================================//
