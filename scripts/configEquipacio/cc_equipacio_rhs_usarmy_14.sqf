//=======================================================================================================//
// Arxiu: cc_equipacio_rhs_usarmy_14.sqf                                                                 //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 02/04/2015                                                                      //
// Descripció: Aquest document serveix per equipar els jugadors amb l'equipació dissenyada per la missió //
//             sense fer servir els perfils estàndard del grup dels Cavallers del Cel. Requereix que el  //
//             jugador formi part de la facció RHS: United States Army "rhs_faction_usarmy_14"           //
//             (http://doc.rhsmods.org/index.php/United_States_Army). Cal afegir la següent línia al     //
//             INIT de la unitat en l'editor:                                                            //
//                                                                                                       //
//                  ["ROL_JUGADOR",this] call cc_fnc_configEquipacio;                                    //
//                                                                                                       //
//             on "ROL_JUGADOR" és una de les següents entrades:                                         //
//                                                                                                       //
//                  ROL_JUGADOR         Rol assignat                                                     //
//                  pl                  Cap de secció (Platoon Leader)                                   //
//                  psg                 Sergent (Platoon Sergeant)                                       //
//                  rto                 Operador de Radio (Platoon Radiotelephone Operator)              //
//                  fo                  Observador avançat (Forward Observer)                            //
//                  me                  Metge (Platoon Medic)                                            //
//                  sl                  Líder d'esquadra (Squad Leader)                                  //
//                  tl                  Líder d'equip (Team Leader)                                      //
//                  rfl                 Fuseller (Rifleman)                                              //
//                  rflat               Fusellser amb AT4 (Rifleman with AT4)                            //
//                  gr                  Granader (Grenadier)                                             //
//                  ar                  Fuseller automàtic (Automàtic Rifleman)                          //
//                  dm                  Tirador designat (Designated Marksman)                           //
//                  mg                  Metrallador (Machine Gunner)                                     //
//                  amg                 Assitent de metrallador (Assitant Machine Gunner)                //
//                  at                  Antitanc (Antitank)                                              //
//                  aat                 Assistent d'antitanc (AT Ammo handler)                           //
//                  aa                  Anti aèri (Anti Air gunner)                                      //
//                  aaa                 Assistent d'anti aèri (Anti Air Assitant)                        //
//                  en                  Enginyer (Engineer)                                              //
//                  sn                  Franctirador (Sniper)                                            //
//                  sp                  Observador (Spotter)                                             //
//                  div                 Bussejador (Diver)                                               //
//                                                                                                       //
// Canvis: 0.1 (2015/04/02) Versió inicial.                                                              //
//         0.2 (2015/04/26) Canviat el nom del fitxer i dels uniformes (RHS v0.3.7).                     //
//=======================================================================================================//

_tipusUnitat = toLower (_this select 0);
_unitat = _this select 1;
_esInfanteria = _unitat isKindOf "CAManBase"; 

//=======================================================================================================//
// Resum d'equipació: Armes, accessoris, ulleres, armilles, ...                                          //
//=======================================================================================================//

// Uniformes
_uniforme = "rhs_uniform_cu_ocp";
_uniformeSN = "U_B_GhillieSuit";
_uniformeDIV = "U_B_Wetsuit";

// Armilles
_armillaSQ = "rhsusf_iotv_ocp_squadleader";
_armillaTL = "rhsusf_iotv_ocp_teamleader";
_armillaRFL = "rhsusf_iotv_ocp_rifleman";
_armillaGR = "rhsusf_iotv_ocp_grenadier";
_armillaME = "rhsusf_iotv_ocp_medic";
_armillaSAW = "rhsusf_iotv_ocp_SAW";
_armillaDIV = "V_RebreatherB";

// Cascs
_casc = "rhsusf_ach_helmet_headset_ocp";
_cascSN = "rhs_Booniehat_ocp";

// Ulleres
_ulleres = "G_Tactical_Clear";
_ulleresDIV = "G_Diving";

// Motxilla
_motxilla = "rhsusf_assault_eagleaiii_ocp";

// Armes principals
_arma = "rhs_weap_m4a1";
_arma320 = "rhs_weap_m4a1_m320";
_armaAR = "rhs_weap_m249_pip";
_armaMG = "rhs_weap_m240B";
_armaDM = "rhs_weap_m14ebrri";
_armaSN = "rhs_weap_XM2010_sa";
_armaDIV = "arifle_SDAR_F";

// Silenciadors
_armaSilenciador = "rhsusf_acc_rotex5_grey";
_armaSurefire = "rhsusf_acc_SF3P556";

// Accessoris
_armaLaserLlanterna = "rhsusf_acc_anpeq15";
_armaLaserLlanternaAR = "rhsusf_acc_anpeq15A";
_armaLaserLlanternaSN = "rhsusf_acc_anpeq15side";

// Mires
_armaMira = "rhsusf_acc_ACOG";
_armaMiraAR = "rhsusf_acc_ELCAN";
_armaMiraDM = "rhsusf_acc_LEUPOLDMK4";
_armaMiraSN = "rhsusf_acc_LEUPOLDMK4_2";

// Bípodes
_armabipodeDM = "rhsusf_acc_harris_bipod";
_armabipodeSN = "rhsusf_acc_harris_bipod";

// Llençadores AT/AA
_armaLlencadorRF = "rhs_weap_M136_hedp";
_armaLlencadorAT = "rhs_weap_fgm148";
_armaLlencadorAA = "rhs_weap_fim92";

// Pistoles
_pistola = "rhsusf_weap_m1911a1";

// Objectes
_gps = "ItemGPS";
_rellotge = "ItemWatch";
_mapa = "ItemMap";
_brujola = "ItemCompass";
_radio = "ItemRadio";
_terminalUAV = "B_UavTerminal";

// Prismàtics
_prismatic = "lerca_1200_tan";

// Visió nocturna
_visioNocturna = "rhsusf_ANPVS_14";

// Objectes depenents de AGM
_taps = "AGM_EarBuds";
_morfina = "AGM_Morphine";
_epinefrina = "AGM_Epipen";
_benes = "AGM_Bandage";
_bossaSang = "AGM_Bloodbag";
_cintaDentencio = "AGM_CableTie";
_vectorIV = "AGM_Vector";
_einesMapa = "AGM_MapToos";
_kestrel = "AGM_ItemKestrel";
_clacker = "AGM_Clacker";
_kitDesactivacio = "AGM_DefusalKit";

// Treure tota l'equipació que porta la unitat en el cas que sigui infanteria
if (_esInfanteria) then {
	removeAllWeapons _unitat;
	removeAllAssignedItems _unitat;
	clearAllItemsFromBackpack _unitat;
	removeAllContainers _unitat;
	removeHeadgear _unitat;
	
	// Uniforme, casc i ulleres
	_unitat forceaddUniform _uniforme;
	_unitat addHeadgear _casc;
	_unitat addGoggles _ulleres;
	
	// Arma secundària
	_unitat addWeapon _pistola;
	
	// Afegir objectes comuns
	_unitat linkItem _mapa;
	_unitat linkItem _rellotge;
	_unitat linkItem _brujola;
	//_unitat linkItem _gps;
	_unitat linkItem _radio;
};

// Configurar l'equip per cada unitat
switch (_tipusUnitat) do
{
	// Cap de secció (Platoon Leader)
	case "pl":
	{
		// Armilla i motxilla
		_unitat addVest _armillaSQ;
		_unitat addBackpack _motxilla;
		
		// Arma principal
		_unitat addWeapon _arma320;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;

		// Objectes
		_unitat linkItem _gps;
		
		// Objectes a l'uniforme
		
		// Objectes a l'armilla
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		
		// Objectes a la motxilla
		
		// Assignar rang
		_unitat setRank "LIEUTENANT";
	};
	
	// Sergent (Platoon Sergeant)
	case "psg":
	{
		// Armilla i motxilla
		_unitat addVest _armillaSQ;
		_unitat addBackpack _motxilla;
		
		// Arma principal
		_unitat addWeapon _arma320;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Assignar rang
		_unitat setRank "SERGEANT";
	};
	
	// Operador de Radio (Platoon Radiotelephone Operator)
	case "rto":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Assignar rang
		_unitat setRank "PRIVATE";
	};
	
	// Observador avançat (Forward Observer)
	case "fo":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Objectes
		_unitat linkItem _terminalUAV;
		
		// Assignar rang
		_unitat setRank "PRIVATE";
	};
	
	// Metge (Platoon Medic)
	case "me":
	{
		// Armilla i motxilla
		_unitat addVest _armillaME;
		_unitat addBackpack _motxilla;
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Assignar rang
		_unitat setRank "PRIVATE";
	};

	// Líder d'Esquadra (Squad Leader)
	case "sl":
	{
		// Armilla i motxilla
		_unitat addVest _armillaSQ;
		_unitat addBackpack _motxilla;
		
		// Arma principal
		_unitat addWeapon _arma320;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Assignar rang
		_unitat setRank "SERGEANT";
	};
	
	// Líder d'Equip (Team leader)
	case "tl":
	{
		// Armilla i motxilla
		_unitat addVest _armillaTL;
		_unitat addBackpack _motxilla;
		
		// Arma principal
		_unitat addWeapon _arma320;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Assignar rang
		_unitat setRank "CORPORAL";
	};
	
	// Fuseller (Rifleman)
	case "rfl":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;

		// Assignar rang
		_unitat setRank "PRIVATE";
	};
	
	// Fusellser amb AT4 (Rifleman with AT4)
	case "rflat":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Llençador AT4
		_unitat addWeapon _armaLlencadorAT4;
		
		// Assignar rang
		_unitat setRank "PRIVATE";
	};
	
	// Granader (Grenadier)
	case "gr":
	{
		// Armilla i motxilla
		_unitat addVest _armillaGR;
		_unitat addBackpack _motxilla;
		
		// Arma principal
		_unitat addWeapon _arma320;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Assignar rang
		_unitat setRank "PRIVATE";
	};
	
	// Fuseller automàtic (Automatic Rifleman)
	case "ar":
	{
		// Armilla i motxilla
		_unitat addVest _armillaSAW;
		_unitat addBackpack _motxilla;
		
		// Arma principal
		_unitat addWeapon _armaAR;
		_unitat addPrimaryWeaponItem _armaLaserLlanternaAR;
		_unitat addPrimaryWeaponItem _armaMiraAR;
		
		// Assignar rang
		_unitat setRank "PRIVATE";
	};
	
	// Tirador designat (Designated Marksman)
	case "dm":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Arma principal
		// Missing muzzle attachment
		_unitat addWeapon _armaDM;
		_unitat addPrimaryWeaponItem _armaLaserLlanternaSN;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Assignar rang
		_unitat setRank "PRIVATE";
	};
	
	
	// Metrallador (Machine Gunner)
	case "mg":
	{
		(uniformContainer _unitat) addItemCargoGlobal [_taps,1];
		(uniformContainer _unitat) addItemCargoGlobal [_cintaDetencio,1];
		(uniformContainer _unitat) addItemCargoGlobal [_einesMapa,1];
		(uniformContainer _unitat) addItemCargoGlobal [_epinefrina,1];
		(uniformContainer _unitat) addItemCargoGlobal [_morfina,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",3];
		
		// Armilla i motxilla
		_unitat addVest _armillaSAW;
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addItemCargoGlobal [_morfina,1];
		(vestContainer _unitat) addItemCargoGlobal [_epinefrina,1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",3];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",3];
		
		_unitat addBackpack _motxilla;
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addItemCargoGlobal [_benes,4];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",3];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",1];
		
		// Arma principal
		_unitat addWeapon _armaMG;
		_unitat addPrimaryWeaponItem _armaMiraAR;
		_unitat addWeapon _prismatic;
		
		// Assignar rang
		_unitat setRank "PRIVATE";
	};
	
	// Assitent de metrallador (Assitant Machine Gunner)
	case "amg":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Assignar rang
		_unitat setRank "PRIVATE";
	};
	
	// Antitanc (Antitank)
	case "at":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Javelin
		_unitat addWeapon _armaLlencadorAT;
		
		// Assignar rang
		_unitat setRank "PRIVATE";
	};
	
	// Assistent d'antitanc (AT Ammo handler)
	case "aat":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Assignar rang
		_unitat setRank "PRIVATE";
	};
	
	// Anti aèri (Anti Air gunner)
	case "aa":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Stinger
		_unitat addWeapon _armaLlencadorAA;
		
		// Assignar rang
		_unitat setRank "PRIVATE";
	};
	
	// Assistent d'anti aèri (Anti Air Assitant)
	case "aaa":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Assignar rang
		_unitat setRank "PRIVATE";
	};
	
	// Enginyer (Engineer)
	case "en":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Assignar rang
		_unitat setRank "PRIVATE";
	};
	
	// Franctirador (Sniper)
	case "sn":
	{
		// Uniforme i armilla
		removeUniform _unitat;
		_unitat forceAddUniform _uniformeSN;
		_unitat addVest _armillaRFL;
		
		// Arma principal
		_unitat addWeapon _armaSN;
		_unitat addPrimaryWeaponItem _armaLaserLlanternaSN;
		_unitat addPrimaryWeaponItem _armaMiraSN;

		// Assignar rang
		_unitat setRank "PRIVATE";
	};
	
	// Observador (Spotter)
	case "sp":
	{
		// Uniforme i armilla
		removeUniform _unitat;
		_unitat forceAddUniform _uniformeSN;
		_unitat addVest _armillaRFL;
		
		_unitat addWeapon _arma320;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Vector IV
		
		// Objectes
		_unitat linkItem _gps;
		
		// Assignar rang
		_unitat setRank "PRIVATE";
	};
	
	// Bussejador (Diver)
	case "div":
	{
		// Uniforme i armilla
		removeUniform _unitat;
		removeHeadgear _unitat;
		removeGoggles _unitat;
		
		_unitat forceAddUniform _uniformeDIV;
		_unitat addVest _armillaDIV;
		_unitat addGoggles _ulleresDIV;
		
		// Arma principal
		_unitat addWeapon _armaDIV;
		
		// Assignar rang
		_unitat setRank "PRIVATE";
	};
};

// Insiginia de la unitat
[_unitat,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

//============================================ FI DEL FITXER ============================================//