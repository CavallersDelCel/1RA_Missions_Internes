waituntil {! isnull player};

_vehlist = execvm "scripts\vehiclelist.sqf";
_airlist = execvm "scripts\aircraftlist.sqf";
_boatlist = execvm "scripts\boatlist.sqf";

#include "addnotes.sqf"

// if (player iskindof "B_recon_JTAC_F") then {
// [player,"AH99"] call BIS_fnc_addCommMenuItem;
// player setVariable ["ghst_helosup", false];
// [player,"A164"] call BIS_fnc_addCommMenuItem;
// player setVariable ["ghst_cassup", false];
// };
// 
// if (player iskindof "B_soldier_UAV_F") then {
// [player,"UAV"] call BIS_fnc_addCommMenuItem;
// player setVariable ["ghst_uavsup", false];
// [player,"UGV"] call BIS_fnc_addCommMenuItem;
// player setVariable ["ghst_ugvsup", 0];
// [player,"PUAV"] call BIS_fnc_addCommMenuItem;
// player setVariable ["ghst_puavsup", false];
//[player,"Artillery"] call BIS_fnc_addCommMenuItem;
// };
// 
// if (player iskindof "B_Soldier_SL_F") then {
// [player,"AMMO"] call BIS_fnc_addCommMenuItem;
// player setVariable ["ghst_ammodrop", false];
// [player,"PUAV"] call BIS_fnc_addCommMenuItem;
// player setVariable ["ghst_puavsup", false];
// };

//[player,"Transport"] call BIS_fnc_addCommMenuItem;

player setVariable ["dix_halojump", false];

//addactions for halo and vehspawn. Should ensure them showing even with jip
vehspawn addAction ["<t size='1.5' shadow='2' color='#FFA000'>Crear vehicle</t> <img size='4' color='#FFA000' shadow='2' image='\A3\armor_f_gamma\MBT_01\Data\UI\Slammer_M2A1_Base_ca.paa'/>", "dlg\ghst_spawnveh.sqf", ["veh_spawn",45], 6, true, true, "","alive _target"];
vehspawn setObjectTexture [0, "pics\car\cartell_crearvehicles.paa"];
vehspawn_1 addAction ["<t size='1.5' shadow='2' color='#FFA000'>Crear vehicle</t> <img size='4' color='#FFA000' shadow='2' image='\A3\armor_f_gamma\MBT_01\Data\UI\Slammer_M2A1_Base_ca.paa'/>", "dlg\ghst_spawnveh.sqf", ["veh_spawn_1",45], 6, true, true, "","alive _target"];
vehspawn_1 setObjectTexture [0, "pics\car\cartell_crearvehicles.paa"];
vehspawn_2 addAction ["<t size='1.5' shadow='2' color='#FFA000'>Crear vehicle</t> <img size='4' color='#FFA000' shadow='2' image='\A3\armor_f_gamma\MBT_01\Data\UI\Slammer_M2A1_Base_ca.paa'/>", "dlg\ghst_spawnveh.sqf", ["veh_spawn_2",45], 6, true, true, "","alive _target"];
vehspawn_2 setObjectTexture [0, "pics\car\cartell_crearvehicles.paa"];
vehspawn_3 addAction ["<t size='1.5' shadow='2' color='#FFA000'>Crear vehicle</t> <img size='4' color='#FFA000' shadow='2' image='\A3\armor_f_gamma\MBT_01\Data\UI\Slammer_M2A1_Base_ca.paa'/>", "dlg\ghst_spawnveh.sqf", ["veh_spawn_3",150], 6, true, true, "","alive _target"];
vehspawn_3 setObjectTexture [0, "pics\car\cartell_crearvehicles.paa"];

airspawn addAction ["<t size='1.5' shadow='2' color='#FFA000'>Crear aeronau</t> <img size='4' color='#FFA000' shadow='2' image='\A3\Air_F_EPC\Plane_CAS_01\Data\UI\Plane_CAS_01_CA.paa'/>", "dlg\ghst_spawnair.sqf", ["air_spawn",135], 6, true, true, "","alive _target"];
airspawn setObjectTexture [0, "pics\car\cartell_crearvehicles.paa"];
airspawn_1 addAction ["<t size='1.5' shadow='2' color='#FFA000'>Crear aeronau</t> <img size='4' color='#FFA000' shadow='2' image='\A3\Air_F_EPC\Plane_CAS_01\Data\UI\Plane_CAS_01_CA.paa'/>", "dlg\ghst_spawnair.sqf", ["air_spawn_1",135], 6, true, true, "","alive _target"];
airspawn_1 setObjectTexture [0, "pics\car\cartell_crearvehicles.paa"];
airspawn_2 addAction ["<t size='1.5' shadow='2' color='#FFA000'>Crear aeronau</t> <img size='4' color='#FFA000' shadow='2' image='\A3\Air_F_EPC\Plane_CAS_01\Data\UI\Plane_CAS_01_CA.paa'/>", "dlg\ghst_spawnair.sqf", ["air_spawn_2",135], 6, true, true, "","alive _target"];
airspawn_2 setObjectTexture [0, "pics\car\cartell_crearvehicles.paa"];
airspawn_3 addAction ["<t size='1.5' shadow='2' color='#FFA000'>Crear aeronau</t> <img size='4' color='#FFA000' shadow='2' image='\A3\Air_F_EPC\Plane_CAS_01\Data\UI\Plane_CAS_01_CA.paa'/>", "dlg\ghst_spawnair.sqf", ["air_spawn_3",90], 6, true, true, "","alive _target"];
airspawn_3 setObjectTexture [0, "pics\car\cartell_crearvehicles.paa"];

boatspawn addAction ["<t size='1.5' shadow='2' color='#FFA000'>Crear embarcacio</t> <img size='4' color='#FFA000' shadow='2' image='\A3\boat_f_beta\SDV_01\data\ui\portrait_SDV_ca.paa'/>", "dlg\ghst_spawnboat.sqf", ["boat_spawn",166], 6, true, true, "","alive _target"];
boatspawn setObjectTexture [0, "pics\car\cartell_crearvehicles.paa"];

halo addAction ["<t size='1.5' shadow='2' color='#00ffff'>HALO</t> <img size='4' color='#00ffff' shadow='2' image='\A3\Air_F_Beta\Parachute_01\Data\UI\Portrait_Parachute_01_CA.paa'/>", "call ghst_fnc_halo", [false,1000,60,false], 5, true, true, "","alive _target"];

base_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al port</t>", {player setposasl [getmarkerpos "port_teleport_mark" select 0,getmarkerpos "port_teleport_mark" select 1,1.5];}, [], 5, true, true, "","alive _target"];
base_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al camp de tir</t>", {player setposasl [getmarkerpos "tir_teleport_mark" select 0,getmarkerpos "tir_teleport_mark" select 1,1.5];}, [], 5, true, true, "","alive _target"];
base_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al CDT [LG]</t>", {player setposatl [getmarkerpos "tirlg_teleport_mark" select 0,getmarkerpos "tirlg_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];
base_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al CDT [AT]</t>", {player setposatl [getmarkerpos "tirat_teleport_mark" select 0,getmarkerpos "tirat_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];
base_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al CDT [MG]</t>", {player setposatl [getmarkerpos "tirmg_teleport_mark" select 0,getmarkerpos "tirmg_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];

base_teleport setObjectTexture [0, "pics\car\cartell_teletransport.paa"];
port_teleport setObjectTexture [0, "pics\car\cartell_teletransport.paa"];
tir_teleport setObjectTexture [0, "pics\car\cartell_teletransport.paa"];
tirat_teleport setObjectTexture [0, "pics\car\cartell_teletransport.paa"];
tirlg_teleport setObjectTexture [0, "pics\car\cartell_teletransport.paa"];
tirmg_teleport setObjectTexture [0, "pics\car\cartell_teletransport.paa"];

port_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure a la base</t>", {player setposatl [getmarkerpos "Respawn_West" select 0,getmarkerpos "Respawn_West" select 1,0.2];}, [], 5, false, true, "","alive _target"];
port_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al camp de tir</t>", {player setposatl [getmarkerpos "tir_teleport_mark" select 0,getmarkerpos "tir_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];
port_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al camp de tir [LG]</t>", {player setposatl [getmarkerpos "tirlg_teleport_mark" select 0,getmarkerpos "tirlg_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];
port_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al camp de tir [AT]</t>", {player setposatl [getmarkerpos "tirat_teleport_mark" select 0,getmarkerpos "tirat_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];
port_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al CDT [MG]</t>", {player setposatl [getmarkerpos "tirmg_teleport_mark" select 0,getmarkerpos "tirmg_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];

tir_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure a la base</t>", {player setposatl [getmarkerpos "Respawn_West" select 0,getmarkerpos "Respawn_West" select 1,0.2];}, [], 5, false, true, "","alive _target"];
tir_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al port</t>", {player setposatl [getmarkerpos "port_teleport_mark" select 0,getmarkerpos "port_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];
tir_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al CDT [LG]</t>", {player setposatl [getmarkerpos "tirlg_teleport_mark" select 0,getmarkerpos "tirlg_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];
tir_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al CDT [AT]</t>", {player setposatl [getmarkerpos "tirat_teleport_mark" select 0,getmarkerpos "tirat_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];
tir_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al CDT [MG]</t>", {player setposatl [getmarkerpos "tirmg_teleport_mark" select 0,getmarkerpos "tirmg_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];

tirat_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure a la base</t>", {player setposatl [getmarkerpos "Respawn_West" select 0,getmarkerpos "Respawn_West" select 1,0.2];}, [], 5, false, true, "","alive _target"];
tirat_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al port</t>", {player setposatl [getmarkerpos "port_teleport_mark" select 0,getmarkerpos "port_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];
tirat_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al camp de tir</t>", {player setposatl [getmarkerpos "tir_teleport_mark" select 0,getmarkerpos "tir_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];
tirat_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al CDT [LG]</t>", {player setposatl [getmarkerpos "tirlg_teleport_mark" select 0,getmarkerpos "tirlg_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];
tirat_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al CDT [MG]</t>", {player setposatl [getmarkerpos "tirmg_teleport_mark" select 0,getmarkerpos "tirmg_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];

tirlg_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure a la base</t>", {player setposatl [getmarkerpos "Respawn_West" select 0,getmarkerpos "Respawn_West" select 1,0.2];}, [], 5, false, true, "","alive _target"];
tirlg_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al port</t>", {player setposatl [getmarkerpos "port_teleport_mark" select 0,getmarkerpos "port_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];
tirlg_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al camp de tir</t>", {player setposatl [getmarkerpos "tir_teleport_mark" select 0,getmarkerpos "tir_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];
tirlg_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al CDT [AT]</t>", {player setposatl [getmarkerpos "tirat_teleport_mark" select 0,getmarkerpos "tirat_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];
tirlg_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al CDT [MG]</t>", {player setposatl [getmarkerpos "tirmg_teleport_mark" select 0,getmarkerpos "tirmg_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];

tirmg_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure a la base</t>", {player setposatl [getmarkerpos "Respawn_West" select 0,getmarkerpos "Respawn_West" select 1,0.2];}, [], 5, false, true, "","alive _target"];
tirmg_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al port</t>", {player setposatl [getmarkerpos "port_teleport_mark" select 0,getmarkerpos "port_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];
tirmg_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al camp de tir</t>", {player setposatl [getmarkerpos "tir_teleport_mark" select 0,getmarkerpos "tir_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];
tirmg_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al CDT [AT]</t>", {player setposatl [getmarkerpos "tirat_teleport_mark" select 0,getmarkerpos "tirat_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];
tirmg_teleport addAction ["<t size='1.5' shadow='2' color='#8904B1'>Moure al CDT [LG]</t>", {player setposatl [getmarkerpos "tirlg_teleport_mark" select 0,getmarkerpos "tirlg_teleport_mark" select 1,0.2];}, [], 5, false, true, "","alive _target"];

ghst_local_vehicles = [];
ghst_players = [];//["p1","p2","p3","p4","p5","p6","p7","p8","p9","p10","p11","p12"];
ghst_vehicles = ["uh80_1","uh80_2","vas1","vas2","vas3","c130c_1","c130t_2"];

[] spawn ghst_fnc_ptracker;

player addEventHandler ["Respawn", {call ghst_fnc_playeraddactions}];  
call ghst_fnc_playeraddactions;

//set weather
_delay = 86400;
waituntil {! isNil {missionNamespace getvariable "ghst_weather"}};

skipTime -24;
[_delay] call fnc_ghst_UpdateWeather;
skipTime 24;

sleep 1;

simulWeatherSync;

[] spawn ghst_fnc_vehicle_actioninit;

sleep 30;

// Info text
[str("1RA Academia General") , str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("By Viper")] spawn BIS_fnc_infoText;