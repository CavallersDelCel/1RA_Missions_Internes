# Nom de la missió

<p align="center">
    <img src="https://github.com/CavallersDelCel/1RA_Missions_Internes/blob/master/1RA_co%4008-12_Fantasma.Altis/imatges/cc_op_fantasma.jpg">
</p>

Missió generada amb la Plantilla Bàsica per Missions (PBM) del grup 1er Regiment Aerotransportat (1RA) de la Comunitat Catalana de Simulació - Cavallers del Cel.

**Nom de la missió**: Operació Fantasma.

**Versió**: v1.0 (2015/09/25).

**Autor**: CC_Magnetar.

**Tipus de missió**: Coop.

**Nombre mínim de jugadors**: 8.

**Nombre màxim de jugadors**: 12.

**Respawn**: Deshabilitat (Espectador).

**Dificultat**: Elevada.

**Resum de la missió**: *Operació Fantasma* és una missió en el que dos equips de foc i un de tiradors han d'eliminar un oficial enemic en una zona amb força presència civil.
Per tal d'acomplir els objectius es requereixen entre 8 i 12 jugadors molt ben coordinats ja que es considera una missió difícil. La tasca no s'actualitza un cop completada
i són els jugadors els qui decideixen si l'han completat o no..

**Plantilla Bàsica per Missions (PBM)**: v0.1 (https://github.com/CavallersDelCel/1RA_Plantilla_Missio) per CC_Magnetar.

### Descripció detallada de la missió

##### REQUISITS

Aquesta missió s'ha comprovat que funciona amb el següent:

* Community Base Addons (CBA) v2.0.
* RHS United States Army Forces (RHS USAF) v0.3.9.1.
* Task Force Arrowhead Radio (TFAR) v0.9.7.3.
* Advanced Combat Environment 3 (ACE3) v3.3.2.
* Dynamic-AI-Creator (DAC) v3.1b (versió en script).

##### SITUACIÓ

L'avanç inexorable de les forces del CSAT han obligat als països aliats a intervenir per tal d'aturar l'annexió constant de territori utilitzant la força bruta. L'illa d'Altis,
ha sigut considerada com un punt estratègic clau a l'hora de mantenir el control del Mediterrani. Després de diversos intents, s'ha aconseguit establir una zona d'operacions al
nord d'aquesta illa però la situació no està gens resolta.

A través d'intervencions telefòniques, el servei d'intel·ligència ha pogut saber que les últimes derrotes del CSAT al Mediterrani han fet que un dels seus dirigents més carismàtics,
el coronel Ohmid Raheem, comenci a ser àmpliament criticat. La presència de les dues faccions, la lleial al coronel i aquells que creuen que la seva època daurada s'ha acabat, obren
la porta a un possible conflicte intern si cau en combat que podria facilitar futures operacions militars a l'illa.

Conscient de la precarietat de la seva situació, el coronel Ohmid Raheem s'ha rodejat de les tropes més lleials i s'ha desplaçat al nord d'Altis per dirigir personalment el que es
creu un atac a gran escala per tal de recuperar el control total de l'illa, establint la seva base d'operacions en un complexe turístic amb forta presència civil. Aquesta no és la
primera vegada que Ohmid Raheem utilitza civils com escuts humans.

##### FORCES AMIGUES

* Degut a un possible atac enemic, no es poden desplegar més tropes i la presència de civils a la zona fa inviable el suport aèri o artillat.

##### FORCES ENEMIGUES

* S'espera una forta presència d'unitats enemigues a la zona. Blindats han sigut avistats.

##### MISSIÓ i EXECUCIÓ

Dos equips d'infanteria i un de tiradors seran desplegats al nord-oest de Sofia, Altis, amb l'objectiu d'**eliminar el coronel Ohmid Raheem**, que coordina les operacions militars
al nord d'Altis des de la costa.

Un cop completada la tasca, els efectius es dirigiran a Sofia per reagrupar-se amb les forces aliades i preparar l'ofensiva al nord d'Altis.

<p align="center">
    <img src="https://github.com/CavallersDelCel/1RA_Missions_Internes/blob/master/1RA_co%4008-12_Fantasma.Altis/imatges/Mapa.png">
</p>

**Tasques**
* Inserció al punt LZ1.
* Acostar-se a l'àrea d'operacions i eliminar l'objectiu.
* Minimitzar les baixes civils per tal de guanyar-se el seu respecte i col·laboració.
* Reagrupar-se a Sofia.

##### ADMINISTRACIÓ/LOGÍSTICA

**Suport**
* Sense suport.

**Abastiment**
* Sense abastiment.

##### COMANDAMENT/SENYAL

Cavallers del Cel SOP "Standard Operating Procedure"

##### ROLS

* **ESQUADRA ALFA - Canal alternatiu 1 - Freqüència 200**
  * **ALFA 1** - Equip de foc en vehicle HMMWV amb metralladora - Canal 1 - Freqüència 201**
    * Líder d'esquadra.
    * Fuseller AT4.
    * Fuseller automàtic M249.
    * Granader.
    * Metge.
  * **ALFA 2** - Equip de foc en vehicle HMMWV amb llançagranades - Canal 2 - Freqüència 202**
    * Líder d'equip.
    * Antitanc (Javelin).
    * Metrallador.
    * Fuseller AT4.
    * Metge.
  * **ALFA 3** - Equip de tiradors en vehicle HMMWV amb metralladora - Canal 2 - Freqüència 203**
    * Franctirador.
    * Observador.

# Plantilla Bàsica per Missions (PBM)
 
**Autor**: CC_Magnetar.

**Contribuïdors**: CC_Viper (Plantilles d'imatges).

**Versió**: 0.3.0.

**Darrera modificació**: 2015/07/22.

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