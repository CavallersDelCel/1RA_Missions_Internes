//=======================================================================================================//
// File: bmt_asrai3.hpp                                                                                  //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/11/26                                                                             //
// Description: This file declares the functions that will be available if this module is used during    //
//              the mission. In this case it declares functions related to the mod VCOM AI.              //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Especifies that this component has been loaded.
#ifdef BMT_COMPONENTS
    class vcomai {};
#endif

// Define configurable parameters at mission start.
#ifdef BMT_PARAMETERS
    //===================================================================================================//
    // Delimiter                                                                                         //
    //===================================================================================================//
    class bmt_paramLine_vcomai {
        title = "========== VCOM AI configuration";
        values[] = {0};
        texts[] = {""};
        default = 0;
    };

    //===================================================================================================//
    // ASR AI 3: Use ASR AI 3 enhancement mod in the mission?                                            //
    // Default option: Enabled                                                                           //
    //===================================================================================================//
    class bmt_param_vcomai_enabled {
        title = "Use VCOMAI";
        values[] = {0,1};
        texts[] = {"Disabled", "Enabled"};
        default = 1;
    };
#endif

//============================================= END OF FILE =============================================//
