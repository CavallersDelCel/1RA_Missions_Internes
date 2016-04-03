//=======================================================================================================//
// File: bmt_debriefingMissio.hpp                                                                        //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/11/06                                                                             //
// Description: In this document, the different endings of the mission are defined. Only the ending      //
//              labelled as Disaster must be present if the custom respawn template provided in this     //
//              project is used.                                                                         //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

//=======================================================================================================//
// DEBRIEFING: Informació per quan acaba la missió.                                                      //
//=======================================================================================================//
class CfgDebriefing {
    class EndingSuccess1 {
        title = "Èxit total";
        subtitle = "";
        description = "Les forces aliades han aconseguit rescatar tots els marines capturats i acabar amb el líder insurreccionista.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class EndingSuccess2 {
        title = "Èxit parcial";
        subtitle = "";
        description = "Les forces aliades no han pogut rescatar tots els marines capturats però han pogut acabar amb el líder insurreccionista.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class EndingSuccess3 {
        title = "Èxit parcial";
        subtitle = "";
        description = "Les forces aliades han pogut rescatar tots els marines capturats però no han pogut acabar amb el líder insurreccionista.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class EndingSuccess4 {
        title = "Èxit parcial";
        subtitle = "";
        description = "Les forces aliades no han pogut rescatar tots els marines capturats i no han pogut acabar amb el líder insurreccionista.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class EndingSuccess5 {
        title = "Èxit parcial";
        subtitle = "";
        description = "Les forces aliades no han pogut rescatar cap dels marines capturats però han pogut acabar amb el líder insurreccionista.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class EndingFailure1 {
        title = "Missió fallida";
        subtitle = "";
        description = "Les forces aliades no han pogut rescatar cap dels marines capturats ni acabar amb el líder insurreccionista.";
        pictureBackground = "";
        picture = "KIA";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class EndingFailure2 {
        title = "Missió fallida";
        subtitle = "";
        description = "Les forces aliades han estat abatudes. El líder insurreccionista ha estat abatut.";
        pictureBackground = "";
        picture = "KIA";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class Disaster {
        title = "Fracàs absolut";
        subtitle = "";
        description = "Les forces aliades han estat abatudes sense complir amb cap dels objectius.";
        pictureBackground = "";
        picture = "KIA";
        pictureColor[] = {0.0,0.3,0.6,1};
    };
};

//============================================= END OF FILE =============================================//
