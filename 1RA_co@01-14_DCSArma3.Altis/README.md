# Nom de la missió

Imatge capçalera.

Missió generada amb la Plantilla Bàsica per Missions (PBM) del grup 1er Regiment Aerotransportat (1RA) de la Comunitat Catalana de Simulació - Cavallers del Cel.

**Nom de la missió**: DCS i Arma 3.

**Versió**: v1.0 (2015/10/08).

**Autor**: CC_Magnetar.

**Tipus de missió**: Coop.

**Nombre mínim de jugadors**: 1.

**Nombre màxim de jugadors**: 14.

**Respawn**: Base (10s).

**Dificultat**: Baixa.

**Resum de la missió**: *DCS i Arma 3* és una missió de pràctiques de coordinació entre els grups d'infanteria i d'aviació. La missió no té objectius en si però en canvi permet l'activació/desactivació de varies zones DAC a través d'accions assignades al líder d'esquadra. El respawn és de tipus `BASE` tan per jugadors com per vehicles i força a tots els
clients el model de vol avançat de l'Arma 3.

**Plantilla Bàsica per Missions (PBM)**: v0.4.1 (https://github.com/CavallersDelCel/1RA_Plantilla_Missio) per CC_Magnetar.

### Descripció detallada de la missió

##### SITUACIÓ

La zona d'Altis ha sigut invaïda per les forces del mal del CSAT. Els Cavallers del Cel han de destruïr aquesta amenaça que creix com a bolets...

##### FORCES AMIGUES

* Esquadra Alfa amb suport aeri.

##### FORCES ENEMIGUES

* **Zona 1**: Zona poblada en la seva totalitat per unitats d'infanteria.
* **Zona 2**: Zona poblada per unitats d'infanteria i vehicles lleugers.
* **Zona 3**: Zona poblada per unitats d'infanteria, vehicles lleugers i blindats.
* **Zona 4**: Zona poblada per unitats d'infanteria, vehicles lleugers, blindats i helicòpters.
* **Zona 5**: Zona poblada per unitats d'infanteria, vehicles lleugers i helicòpters.

##### MISSIÓ i EXECUCIÓ

Coordinar correctament l'assalt a una posició amb unitats d'infanteria i d'aviació per tal d'eliminar les forces enemigues a la zona.

##### ADMINISTRACIÓ/LOGÍSTICA

**Suport**
* Sense suport.

**Abastiment**
* Sense abastiment.

##### COMANDAMENT/SENYAL

Cavallers del Cel SOP "Standard Operating Procedure"

##### ROLS

* **ESQUADRA ALFA - Canal alternatiu 1 - Freqüència 200**
  * **ALFA 1 - Equip de foc - Canal 1 - Freqüència 201**
    * Líder d'esquadra.
    * Fuseller.
    * Fuseller automàtic M249.
    * Granader.
    * Metge.
  * **ALFA 2 - Equip de foc - Canal 2 - Freqüència 202**
    * Líder d'equip.
    * Fuseller.
    * Fuseller automàtic  M249.
    * Granader.
    * Metge.
  * **ALFA 3 - Pilots - Canal 3 - Freqüència 203**
    * Pilot.
    * Pilot.

# Plantilla Bàsica per Missions (PBM)

**Autor**: CC_Magnetar.

**Contribuïdors**: CC_Viper (Plantilles d'imatges).

**Versió**: 0.4.1.

**Darrera modificació**: 2015/10/04.

**Descripció**: Plantilla bàsica per generar missions pel grup d'Arma 1er Regiment Aerotransportat (1RA) de la Comunitat Catalana de Simulació - Cavallers del Cel.

### Requeriments:

La Plantilla Bàsica per Missions (PBM) està pensada per ser flexible i no depèn de cap mod extern a excepció de:

* CC_Icona: Addon que afegeix la icona del grup 1er Regiment Aerotransportat (1RA).

La resta de la missió es mantindrà, per una decisió de disseny, *independent de qualsevol addon extern*. Qualsevol col·laborador que vulgui afegir algun script en particular
haurà d'afegir una opció per tal de que la funcionalitat es pugui desactivar.

### Estructura:

La plantilla té la següent estructura de carpetes.

* "\" (Carpeta arrel): En aquesta carpeta es troben els fitxers essencials de la missió: description.ext, init.sqf, mission.sqm i briefing.sqf així com aquest fitxer de documentació.
* "\DAC": Aquesta carpeta conté la versió script del Dynamic-AI-Creator v3.1b. És una eina, creada per Silola, per generar AI de forma dinàmica i que permet conservar recursos. Es pot trobar més informació a http://forums.bistudio.com/showthread.php?176926-DAC-V3-1-(Dynamic-AI-Creator)-released.
* "\imatges": Carpeta on es guarden les diferents imatges. Conté plantilles per generar les imatges per la pròpia missió i pel fòrum.
* "\scripts": Carpeta on es guarden els diferents scripts/funcions organitzats en subcarpetes.
  * "\sripts\ace3": Scripts i funcions per configurar el ACE3.
  * "\scripts\briefing": Scripts per generar brífings per cada una de les faccions suportades. L'administrador de la partida té un briefing especial.
  * "\scripts\comu": Variables comunes.
  * "\scripts\configEquipacio": Scripts i funcions per equipar les unitats per cada una de les faccions suportades. Serveix per infanteria, vehicles i caixes.
  * "\scripts\intro": Introducció a la missió. Cada una de les faccions suportades té una introducció a la missió pròpia.
  * "\scripts\radios": Scripts per configurar les ràdios. Inclou fitxers de configuració del TFAR i ACRE2.
  * "\scripts\zeus": Scripts i funcions per configurar el Zeus.

### Mods suportats

La següent llista mostra els mods externs que actualment estan suportats i en negreta aquells mods que actualment estan a l'estàndard del grup 1RA.

* Contingut:
  * RHS Armed Forces of the Russian Federation (AFRF: http://www.rhsmods.org/mod/1.
  * **RHS United States Armed Forces (USAF)**: http://www.rhsmods.org/mod/2.
* Realisme:
  * **Advanced Combat Environment (ACE3)**: https://github.com/acemod/ACE3 o bé http://ace3mod.com/.
  * Advanced Gameplay Modification (AGM): https://github.com/KoffeinFlummi/AGM. **Obsolet**.
* Sistema de ràdios:
  * Advanced Combat Radio Environment 2 (ACRE2): http://forums.bistudio.com/showthread.php?191848-ACRE2-Stable-Release.
  * **Task Force Arrowhead Radio (TFAR)**: https://github.com/michail-nikolaev/task-force-arma-3-radio.

### Faccions suportades

La següent llista mostra les faccions suportades per aquells scripts que permeten un major grau de control en equipacions, objectius etc: *briefing.sqf*,
*fn_acre2_determinarIdiomes.sqf* (babel), *fn_configEquipacio.sqf* i *intro.sqf* . En negreta aquells mods a l'estàndard del grup 1RA:

| **Faccio**        | **Codi**          |
| ------------- | ------------- |
| **Blue Force**                                                     | `blu_f`                          |
| **Civils**                                                         | `civ_f`                          |
| **FIA**                                                            | `blu_g_f`, `ind_g_f` i `opf_g_f` |
| **Independent Force**                                              | `ind_f`                          |
| **Opposing Force**                                                 | `opf_f`                          |
| RHS Insurgents                                                     | `rhs_faction_insurgents`         |
| RHS Russian Airborne Troops (Vozdushno-desantnye voyska)           | `rhs_faction_vdv`                |
| RHS Soviet Air Defense Troops (Voyska protivovozdushnoy oborony)   | `rhs_faction_vpvo`               |
| **RHS United States Army (Desert)**                                | `rhs_faction_usarmy_d`           |
| **RHS United States Army (Woodland)**                              | `rhs_faction_usarmy_wd`          |
| **RHS United States Marine Corps (Desert)**                        | `rhs_faction_usmc_d`             |
| **RHS United States Marine Corps (Woodland)**                      | `rhs_faction_usmc_wd`            |
