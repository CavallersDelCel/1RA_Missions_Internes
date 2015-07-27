## scripts/comu

En aquesta carpeta es troben els seg�ents fitxers, que serveixen per configurar variables comunes a la resta dels scripts i funcions de la plantilla a excepci�
d'addons externs:

* *`cc_variables_comunes.sqf`*: �s l'�nic fitxer que pot ser d'inter�s per el creador de la missi�. En aquest fitxer es defineixen les variables `cc_var_grups1RA`
  i `cc_var_frequencies1RA`. Aquestes variables s�n importants a l'hora de configurar, si es vol, els canals i les freq��ncies de les r�dios del Task Force
  Arrowhead Radio (TFAR) o del Advanced Combat Radio Environment 2 (ACRE2). �s important que aquestes dues variables tinguin la mateixa mida.
* *`fn_processarMods`*: Aquest fitxer no s'hauria de modificar a menys que es vulgui afegir un mod que es vulgui detectar de forma autom�tica per despr�s
  configurar-lo mitjan�ant scripts. S'executa durant la fase de `PostInit`. Actualment els seg�ents mods estan suportats:
  * Advanced Combat Environment 3 (ACE 3). A l'est�ndard.
  * Advanced Combat Radio Enviroment 2 (ACRE2). 
  * Advanced Gameplay Modification (AGM). Obsolet.
  * Task Force Arrowhead Radio (TFAR). A l'est�ndard.
* *`fn_processarParamsArray`*: Aquest fitxer, que s'executa durant la fase de `PreInit`, no s'ha de modificar ja que processa els diferents par�metres de la missi�
  (`class Params` al fitxer `description.ext`) per tal de que les variables definides siguin accessibles a tots els clients i siguin compatibles amb l'�s de
  servidors dedicats.