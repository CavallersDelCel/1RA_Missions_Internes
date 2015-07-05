#include "\task_force_radio\functions\common.sqf";

if ((isServer) or (isDedicated)) then {
    tf_no_auto_long_range_radio = true;
    publicVariable "tf_no_auto_long_range_radio";
    tf_same_sw_frequencies_for_side = true;
    publicVariable "tf_same_sw_frequencies_for_side";
    tf_same_lr_frequencies_for_side = true;
    publicVariable "tf_same_lr_frequencies_for_side";

    _settingsSwWest = false call TFAR_fnc_generateSwSettings;
    _settingsSwWest set [2, ["201","202","203","204","41","51","61","512"]];
    tf_freq_west = _settingsSwWest;

     _settingsLrWest = false call TFAR_fnc_generateLrSettings;
     _settingsLrWest set [2, ["41","51","61","42","52","62","43","53","63"]];
     tf_freq_west_lr = _settingsLrWest;

}; 

// Create a mission entry for the server and client RPT file, easier to debug when you know what mission created the error
diag_log text ""; 
diag_log text format["|=============================   %1   =============================|", missionName]; // stamp mission name
diag_log text "";

enableSaving [false, false];

CIVILIAN setFriend [WEST, 1];
WEST setFriend [CIVILIAN, 1];
EAST setFriend [CIVILIAN, 1];
INDEPENDENT setFriend [CIVILIAN, 1];

// Wait until player is initialized
if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};

tf_no_auto_long_range_radio = true;

_igiload = execVM "IgiLoad\IgiLoadInit.sqf";

execVM "shk_taskmaster.sqf";

// INS_revive initialize
[] execVM "INS_revive\revive_init.sqf";