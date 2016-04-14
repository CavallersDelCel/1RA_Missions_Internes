_grup1 = [];
_grup2 = [];
_grup3 = [];
_grup4 = [];
_grup5 = [];
_grup6 = [];
_grup7 = [];
_grup8 = [];

if (!isServer) exitwith {}; 

sleep 120;

PAPABEAR=[West,"HQ"]; PAPABEAR SideChat "Atenció: Rebut SITCOM. Tenim cobertura de satèl·lit i la seva ubicació en pantalla. Assegurin la zona i l'artefacte que portava l'helicòpter. Enviarem reforços per via terrestre. "; 

sleep 120; 

PAPABEAR=[West,"HQ"]; PAPABEAR SideChat "Atenció: Les imatges del satèl·lit mostren un grup d'insurgents aproximant-se per l'est";
sleep 20;
PAPABEAR=[West,"HQ"]; PAPABEAR SideChat "Recordin que tenen support de morters del FOB Collserola.";

_grup3 = [getmarkerpos "spawnest", EAST, ["O_G_Soldier_TL_F","O_G_medic_F","O_G_Soldier_GL_F","O_G_Soldier_LAT_F","O_G_Soldier_M_F","O_G_Soldier_AR_F","O_G_Soldier_A_F","O_G_Soldier_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

_wp1grup3 = _grup3 addwaypoint [getmarkerpos "wp7", 0];
_wp1grup3 setWaypointType "MOVE";
_wp1grup3 setwaypointformation "LINE";
_wp2grup3 = _grup3 addwaypoint [getmarkerpos "meta", 0];
_wp2grup3 setWaypointType "MOVE";
_wp2grup3 setWaypointBehaviour "COMBAT";
_wp3grup3 = _grup3 addwaypoint [getmarkerpos "defendoest", 0];
_wp3grup3 setWaypointType "MOVE";
_wp3grup3 setWaypointBehaviour "STEALTH";

sleep 300;

PAPABEAR=[West,"HQ"]; PAPABEAR SideChat "Atenció: grup d'insurgents detectat! aproximant-se a la seva posició pel nord";

_grup1 = [getmarkerpos "spawnnord", EAST, ["O_G_Soldier_TL_F","O_G_medic_F","O_G_Soldier_GL_F","O_G_Soldier_LAT_F","O_G_Soldier_M_F","O_G_Soldier_AR_F","O_G_Soldier_A_F","O_G_Soldier_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

_wp1grup1 = _grup1 addwaypoint [getmarkerpos "wp1", 0];
_wp1grup1 setWaypointType "MOVE";
_wp1grup1 setwaypointformation "LINE";
_wp2grup1 = _grup1 addwaypoint [getmarkerpos "meta", 0];
_wp2grup1 setWaypointType "MOVE";
_wp2grup1 setWaypointBehaviour "COMBAT";
_wp3grup1 = _grup1 addwaypoint [getmarkerpos "defendsud", 0];
_wp3grup1 setWaypointType "MOVE";
_wp3grup1 setWaypointBehaviour "STEALTH";

sleep 300;

PAPABEAR=[West,"HQ"]; PAPABEAR SideChat "Atenció: Detectat un altre grup d'insurgents aproximant-se per l'est";

_grup4 = [getmarkerpos "spawnest", EAST, ["O_G_Soldier_TL_F","O_G_medic_F","O_G_Soldier_GL_F","O_G_Soldier_LAT_F","O_G_Soldier_M_F","O_G_Soldier_AR_F","O_G_Soldier_A_F","O_G_Soldier_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

_wp1grup4 = _grup4 addwaypoint [getmarkerpos "wp8", 0];
_wp1grup4 setWaypointType "MOVE";
_wp1grup4 setwaypointformation "LINE";
_wp2grup4 = _grup4 addwaypoint [getmarkerpos "meta", 0];
_wp2grup4 setWaypointType "MOVE";
_wp2grup4 setWaypointBehaviour "COMBAT";
_wp3grup4 = _grup4 addwaypoint [getmarkerpos "defendoest", 0];
_wp3grup4 setWaypointType "MOVE";
_wp3grup4 setWaypointBehaviour "STEALTH";

sleep 300;

PAPABEAR=[West,"HQ"]; PAPABEAR SideChat "Atenció: Detectat un altre grup d'insurgents aproximant-se pel nord.";

_grup2 = [getmarkerpos "spawnnord", EAST, ["O_G_Soldier_TL_F","O_G_medic_F","O_G_Soldier_GL_F","O_G_Soldier_LAT_F","O_G_Soldier_M_F","O_G_Soldier_AR_F","O_G_Soldier_A_F","O_G_Soldier_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

_wp1grup2 = _grup2 addwaypoint [getmarkerpos "wp2", 0];
_wp1grup2 setWaypointType "MOVE";
_wp1grup2 setwaypointformation "LINE";
_wp2grup2 = _grup2 addwaypoint [getmarkerpos "meta", 0];
_wp2grup2 setWaypointType "MOVE";
_wp2grup2 setWaypointBehaviour "COMBAT";
_wp3grup2 = _grup2 addwaypoint [getmarkerpos "defendsud", 0];
_wp3grup2 setWaypointType "MOVE";
_wp3grup2 setWaypointBehaviour "STEALTH";

sleep 300;


PAPABEAR=[West,"HQ"]; PAPABEAR SideChat "Atenció: Grup d'insurgents detectat aproximant-se per l'oest.";

_grup5 = [getmarkerpos "spawnoest", EAST, ["O_G_Soldier_TL_F","O_G_medic_F","O_G_Soldier_GL_F","O_G_Soldier_LAT_F","O_G_Soldier_M_F","O_G_Soldier_AR_F","O_G_Soldier_A_F","O_G_Soldier_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

_wp1grup5 = _grup5 addwaypoint [getmarkerpos "wp3", 0];
_wp1grup5 setWaypointType "MOVE";
_wp1grup5 setwaypointformation "LINE";
_wp2grup5 = _grup5 addwaypoint [getmarkerpos "meta", 0];
_wp2grup5 setWaypointType "MOVE";
_wp2grup5 setWaypointBehaviour "COMBAT";
_wp3grup5 = _grup5 addwaypoint [getmarkerpos "defendest", 0];
_wp3grup5 setWaypointType "MOVE";
_wp3grup5 setWaypointBehaviour "STEALTH";


sleep 300;


PAPABEAR=[West,"HQ"]; PAPABEAR SideChat "Atenció: Grup d'insurgents detectat aproximant-se pel sud.";

_grup7 = [getmarkerpos "spawnoest", EAST, ["O_G_Soldier_TL_F","O_G_medic_F","O_G_Soldier_GL_F","O_G_Soldier_LAT_F","O_G_Soldier_M_F","O_G_Soldier_AR_F","O_G_Soldier_A_F","O_G_Soldier_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

_wp1grup7 = _grup7 addwaypoint [getmarkerpos "wp5", 0];
_wp1grup7 setWaypointType "MOVE";
_wp1grup7 setwaypointformation "LINE";
_wp2grup7 = _grup7 addwaypoint [getmarkerpos "meta", 0];
_wp2grup7 setWaypointType "MOVE";
_wp2grup7 setWaypointBehaviour "COMBAT";
_wp3grup7 = _grup7 addwaypoint [getmarkerpos "defendnord", 0];
_wp3grup7 setWaypointType "MOVE";
_wp3grup7 setWaypointBehaviour "STEALTH";


sleep 300;

PAPABEAR=[West,"HQ"]; PAPABEAR SideChat "Atenció: Un altre grup d'insurgents detectat aproximant-se per l'oest.";

_grup6 = [getmarkerpos "spawnoest", EAST, ["O_G_Soldier_TL_F","O_G_medic_F","O_G_Soldier_GL_F","O_G_Soldier_LAT_F","O_G_Soldier_M_F","O_G_Soldier_AR_F","O_G_Soldier_A_F","O_G_Soldier_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

_wp1grup6 = _grup6 addwaypoint [getmarkerpos "wp4", 0];
_wp1grup6 setWaypointType "MOVE";
_wp1grup6 setwaypointformation "LINE";
_wp2grup6 = _grup6 addwaypoint [getmarkerpos "meta", 0];
_wp2grup6 setWaypointType "MOVE";
_wp2grup6 setWaypointBehaviour "COMBAT";
_wp3grup6 = _grup6 addwaypoint [getmarkerpos "defendest", 0];
_wp3grup6 setWaypointType "MOVE";
_wp3grup6 setWaypointBehaviour "STEALTH";

sleep 300;
rescat = true;

PAPABEAR=[West,"HQ"]; PAPABEAR SideChat "Atenció: Un altre grup d'insurgents detectat aproximant-se pel sud.";

_grup8 = [getmarkerpos "spawnoest", EAST, ["O_G_Soldier_TL_F","O_G_medic_F","O_G_Soldier_GL_F","O_G_Soldier_LAT_F","O_G_Soldier_M_F","O_G_Soldier_AR_F","O_G_Soldier_A_F","O_G_Soldier_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

_wp1grup8 = _grup8 addwaypoint [getmarkerpos "wp6", 0];
_wp1grup8 setWaypointType "MOVE";
_wp1grup8 setwaypointformation "LINE";
_wp2grup8 = _grup8 addwaypoint [getmarkerpos "meta", 0];
_wp2grup8 setWaypointType "MOVE";
_wp2grup8 setWaypointBehaviour "COMBAT";
_wp3grup8 = _grup8 addwaypoint [getmarkerpos "defendnord", 0];
_wp3grup8 setWaypointType "MOVE";
_wp3grup8 setWaypointBehaviour "STEALTH";


