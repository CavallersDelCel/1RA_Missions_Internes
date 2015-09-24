## scripts/ace3

Aquesta carpeta conté el fitxer de configuració de l'ACE 3 (www.ace3mod.com): `fn_ace3_config.sqf`. Aquesta funció s'executa durant la fase de PostInit i s'encarrega de configurar tots aquells paràmetres de l'ACE3. D'aquesta manera, no cal afegir cap
mòdul específic del ACE3 a l'editor, cosa que evita dependències a la missió.

El creador de la missió és totalment lliure de modificar al seu gust els paràmetres de ACE3 que cregui convenient a excepció d'aquells que afectin la forma de jugar com ara:

* Sistema de balística: Cal deixar-ho en balística avançada.
* Sistema mèdic: Cal deixar-ho en sistema mèdic avançat.