#Plantilla de Bàsica per Missions (PBM)
 
**Autor**: CC_Magnetar
**Contribuidors**: CC_Viper (Plantilles d'imatges).
**Versió**: 0.0
**Darrera modificació**: 2015/06/20
**Descripció**: Plantilla bàsica per generar missions pel grup d'Arma 1er Regiment Aerotransportat (1RA) de la Comunitat Catalana de Simulació - Cavallers del Cel.

###Requeriments:

La Plantilla Bàsica per Missions (PBM) està pensada per ser flexible i no depèn de cap mod extern a excepció de:

* CC_Icona: Addon que afegeix la icona del grup 1er Regiment Aerotransportat (1RA).

La resta de la missió es mantindrà, per una decisió de disseny, *independent de qualsevol addon extern*. Qualsevol col·laborador que vulgui afegir algun script en particular haurà d'afegir una opció per tal de que la funcionalitat es pugui desactivar.

###Estructura:

La plantilla té la següent estructura de carpetes.

* "\" (Carpeta arrel): En aquesta carpeta es troben els fitxers essencials de la missió: description.ext, init.sqf, mission.sqm i briefing.sqf així com aquest fitxer de documentació.
* "\imatges": Carpeta on es guarden les diferents imatges. Conté plantilles per generar les imatges per la pròpia missió i pel fòrum.
* "\scripts": Carpeta on es guarden els diferents scripts/funcions organitzats en subcarpetes.
  * "\sripts\ace3": Scripts i funcions per configurar el ACE3.
  * "\scripts\briefing": Scripts per generar briefings per cada una de les faccions suportades. L'administrador de la partida té un briefing especial.
  * "\scripts\comu": Variables comunes.
  * "\scripts\configEquipacio": Scripts i funcions per equipar les unitats per cada una de les faccions suportades. Serveix per infanteria, vehicles i caixes.
  * "\scripts\intro": Introducció a la missió. Cada una de les faccions suportades té una introducció a la missió pròpia.
  * "\scripts\radios": Scripts per configurar les ràdios. Inclou fitxers de configuració del TFAR i ACRE2.
  * "\scripts\zeus": Scripts i funcions per configurar el Zeus.
  
###Mods suportats

La següent llista mostra els mods externs que actualment estan suportats i en negreta aquells mods que actualment estan a l'estàndard del grup 1RA.

* Contingut:
  * RHS Armed Forces of the Russian Federation (AFRF: http://www.rhsmods.org/mod/1
  * **RHS United States Armed Forces (USAF)**: http://www.rhsmods.org/mod/2
* Realisme:
  * Advanced Combat Environment (ACE3): https://github.com/acemod/ACE3 o bé http://ace3mod.com/
  * **Advanced Gameplay Modification (AGM)**: https://github.com/KoffeinFlummi/AGM
* Sistema de ràdios:
  * Advanced Combat Radio Environment 2 (ACRE2): http://forums.bistudio.com/showthread.php?191848-ACRE2-Stable-Release
  * **Task Force Arrowhead Radio (TFAR)**: https://github.com/michail-nikolaev/task-force-arma-3-radio

###Faccions suportades

La següent llista mostra les faccions suportades per aquells scripts que permeten un major grau de control en equipacions, objectius etc: *briefing.sqf*, *fn_acre2_determinarIdiomes.sqf* (babel), *fn_configEquipacio.sqf* i *intro.sqf* . En negreta aquells mods a l'estàndard del grup 1RA:

* **Blue Force**: blu_f
* **Civils**: civ_f
* **FIA**: blu_g_f, ind_g_f i _opf_g_f
* **Independent Force**:  ind_f
* **Opposing Force**: opf_f
* RHS Insurgents: rhs_faction_insurgents
* RHS Russian Airborne Troops (Vozdushno-desantnye voyska): rhs_faction_vdv
* RHS Soviet Air Defense Troops (Voyska protivovozdushnoy oborony): rhs_faction_vpvo
* **RHS United States Army (Desert)**: rhs_faction_usarmy_d
* **RHS United States Army (Woodland)**: rhs_faction_usarmy_wd
* **RHS United States Marine Corps (Desert)**: rhs_faction_usmc_d
* **RHS United States Marine Corps  (Woodland)**: rhs_faction_usmc_wd