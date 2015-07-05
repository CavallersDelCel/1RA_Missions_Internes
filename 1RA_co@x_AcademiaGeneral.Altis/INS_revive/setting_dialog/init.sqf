if(isDedicated) exitWith {};

private ["_playerRespawn"];

call compile preprocessFile "INS_revive\setting_dialog\functions.sqf";

INS_REV_GVAR_id_settings = player addAction["<t size='1.2' shadow='2' color='#fffe80'>Parametres</t>","INS_revive\setting_dialog\act_open_settings.sqf",[],-99,false,false,"",''];
_playerRespawn = player addEventHandler ["Respawn", {_this execVM "INS_revive\setting_dialog\onPlayerRespawn.sqf";}]; 
