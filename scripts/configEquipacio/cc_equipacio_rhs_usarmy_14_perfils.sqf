//=======================================================================================================//
// Arxiu: cc_equipacio_rhs_usarmy_14_perfils.sqf                                                         //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 02/04/2015                                                                      //
// Descripció: Aquest document serveix per equipar els jugadors amb els perfils estàndard del grup dels  //
//             Cavallers del Cel. Es requereixen els següents mods per funcionar correctament:           //                                                    //
//                  - RHS United States Armed Forces (RHS USAF).                                         //
//                  - Task Force Arrowhead Radio (TFAR).                                                 //
//                  - Authentic Gameplay Modification (AGM).                                             //
//                                                                                                       //
//             Cal afegir la següent línia al INIT de la unitat en l'editor:                             //
//                                                                                                       //
//                  ["ROL_JUGADOR",this] call cc_fnc_configEquipacio;                                    //
//                                                                                                       //
//             on "ROL_JUGADOR" és una de les següents entrades:                                         //
//                                                                                                       //
//                  ROL_JUGADOR         PERFIL associat                                                  //
//                  sl                  CC - Lider d'esquadra M4A1+M320 OCP                              //
//                  tl                  CC - Lider d'equip M4A1+M320 OCP                                 //
//                  rfl                 CC - Fuseller M4A1 OCP                                           //
//                  rflat               CC - AT M4A1+AT4 OCP                                             //
//                  gr                  CC - Granader M4A1+M320 OCP                                      //
//                  ar                  CC - FA M249 OCP                                                 //
//                  mg                  CC - Metrallador M240B OCP                                       //
//                  at                  CC - AT M4A1 + Javelin OCP                                       //
//                  dm                  CC - Tirador SR-25EC OCP                                         //
//                  me                  CC - Metge M4A1 OCP                                              //
//                  en                  CC - Explosius M4A1 OCP                                          //
//                  sn                  CC - Franctirador M2010ESR OCP                                   //
//                                                                                                       //
// Canvis: 0.1 (2015/04/02) Versió inicial.                                                              //
//         0.2 (2015/04/26) Canviat el nom del fitxer i afegit el perfil del Javelin                     //
//=======================================================================================================//

_tipusUnitat = toLower (_this select 0);
_unitat = _this select 1;

// Configurar l'equip per cada unitat
switch (_tipusUnitat) do
{
	// Líder d'Esquadra (Squad Leader)
	case "sl":
	{
		_loadout = [_unitat,[profileNamespace,"CC - Lider d'esquadra M4A1+M320 OCP"]] call BIS_fnc_loadInventory;
	};
	
	// Líder d'Equip (Team Leader)
	case "tl":
	{
		_loadout = [_unitat,[profileNamespace,"CC - Lider d'equip M4A1+M320 OCP"]] call BIS_fnc_loadInventory;
	};
	
	// Fuseller (Rifleman)
	case "rfl":
	{
		_loadout = [_unitat,[profileNamespace,"CC - Fuseller M4A1 OCP"]] call BIS_fnc_loadInventory;
	};
	
	// Fuseller AT4 (Rifleman AT4)
	case "rflat":
	{
		_loadout = [_unitat,[profileNamespace,"CC - AT M4A1+AT4 OCP"]] call BIS_fnc_loadInventory;
	};
	
	// Granader (Grenadier)
	case "gr":
	{
		_loadout = [_unitat,[profileNamespace,"CC - Granader M4A1+M320 OCP"]] call BIS_fnc_loadInventory;
	};
	
	// Fuseller automàtic (Automatic Rifleman)
	case "ar":
	{
		_loadout = [_unitat,[profileNamespace,"CC - FA M249 OCP"]] call BIS_fnc_loadInventory;
	};
	
	// Metrallador (Machine Gunner)
	case "mg":
	{
		_loadout = [_unitat,[profileNamespace,"CC - Metrallador M240B OC"]] call BIS_fnc_loadInventory;
	};
	
	// Antitanc (Antitank)
	case "at":
	{
		_loadout = [_unitat,[profileNamespace,"CC - AT M4A1 + Javelin OCP"]] call BIS_fnc_loadInventory;
	};
	
	// Tirador designat (Designated Marksman)
	case "dm":
	{
		_loadout = [_unitat,[profileNamespace,"CC - Tirador SR-25EC OCP"]] call BIS_fnc_loadInventory;
	};
	
	// Metge (Platoon Medic)
	case "me":
	{
		_loadout = [_unitat,[profileNamespace,"CC - Metge M4A1 OCP"]] call BIS_fnc_loadInventory;
	};
	
	// Enginyer (Engineer)
	case "en":
	{
		_loadout = [_unitat,[profileNamespace,"CC - Explosius M4A1 OCP"]] call BIS_fnc_loadInventory;
	};
	
	// Franctirador (Sniper)
	case "sn":
	{
		_loadout = [_unitat,[profileNamespace,"CC - Franctirador M2010ESR OCP"]] call BIS_fnc_loadInventory;
	};
};

//============================================ FI DEL FITXER ============================================//