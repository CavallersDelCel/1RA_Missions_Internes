## scripts/zeus

En aquesta carpeta es troben els fitxers que serveixen per afegir al Zeus les unitats que s'han posat mitjan�ant l'editor,
els jugadors i les unitats posades durant la partida per altres Zeus. Consta de quatre fitxers, que no s�n necess�ris que
es modifiquin per la missi�:

* `cc_zeus_init.sqf`: s'executa nom�s en el servidor i afegeix al Zeus totes les unitats afegides al mapa mitjan�ant l'editor,
  aix� com els objectes i els vehicles amb la seva tripulaci�. S'executa des del fitxer `init.sqf`.
* `fn_zeus_eventHandlers.sqf`: s'executa durant la fase de `PostInit` i crea un "EventHandler" que s'executa cada cop que un dels
  Zeus a la partida posa un objecte (`fn_zeus_afegirObjectes.sqf`) o un grup amb unitats (`fn_zeus_afegirGrups.sqf`).
  * `fn_zeus_afegirObjectes.sqf`: Afegeix un objecte, col�locat mitjan�ant el Zeus, com a objecte editable als altres Zeus.
  * `fn_zeus_afegirGrups.sqf`: Afegeix un grup, amb la tripulaci� en cas de que sigui un vehicle, que s'hagi col�locat mitjan�ant
    el Zeus a la resta de Zeus.