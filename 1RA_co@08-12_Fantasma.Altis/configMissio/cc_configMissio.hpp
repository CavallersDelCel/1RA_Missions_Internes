//=======================================================================================================//
// Arxiu: cc_configMissio.hpp                                                                            //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                          //
// Creació del Document: 2015/11/05                                                                      //
// Descripció: Aquest document serveix per definir informació bàsica de la missió, com ara el tipus i el //
//             nom de la missió, autor, imatges de càrrega, ...                                          //
// Canvis: 0.1 (2015/11/05) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

//=======================================================================================================//
// Header de la missió: - Definició del mode de joc, nombre mínim de jugadors i nombre màxim de jugadors.//
//=======================================================================================================//

class Header {
    gameType = Coop;           // Mode de joc: https://community.bistudio.com/wiki/Multiplayer_Game_Types
    minPlayers = 8;            // Nombre mínim de jugadors.
    maxPlayers = 12;           // Nombre màxim de jugadors.
    playerCountMultipleOf = 1; // Per fer balanç en partides tvt o pvp per exemple.
};

//=======================================================================================================//
// Pantalla de càrrega: https://community.bistudio.com/wiki/Description.ext                              //
//                                                                                                       //
// Hi ha dues plantilles que són altament recomanables d'utilitzar a l'hora de crear les  imatges per    //
// l'entrada "overviewPicture" (cc_plantilla_overviewPicture.psd) i pel post de la missió al fòrum       //
// (cc_plantilla_forum.psd). Aquests fitxers Photoshop, cortesia de CC_Viper, són altament recomenables  //
// però totalment opcionals al dependre de programes d'edició externs comercials.                        //
//=======================================================================================================//

onLoadName = "Operació Fantasma";                      // Nom de la missió (apareix en gran).
onLoadMission = "Abatre el comandament local per desestabilitzar l'estructura militar a la regió.";    // Descripció breu de la missió.
onLoadIntro = "Plantilla Bàsica per Missions (PBM)";   // Missatge mostrat mentre es carrega la introducció.
onLoadIntroTime = 0;                                   // Quan la intro es carrega mostra (1) o amaga (0)
                                                       // el dia i l'hora de la missió.
onLoadMissionTime = 0;                                 // Quan la missió es carrega mostra (1) o amaga (0)
                                                       // el dia i l'hora de la missió.
author = "CC_Magnetar";                                // Autor.
loadScreen = "imatges\loadScreen.jpg";                 // Imatge mentre es carrega la missió.
overviewPicture = "imatges\overviewPicture.jpg";       // Imatge que es mostra al seleccionar la missió.
                                                       // Ha d'estar en format .paa i aspecte 2:1.
overviewText = "Inteligència informa de tensions internes en l'estructura militar del CSAT a la regió d'Altis. Si s'aconsegueix eliminar l'actual dirigent, les disputes internes debilitaran el control militar a la regió, facilitant les operacions militarsa per recuperar territori. Cal acabar amb el coronel enemic, a ser possible utilitzant les seves pròpies armes per tal de sembrar més el caos i simular un assassinat d'una de les faccions internes.";              // Text que es mostra al seleccionar la missó.

//=======================================================================================================//
// Respawn Settings: Definició del tipus de respawn. https://community.bistudio.com/wiki/Arma_3_Respawn  //
//=======================================================================================================//
respawn             = "BIRD";  // Es fa un respawn com a ocell, fi de la partida pel jugador.
respawnDelay        = 10;      // Temps que es tarda en fer respawn (en segons).
respawnVehicleDelay = 30;      // Temps que els vehicles tarden en fer respawn (en segons).
RespawnDialog       = 0;       // En cas de ser un respawn de tipus 3 (BASE) mostra un compte enrere i la
                               // puntuació (1) o no (0).
respawnOnStart      = -1;      // 1: respawn al començar i executa el script de respawn a l'inici,
                               // 0: sense respawn al començar i executa el script de respawn a l'inici,
                               // -1: sense respawn al començar i sense executar el script de respawn a l'inici.
joinUnassigned      = 1;       // 0: força el jugador al primer lloc lliure, 1: Deixa escollir el jugador.
disabledAI          = 1;       // Amaga les unitats amigues jugables que no són controlades per un jugador.
aiKills             = 0;       // Puntuació dels jugadors: 0 = deshabilitat, 1 = habilitat.

respawnTemplates[]          = {"cc_respawn"};
//respawnTemplatesWest[]      = {"cc_respawn"};
//respawnTemplatesEast[]      = {"cc_respawn"};
//respawnTemplatesCiv[]       = {"cc_respawn"};
//respawnTemplatesVirtual[]   = {}; // Jugadors virtuals.

class CfgRespawnTemplates {
    class cc_respawn {
        onPlayerKilled = "..\src\respawn\scripts\respawn\cc_respawn.sqf";
        onPlayerRespawn = "..\src\respawn\scripts\cc_respawn.sqf";
    };
};

//=======================================================================================================//
// Consola de Debug de BIS: https://community.bistudio.com/wiki/Description.ext#enableDebugConsole       //
//=======================================================================================================//
enableDebugConsole = 1;  // Consola de Debub  Habilitada per SP i administradors en MP.

//=======================================================================================================//
// Configuració de diversos paràmetres de la missió.                                                     //
//=======================================================================================================//
showGPS     = 1;             // Permet el GPS: 0 = deshabilitat, 1 = habilitat.
showCompass = 1;             // Brújola visible: 0 = deshabilitat, 1 = habilitat.
showMap     = 1;             // Mostra el mapa després de que comenci la missió: 0 = deshabilitat,
                             // 1 = habilitat.
showWatch   = 1;             // Mostra el rellotge: 0 = deshabilitat, 1 = habilitat.
forceRotorLibSimulation = 1; // Força la llibreria de model de vol avançat: 0 = opcions del client,
                             // 1 = força l'activació, 2 = força la desactivació.
disableChannels[]={1,2,3,4}; // Deshabilita els canals: 0 = global, 1 = Side, 2 = Command, 3 = Group,
                             // 4 = Vehicle, 5 = Direct, 6 = System.

//============================================ FI DEL FITXER ============================================//
