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
        title = "Missió acabada amb èxit.";
        subtitle = "";
        description = "Les forces aliades han aconseguit acabar amb el coronel enemic i sembrar el caos en l'estructura de comandament enemiga.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class FinalFallit1 {
        title = "Missió fallida.";
        subtitle = "";
        description = "Les forces aliades han sigut eliminades després d'acabar amb el coronel enemic. Les disputes internes a l'estructura de comandament han començat.";
        pictureBackground = "";
        picture = "KIA";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class FinalFallit2 {
        title = "Missió fallida.";
        subtitle = "";
        description = "Les forces aliades han abortat la missió.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class FracasAbsolut {
        title = "Fracàs Absolut.";
        subtitle = "";
        description = "Les forces aliades han sigut eliminades sense acabar amb l'estructura de comandament enemiga.";
        pictureBackground = "";
        picture = "KIA";
        pictureColor[] = {0.0,0.3,0.6,1};
    };
};

//============================================ FI DEL FITXER ============================================//
