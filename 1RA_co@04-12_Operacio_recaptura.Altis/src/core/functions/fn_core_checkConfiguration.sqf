//=======================================================================================================//
// File: fn_core_checkConfiguration.sqf                                                                  //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/09/29                                                                             //
// Description: This function checks if the parameter configurations are the ones that are modified the  //
//              ones especified by the mission author.                                                   //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Check that TFAR and ACRE 2 are not marked as required simultaneously.
if ((bmt_var_requires_tfar == 1) and (bmt_var_requires_acre2 == 1)) then {
    player sideChat format ["ERROR (bmt_core_checkConfiguration.sqf): Both TFAR and ACRE2 are marked as required."];
};

// Advanced Combat Environment 3 (ACE 3).
if (isClass(missionconfigfile>>"CfgComponents">>"ace3")) then {
    if (!bmt_mod_ace3) then {
        player sideChat format ["ERROR: ACE 3 is loaded but it is not necessary for this mission."];
    } else {
        #include "includes\bmt_core_checkConfiguration_ace3.sqf"
    };
} else {
    if (bmt_mod_ace3) then {
        player sideChat format ["ERROR: ACE 3 is not loaded but it is necessary for this mission."];
    };
};

// Advanced Combat Radio Environment 2 (ACRE2)
if (isClass(missionconfigfile>>"CfgComponents">>"acre2")) then {
    if (!bmt_mod_acre2) then {
        player sideChat format ["ERROR: ACRE2 is loaded but it is not necessary for this mission."];
    } else {
        #include "includes\bmt_core_checkConfiguration_acre2.sqf"
    };
} else {
    if (bmt_mod_acre2) then {
        player sideChat format ["ERROR: ACRE2 is not loaded but it is necessary for this mission."];
    };
};

// ASR AI 3.
if (isClass(missionconfigfile>>"CfgComponents">>"asrai3")) then {
    if (!bmt_mod_asrai3) then {
        player sideChat format ["ERROR: ASR AI 3 is loaded but it is not necessary for this mission."];
    } else {
        #include "includes\bmt_core_checkConfiguration_asrai3.sqf"
    };
} else {
    if (bmt_mod_asrai3) then {
        player sideChat format ["ERROR: ASR AI 3 is not loaded but it is necessary for this mission."];
    };
};

// Dynamic-AI-Creator (DAC).
if (isClass(missionconfigfile>>"CfgComponents">>"dac")) then {
    if (!bmt_mod_dac) then {
        player sideChat format ["ERROR: DAC is loaded but it is not necessary for this mission."];
    } else {
        #include "includes\bmt_core_checkConfiguration_dac.sqf"
    };
} else {
    if (bmt_mod_dac) then {
        player sideChat format ["ERROR: DAC is not loaded but it is necessary for this mission."];
    };
};

// T8 Units.
if (isClass(missionconfigfile>>"CfgComponents">>"t8units")) then {
    if (bmt_var_requires_t8units == 0) then {
        player sideChat format ["ERROR: T8 Units is loaded but it is not necessary for this mission."];
    } else {
        #include "includes\bmt_core_checkConfiguration_t8units.sqf"
    };
} else {
    if (bmt_var_requires_t8units == 1) then {
        player sideChat format ["ERROR: T8 Units is not loaded but it is necessary for this mission."];
    };
};

// Perfils de Virtual Arsenal del grup 1RA.
if (bmt_var_requires_perfils1RA != 2) then {
    if (bmt_var_requires_perfils1RA != bmt_param_utilitzarPerfils) then {
        if (bmt_param_utilitzarPerfils == 1) then {
            player sideChat format ["ERROR: Virtual Arsenal profiles are selected but they are not necessary for this mission."];
        } else {
            player sideChat format ["ERROR: Virtual Arsenal profiles are not selected but they are necessary for this mission."];
        };
    };
};

// Task Force Arrowhead Radio (TFAR)
if (isClass(missionconfigfile>>"CfgComponents">>"tfar")) then {
    if (!bmt_mod_tfar) then {
        player sideChat format ["ERROR: TFAR is loaded but it is not necessary for this mission."];
    } else {
        #include "includes\bmt_core_checkConfiguration_tfar.sqf"
    };
} else {
    if (bmt_mod_tfar) then {
        player sideChat format ["ERROR: TFAR is not loaded but it is necessary for this mission."];
    };
};

//============================================= END OF FILE =============================================//
