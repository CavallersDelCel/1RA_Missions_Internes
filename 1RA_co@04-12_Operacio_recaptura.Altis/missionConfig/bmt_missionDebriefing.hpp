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
        title = "Missió acomplerta";
        subtitle = "";
        description = "Heu capturat el HVT i tornat amb vida.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class EndingSuccess2 {
        title = "Missió acomplerta parcialment";
        subtitle = "";
        description = "Heu capturat el HVT però heu tingut algunes baixes.";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    //class EndingSuccess3, EndingSuccess4, ....

    class EndingFailure1 {
        title = "Missió fallida";
        subtitle = "";
        description = "El HVT ha mort.";
        pictureBackground = "";
        picture = "KIA";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class EndingFailure2 {
        title = "Missió fallida";
        subtitle = "";
        description = "El HVT a escapat.";
        pictureBackground = "";
        picture = "KIA";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    //class EndingFailure3, EndingFailure4, ....

    class Disaster {
        title = "Missió fracassada";
        subtitle = "";
        description = "Heu mort tots.";
        pictureBackground = "";
        picture = "KIA";
        pictureColor[] = {0.0,0.3,0.6,1};
    };
};

//============================================= END OF FILE =============================================//
