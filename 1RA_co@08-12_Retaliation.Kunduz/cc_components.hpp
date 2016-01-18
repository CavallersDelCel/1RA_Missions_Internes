//=======================================================================================================//
// Arxiu: cc_components_addons.hpp                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/11/26                                                                      //
// Descripció: Aquest fitxer serveix per carregar els diferents components de la plantilla de forma      //
//             modular. Aquest fitxer no ha de ser modificat sota cap circumstància ja que pot afectar   //
//             seriosament el funcionament dels scripts i funcions inclosos a la plantilla.              //
// Canvis: 1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

// Genarals.
#include "src\comu\cc_comu.hpp"                       // Funcions comunes i essencials pel funcionament dels scripts.
#include "src\configEquipacio\cc_configEquipacio.hpp" // Funcions per equipar els diferents rols.
#include "src\configGrup\cc_configGrup.hpp"           // Funcions per configurar els grups de les unitats i el seu identificador.
#include "src\configUnitat\cc_configUnitat.hpp"       // Funció per configurar les unitats.
#include "src\misc\cc_misc.hpp"                       // Funcions miscel·lània.
#include "src\zeus\cc_zeus.hpp"                       // Afegir al Zeus els diferents objectes a la missió que s'han posat amb l'editor o amb altres Zeus.

// Declaracions específiques de cada missio.
#include "configMissio\comu\cc_comu.hpp"
#include "configMissio\finalitzarMissio\cc_finalitzarMissio.hpp"

// Declaracions depenents de modificacions externes.
#include "configMissio\cc_components_addons.hpp"

//============================================ FI DEL FITXER ============================================//
