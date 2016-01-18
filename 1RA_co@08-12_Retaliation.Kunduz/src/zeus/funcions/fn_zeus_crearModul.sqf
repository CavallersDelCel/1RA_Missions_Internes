//=======================================================================================================//
// Arxiu: fn_zeus_crearModul.sqf                                                                         //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/12/07                                                                      //
// Descripció: Aquest document serveix per crear un mòdul de Zeus i assignar-lo a l'administrador de     //
//             la partida.                                                                               //
// Canvis: 1.0 (2015/12/07) Versió inicial.                                                              //
//=======================================================================================================//

if (cc_param_zeus_Admin == 0) exitWith {};
if (!isServer) exitWith {};

// Crear el mòdul de Zeus
if (isNil "cc_var_centreSideLogic_Zeus") then {
    cc_var_centreSideLogic_Zeus = createCenter sideLogic; publicVariable "cc_var_centreSideLogic_Zeus";
    cc_var_grupSideLogic_Zeus = createGroup cc_var_centreSideLogic_Zeus; publicVariable "cc_var_grupSideLogic_Zeus";
};

cc_var_modulZeus = cc_var_grupSideLogic_Zeus createUnit ["ModuleCurator_F",[0,0,0] , [], 0, ""];
cc_var_modulZeus setVariable ["showNotification", false, true];
cc_var_modulZeus setVariable ["birdType", "", true];
cc_var_modulZeus setVariable ["Owner", "#adminLogged", true];
cc_var_modulZeus setVariable ["Addons", 3, true];
cc_var_modulZeus setVariable ["Forced", 0, true];
publicVariable "cc_var_modulZeus";

//============================================ FI DEL FITXER ============================================//
