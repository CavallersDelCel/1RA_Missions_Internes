//=======================================================================================================//
// File: bmt_dynMission.hpp                                                                              //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/11/26                                                                             //
// Description: This file declares the functions that will be available if this module is used during    //
//              the mission. In this case it declares functions related to dynamic tasks creation.       //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Especifies that this component has been loaded.
#ifdef BMT_COMPONENTS
    class dynMission {};
#endif

// Define the functions of this component.
#ifdef BMT_FUNCTIONS_INTERNAL
    class dynMission {
        file = "src\dynMission\functions";
    };
#endif

// Define configurable parameters at mission start.
#ifdef BMT_PARAMETERS

#endif

// Define function scope in multiplayer.
#ifdef BMT_FUNCTIONS_REMOTEEXEC

#endif

//============================================= END OF FILE =============================================//
