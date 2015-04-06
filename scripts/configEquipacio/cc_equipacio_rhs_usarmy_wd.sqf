//=======================================================================================================//
// Arxiu: cc_equipacio_rhs_usarmy_wd.sqf                                                                 //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 02/04/2015                                                                      //
// Descripció: Aquest document serveix per equipar els jugadors amb l'equipació dissenyada per la missió //
//             sense fer servir els perfils estàndard del grup dels Cavallers del Cel. Requereix que el  //
//             jugador formi part de la facció RHS: United States Army "rhs_faction_usarmy_wd"           //
//             (http://doc.rhsmods.org/index.php/United_States_Army). Cal afegir la següent línia al     //
//             INIT de la unitat en l'editor:                                                            //
//                                                                                                       //
//                  ["ROL_JUGADOR",this] call cc_fnc_configEquipacio;                                    //
//                                                                                                       //
//             on "ROL_JUGADOR" és una de les següents entrades:                                         //
//                                                                                                       //
//                  ROL_JUGADOR         Rol assignat                                                     //
//                  lideresquadra       Líder d'esquadra                                                 //
//                  liderequip          Líder d'equip                                                    //
//                  fuseller            Fuseller                                                         //
//                  granader            Granader                                                         //
//                  fusellerautomatic   Fuseller automàtic                                               //
//                  metrallador         Metrallador                                                      //
//                  antitanc            Antitanc                                                         //
//                  tirador             Tirador                                                          //
//                  metge               Metge                                                            //
//                  explosius           Explosius                                                        //
//                  franctirador        Franctirador                                                     //
//=======================================================================================================//

_tipusUnitat = toLower (_this select 0);
_unitat = _this select 1;
_esInfanteria = _unitat isKindOf "CAManBase"; 


// Treure tota l'equipació que porta la unitat en el cas que sigui infanteria
if (_esInfanteria) then {
	removeAllWeapons _unitat;
	removeAllAssignedItems _unitat;
	clearAllItemsFromBackpack _unitat;
	removeAllContainers _unitat;
	removeHeadgear _unitat;
};

// Elements comuns
_uniforme = "rhs_uniform_cu_ocp_patchless";
_armillaSQLider = "rhsusf_iotv_ocp_squadleader";
_armilla = "rhsusf_iotv_ocp_rifleman";
_armillaGR = "rhsusf_iotv_ocp_rifleman";
_casc = "rhsusf_ach_helmet_headset_ocp";
_motxilla = "rhsusf_assault_eagleaiii_ocp";

_arma = "rhs_weap_m4a1";
_arma320 = "rhs_weap_m4a1_m320";
_armaSilenciador = "rhsusf_acc_rotex5_grey";
_armaSurefire = "rhsusf_acc_SF3P556";
_armaLaserLlanterna = "rhsusf_acc_anpeq15";
_armaMira = "rhsusf_acc_ACOG";

_pistola = "hgun_P07_F";

_gps = "ItemGPS";
_rellotge = "ItemWatch";
_mapa = "ItemMap";
_brujola = "ItemCompass";
_radio = "ItemRadio";
_terminalUAV = "B_UavTerminal";

// Configurar l'equip per cada unitat
switch (_tipusUnitat) do
{
	// Cap de secció (Platoon leader)
	case "pl":
	{
		// Uniforme, casc, armilla i motxila
		_unitat addUniform _uniforme;
		_unitat addHeadgear _casc;
		_unitat addVest _armillaSQLider;
		_unitat addBackpack _motxilla;
		
		// Arma principal
		_unitat addWeapon _arma320;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Arma secundària
		_unitat addWeapon _pistola;
		
		// Objectes
		_unitat linkItem _mapa;
		_unitat linkItem _rellotge;
		_unitat linkItem _brujola;
		_unitat linkItem _gps;
		_unitat linkItem _radio;
		
		// Objectes a l'uniforme
		
		// Objectes a l'armilla
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		
		// Objectes a la motxilla
	};
	
	// Sergent (Platoon Sergeant)
	case "psg":
	{
	
	};
	
	// Radio Operador (Platoon Radiotelephone Operator)
	case "rto":
	{
	
	};
	
	// Observador avançat (Forward Observer)
	case "fo":
	{
	
	};
	
	// Metge (Platoon Medic)
	case "me":
	{
		
	};

	// Líder d'Esquadra (Squad Leader)
	case "sl":
	{
		
	};
	
	// Líder d'Equip (Team leader)
	case "tl":
	{
		
	};
	
	// Fuseller (Rifleman)
	case "rfl":
	{
		// Uniforme, casc, armilla i motxila
		_unitat addUniform _uniforme;
		_unitat addHeadgear _casc;
		_unitat addVest _armillaSQLider;
		_unitat addBackpack _motxilla;
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Arma secundària
		_unitat addWeapon _pistola;
		
		// Objectes
		_unitat linkItem _mapa;
		_unitat linkItem _rellotge;
		_unitat linkItem _brujola;
		//_unitat linkItem _gps;
		_unitat linkItem _radio;
		
	};
	
	// Granader (Grenadier)
	case "gr":
	{
		// Uniforme, casc, armilla i motxila
		_unitat addUniform _uniforme;
		_unitat addHeadgear _casc;
		_unitat addVest _armillaGR;
		_unitat addBackpack _motxilla;
		
		// Arma principal
		_unitat addWeapon _arma320;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Arma secundària
		_unitat addWeapon _pistola;
		
		// Objectes
		_unitat linkItem _mapa;
		_unitat linkItem _rellotge;
		_unitat linkItem _brujola;
		//_unitat linkItem _gps;
		_unitat linkItem _radio;
	};
	
	// Fuseller automàtic (Automatic Rifleman)
	case "ar":
	{
		
	};
	
	// Tirador designat (Designated Marksman)
	case "dm":
	{
		
	};
	
	
	// Metrallador (Machine Gunner)
	case "mg":
	{
		
	};
	
	// Assitent de metrallador (Assitant Machine Gunner)
	case "amg":
	{
	
	};
	
	// Antitanc (Antitank)
	case "at":
	{
	
		
	};
	
	// Assistent d'antitanc (Ammo handler)
	case "aat"
	{
	
	};
	
	// Anti aèri (Anti Air gunner)
	case "aa"
	{
	
	};
	
	// Assistent d'anti aèri (Anti Air Assitant)
	case "aaa"
	{
	
	};
	
	// Enginyer (Engineer)
	case "en":
	{
		
	};
	
	// Franctirador (Sniper)
	case "sn":
	{
		
	};
	
	// Observador (Spotter)
	case "ob":
	{
	
	};
};

// Insiginia de la unitat
[_unitat,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;