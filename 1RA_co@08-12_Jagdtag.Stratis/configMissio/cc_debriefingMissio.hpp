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
        description = "Les forces aliades han aconseguit eliminar el traidor i reestablir la comunicació per ràdio.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class FinalExit2 {
        title = "Missió acabada amb èxit.";
        subtitle = "";
        description = "Les forces aliades han aconseguit eliminar el traidor sense reestablir la comunicació per ràdio.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class FinalExit3 {
        title = "Missió acabada amb èxit.";
        subtitle = "";
        description = "Les forces aliades han aconseguit eliminar el traidor sense reestablir la comunicació per ràdio. A més a més han aconseguit informes d'inteligència que delaten moviments de tropes enemigues.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class FinalExit4 {
        title = "Missió acabada amb èxit.";
        subtitle = "";
        description = "Les forces aliades han aconseguit reestablir la comunicació per ràdio però el traidor ha pogut escapar.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class FinalExit5 {
        title = "Missió acabada amb èxit.";
        subtitle = "";
        description = "Les forces aliades han aconseguit reestablir la comunicació per ràdio i han aconseguit informes d'inteligència que delaten moviments de tropes enemigues. El traidor ha pogut escapar.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class FinalExit6 {
        title = "Èxit total.";
        subtitle = "";
        description = "Les forces aliades han aconseguit eliminar el traidor i reestablir la comunicació per ràdio. A més a més han aconseguit informes d'inteligència que delaten moviments de tropes enemigues.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class FinalFallit1 {
        title = "Missió fallida.";
        subtitle = "";
        description = "Les forces aliades han sigut eliminades i han aconseguit reestablir la comunicació per ràdio. El traidor ha pogut escapar.";
        pictureBackground = "";
        picture = "KIA";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class FinalFallit2 {
        title = "Missió fallida.";
        subtitle = "";
        description = "Les forces aliades han sigut eliminades però han aconseguit acabar amb el traidor sense reestablir la comunicació per ràdio.";
        pictureBackground = "";
        picture = "KIA";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class FinalFallit3 {
        title = "Missió fallida.";
        subtitle = "";
        description = "Les forces aliades han sigut eliminades però han aconseguit acabar amb el traidor i reestablir la comunicació per ràdio.";
        pictureBackground = "";
        picture = "KIA";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class FinalFallit4 {
        title = "Desertors!";
        subtitle = "";
        description = "Les forces aliades han desertat sense assolir cap dels objectius.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class FinalFallit5 {
        title = "Desertors!";
        subtitle = "";
        description = "Les forces aliades han desertat sense assolir cap dels objectius però com a mínim han tingut la decència d'informar sobre els moviments de tropes enemigues.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class FracasAbsolut {
        title = "Fracàs absolut";
        subtitle = "";
        description = "Les forces aliades han sigut eliminades sense assolir cap dels objectius.";
        pictureBackground = "";
        picture = "KIA";
        pictureColor[] = {0.0,0.3,0.6,1};
    };
};

//============================================ FI DEL FITXER ============================================//
