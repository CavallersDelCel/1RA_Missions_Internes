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
        title = "Èxit total";
        subtitle = "";
        description = "Les forces aliades han aconseguit rescatar tots els marines capturats i acabar amb el líder insurreccionista.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class FinalExit2 {
        title = "Èxit parcial";
        subtitle = "";
        description = "Les forces aliades no han pogut rescatar tots els marines capturats però han pogut acabar amb el líder insurreccionista.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };
    
    class FinalExit3 {
        title = "Èxit parcial";
        subtitle = "";
        description = "Les forces aliades han pogut rescatar tots els marines capturats però no han pogut acabar amb el líder insurreccionista.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };
    
    class FinalExit4 {
        title = "Èxit parcial";
        subtitle = "";
        description = "Les forces aliades no han pogut rescatar tots els marines capturats i no han pogut acabar amb el líder insurreccionista.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };
    
    class FinalExit5 {
        title = "Èxit parcial";
        subtitle = "";
        description = "Les forces aliades no han pogut rescatar cap dels marines capturats però han pogut acabar amb el líder insurreccionista.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class FinalFallit1 {
        title = "Missió fallida";
        subtitle = "";
        description = "Les forces aliades no han pogut rescatar cap dels marines capturats ni acabar amb el líder insurreccionista.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };
    
    class FinalFallit2 {
        title = "Missió fallida";
        subtitle = "";
        description = "Les forces aliades han estat abatudes. El líder insurreccionista ha estat abatut.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class FracasAbsolut {
        title = "Fracàs absolut";
        subtitle = "";
        description = "Les forces aliades han estat abatudes sense complir amb cap dels objectius.";
        pictureBackground = "";
        picture = "KIA";
        pictureColor[] = {0.0,0.3,0.6,1};
    };
};

//============================================ FI DEL FITXER ============================================//
