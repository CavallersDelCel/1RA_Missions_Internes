//=======================================================================================================//
// File: bmt_ace3.hpp                                                                                    //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/11/26                                                                             //
// Description: This file declares the functions that will be available if this module is used during    //
//              the mission. In this case it declares functions related to Advanced Combat Environment 3 //
//              (ACE 3).                                                                                 //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Especifies that this component has been loaded.
#ifdef BMT_COMPONENTS
    class ace3 {};
#endif

// Define the functions of this component.
#ifdef BMT_FUNCTIONS_INTERNAL
    class ace3 {
        file = "src\ace3\functions";
        class ace3_assignWounds {};
        class ace3_config_preInit  { PreInit = 1; };
        class ace3_config_postInit { PostInit = 1; };
    };
#endif

// Define configurable parameters at mission start.
#ifdef BMT_PARAMETERS
    //===================================================================================================//
    // Delimiter                                                                                         //
    //===================================================================================================//
    class bmt_paramLine_ace3 {
        title = "========== ACE 3 configuration";
        values[] = {0};
        texts[] = {""};
        default = 0;
    };

    //===================================================================================================//
    // Medical sistem: Level of detail of the ACE3 medical system.                                       //
    // Default option: Advanced.                                                                         //
    //===================================================================================================//
    class bmt_param_ace3_medicalSystem {
        title = "Medical system";
        values[] = {0, 1, 2};
        texts[] = {"Disabled", "Basic", "Advanced"};
        default = 2;
    };

    //===================================================================================================//
    // Ballistics: Level of detail of ballistic simulation of ACE3.                                      //
    // Default option: Advanced.                                                                         //
    //===================================================================================================//
    class bmt_param_ace3_ballistics {
        title = "Ballistics";
        values[] = {0,1};
        texts[] = {"Basic", "Advanced"};
        default = 1;
    };
#endif

// Define function scope in multiplayer.
#ifdef BMT_FUNCTIONS_REMOTEEXEC
    class bmt_fnc_ace3_config { allowedTargets = 0; }; // This function can target everybody.
#endif

//============================================= END OF FILE =============================================//
