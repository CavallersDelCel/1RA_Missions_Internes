//=======================================================================================================//
// Arxiu: cc_equipacio_rhs_vdv.sqf                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.3                                                                                           //
// Creació del Document: 2015/04/02                                                                      //
// Descripció: Aquest document serveix per equipar els jugadors amb l'equipació dissenyada per la missió //
//             sense fer servir els perfils estàndard del grup dels Cavallers del Cel. Requereix que el  //
//             jugador formi part de la facció RHS: Russian Airborne Troops (Vozdushno-desantnye voyska) //
//             http://class.rhsmods.org/rhsafrf/CfgFactionClasses_rhs_faction_vdv.html                   //
//             Cal afegir la següent línia al INIT de la unitat en l'editor:                             //
//                                                                                                       //
//                  ["ROL_JUGADOR",this] call cc_fnc_configEquipacio;                                    //
//                                                                                                       //
//             o bé:                                                                                     //
//                                                                                                       //
//                  ["ROL_JUGADOR",this,"FACCIO"] call cc_fnc_configEquipacio;                           //
//                                                                                                       //
//             per forçar una facció específica a la unitat.                                             //
//                                                                                                       //
//             on "ROL_JUGADOR" és una de les següents entrades:                                         //
//                                                                                                       //
//                  ROL_JUGADOR             Rol assignat                                                 //
//                  pl                      Cap de secció (Platoon Leader)                               //
//                  psg                     Sergent (Platoon Sergeant)                                   //
//                  rto                     Operador de Radio (Platoon Radiotelephone Operator)          //
//                  fo                      Observador avançat (Forward Observer)                        //
//                  me                      Metge (Platoon Medic)                                        //
//                  sl                      Líder d'esquadra (Squad Leader)                              //
//                  tl                      Líder d'equip (Team Leader)                                  //
//                  rfl                     Fuseller (Rifleman)                                          //
//                  rflat                   Fusellser amb AT4 (Rifleman with AT4)                        //
//                  gr                      Granader (Grenadier)                                         //
//                  ar                      Fuseller automàtic (Automàtic Rifleman)                      //
//                  dm                      Tirador designat (Designated Marksman)                       //
//                  mg                      Metrallador (Machine Gunner)                                 //
//                  amg                     Assitent de metrallador (Assitant Machine Gunner)            //
//                  at                      Antitanc (Antitank)                                          //
//                  aat                     Assistent d'antitanc (AT Ammo handler)                       //
//                  aa                      Anti aèri (Anti Air gunner)                                  //
//                  aaa                     Assistent d'anti aèri (Anti Air Assitant)                    //
//                  en                      Enginyer (Engineer)                                          //
//                  exp                     Explosius (Explosives)                                       //
//                  sn                      Franctirador (Sniper)                                        //
//                  sp                      Observador (Spotter)                                         //
//                  divsl                   Bussejador líder d'esquadra (Diver Squad Leader)             //
//                  divme                   Bussejador metge (Diver Medic)                               //
//                  div                     Bussejador (Diver)                                           //
//                                                                                                       //
//                  hmmwv                   Equipació per HMMWVs                                         //
//                                                                                                       //
//             i "FACCIO" una de les següents entrades:                                                  //
//                                                                                                       //
//                  FACCIO                  Facció forçada de la unitat en termes d'equipació            //
//                  blu_f                   Blue Force                                                   //
//                  blu_g_f                 FIA                                                          //
//                  ind_g_f                 FIA                                                          //
//                  opf_g_f                 FIA                                                          //
//                  opf_f                   Opposing Force                                               //
//                  ind_f                   Independent Force                                            //
//                  civ_f                   Facció civil                                                 //
//                  rhs_faction_usarmy_wd   United States Army (Woodland)                                //
//                  rhs_faction_usarmy_d    United States Army (Desert)                                  //
//                  rhs_faction_usmc_wd     United States Marine Corps (Woodland)                        //
//                  rhs_faction_usmc_d      United States Marine Corps (Desert)                          //
//                  rhs_faction_insurgents  Insurgents                                                   //
//                  rhs_faction_vpvo        Soviet Air Defense Troops (Voyska protivovozdushnoy oborony) //
//                  rhs_faction_vdv         Russian Airborne Troops (Vozdushno-desantnye voyska)         //
//                                                                                                       //
// Canvis: 0.1 (2015/04/02) Versió inicial.                                                              //
//         0.2 (2015/06/18) Afegit el rol d'explosius (exp). En cas de que ni AGM ni ACE3 estiguin       //
//                          carregats el script no falla.                                                //
//         0.3 (2015/06/19) Afegida l'explicació pel tercer paràmetre (opcional).                        //
//=======================================================================================================//

//=======================================================================================================//
// Declaració de variables                                                                               //
//=======================================================================================================//

private["_bateriaUAV", "_cintaDentencio", "_einesMapa", "_microDAGR", "_taps", "_vectorIV", "_atragmx", "_kestrel", "_clacker", "_clackerm26", "_kitDesactivacio", "_telefon"];
private["_atropina", "_epinefrina", "_morfina", "_benes", "_benesElastiques", "_benesRapides", "_benesEmpaquetants"];
private["_bossaSang250", "_bossaSang500", "_bossaSang1000", "_bossaPlasma250", "_bossaPlasma500", "_bossPlasma1000", "_bossaSalina250", "_bossaSalina500", "_bossaSalina1000"];
private["_kitPrimersAuxilis", "_kitQuirurgic", "_torniquet"];
private["_aprincipal"];

//=======================================================================================================//
// Obtenir el tipus d'unitat i si és un soldat d'infanteria                                              //
//=======================================================================================================//

_tipusUnitat = toLower (_this select 0);
_unitat = _this select 1;
_esInfanteria = _unitat isKindOf "CAManBase"; 

//=======================================================================================================//
// Resum d'equipació: Armes, accessoris, ulleres, armilles, ...                                          //
//=======================================================================================================//

// Uniformes
_uniforme = "rhs_uniform_cu_ucp";
_uniformeSN = "U_B_GhillieSuit";
_uniformeDIV = "U_B_Wetsuit";

// Armilles
_armillaSQ = "rhsusf_iotv_ucp_squadleader";
_armillaTL = "rhsusf_iotv_ucp_teamleader";
_armillaRFL = "rhsusf_iotv_ucp_rifleman";
_armillaGR = "rhsusf_iotv_ucp_grenadier";
_armillaME = "rhsusf_iotv_ucp_medic";
_armillaSAW = "rhsusf_iotv_ucp_SAW";
_armillaDIV = "V_RebreatherB";

// Cascs
_casc = "rhsusf_ach_helmet_headset_ucp";
_cascSN = "rhs_Booniehat_ucp";

// Ulleres
_ulleres = "G_Tactical_Clear";
_ulleresDIV = "G_Diving";

// Motxilla
_motxilla = "rhsusf_assault_eagleaiii_ucp";
_motxillaDIV = "B_AssaultPack_blk";

// Armes principals
_arma = "rhs_weap_m4a1";
_arma320 = "rhs_weap_m4a1_m320";
_armaAR = "rhs_weap_m249_pip_S";
_armaMG = "rhs_weap_m240B_CAP";
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

if (cc_mod_ace3) then {
	//===================================================================================================//
	// Objectes depenents de ACE 3                                                                       //
	//===================================================================================================//

	// General
	_bateriaUAV = "ACE_UAVBattery";
	_cintaDentencio = "ACE_CableTie";
	_einesMapa = "ACE_MapTools";
	_microDAGR = "ACE_microDAGR";
	_taps = "ACE_EarPlugs";
	_vectorIV = "ACE_Vector";

	// Objectes per tirador designat/franctirador/observador
	_atragmx = "ACE_ATragMX";
	_kestrel = "ACE_Kestrel4500";

	// Objectes relacionats amb explosius
	_clacker = "ACE_Clacker";
	_clackerm26 = "ACE_M26_Clacker";
	_kitDesactivacio = "ACE_DefusalKit";
	_telefon = "ACE_Cellphone";

	// Objectes mèdics: Droques
	_atropina = "ACE_atropine";
	_epinefrina = "ACE_epinephrine";
	_morfina = "ACE_morphine";

	// Objectes mèdics: Benes
	_benes = "ACE_fieldDressing";
	_benesElastiques = "ACE_elasticBandage";
	_benesRapides = "ACE_quikclot";
	_benesEmpaquetants = "ACE_packingBandage";

	// Objectes mèdics: bosses
	_bossaSang250 = "ACE_bloodIV_250";
	_bossaSang500 = "ACE_bloodIV_250";
	_bossaSang1000 = "ACE_bloodIV_250";
	_bossaPlasma250 = "ACE_plasmaIV_250";
	_bossaPlasma500 = "ACE_plasmaIV_500";
	_bossPlasma1000 = "ACE_plasmaIV";
	_bossaSalina250 = "ACE_salineIV_250";
	_bossaSalina500 = "ACE_salineIV_500";
	_bossaSalina1000 = "ACE_salineIV_1000";

	// Objectes mèdics: Kits
	_kitPrimersAuxilis = "ACE_personalAidKit";
	_kitQuirurgic = "ACE_surgicalKit";

	// Objectes mèdics: Torniquets
	_torniquet = "ACE_tourniquet";
};

if (cc_mod_agm) then {

	//===================================================================================================//
	// Objectes depenents de AGM                                                                         //
	//===================================================================================================//
	_taps = "AGM_EarBuds";
	_morfina = "AGM_Morphine";
	_epinefrina = "AGM_Epipen";
	_benes = "AGM_Bandage";
	_bossaSang500 = "AGM_Bloodbag";
	_cintaDentencio = "AGM_CableTie";
	_vectorIV = "AGM_Vector";
	_einesMapa = "AGM_MapTools";
	_kestrel = "AGM_ItemKestrel";
	_clacker = "AGM_Clacker";
	_kitDesactivacio = "AGM_DefusalKit";
};


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
	
	if (cc_mod_ace3 or cc_mod_agm) then {
		(uniformContainer _unitat) addItemCargoGlobal [_taps,1];
		(uniformContainer _unitat) addItemCargoGlobal [_morfina,1];
		(uniformContainer _unitat) addItemCargoGlobal [_epinefrina,1];
	};
	(uniformContainer _unitat) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];
	
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
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
			(vestContainer _unitat) addItemCargoGlobal [_einesMapa,1];
			if (cc_mod_ace3) then {
				(vestContainer _unitat) addItemCargoGlobal [_microDAGR,1];
			};
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",2];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",2];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_m714_White",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		
		// Arma principal
		_unitat addWeapon _arma320;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;

		// Objectes
		//_unitat linkItem _gps;
		
		// Binocles
		_unitat addWeapon _vectorIV;
	};
	
	// Sergent (Platoon Sergeant)
	case "psg":
	{
		// Armilla i motxilla
		_unitat addVest _armillaSQ;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
			(vestContainer _unitat) addItemCargoGlobal [_einesMapa,1];
			if (cc_mod_ace3) then {
				(vestContainer _unitat) addItemCargoGlobal [_microDAGR,1];
			};
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",2];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",2];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_m714_White",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		
		// Arma principal
		_unitat addWeapon _arma320;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;

		// Binocles
		_unitat addWeapon _vectorIV;
	};
	
	// Operador de Radio (Platoon Radiotelephone Operator)
	case "rto":
	{
		// Armilla i motxilla
		_unitat addVest _armillaSQ;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
			(vestContainer _unitat) addItemCargoGlobal [_einesMapa,1];
			if (cc_mod_ace3) then {
				(vestContainer _unitat) addItemCargoGlobal [_microDAGR,1];
			};
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",2];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",2];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_m714_White",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
	};
	
	// Observador avançat (Forward Observer)
	case "fo":
	{
		// Armilla i motxilla
		_unitat addVest _armillaSQ;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
			(vestContainer _unitat) addItemCargoGlobal [_einesMapa,1];
			if (cc_mod_ace3) then {
				(vestContainer _unitat) addItemCargoGlobal [_microDAGR,1];
			};
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",2];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",2];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_m714_White",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Objectes
		_unitat linkItem _terminalUAV;
	};
	
	// Metge (Platoon Medic)
	case "me":
	{
		// Armilla i motxilla
		_unitat addVest _armillaME;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		if (cc_mod_ace3) then{
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",3];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_morfina,8];
			(unitBackpack _unitat) addItemCargoGlobal [_epinefrina,8];	
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benes,10];
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,10];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,10];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,8];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,5];
				(unitBackpack _unitat) addItemCargoGlobal [_atropina,8];
				(unitBackpack _unitat) addItemCargoGlobal [_kitQuirurgic,2];
				(unitBackpack _unitat) addItemCargoGlobal [_kitPrimersAuxilis,2];
				(unitBackpack _unitat) addItemCargoGlobal [_bossaSalina500,6];
			};
		
			if( cc_mod_agm or (cc_mod_ace3 and cc_param_SistemaMedic == 0)) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benes,20];
				(unitBackpack _unitat) addItemCargoGlobal [_bossaSang500,2];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",2];
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
	};

	// Líder d'Esquadra (Squad Leader)
	case "sl":
	{
		// Armilla i motxilla
		_unitat addVest _armillaSQ;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
			(vestContainer _unitat) addItemCargoGlobal [_einesMapa,1];
			if (cc_mod_ace3) then {
				(vestContainer _unitat) addItemCargoGlobal [_microDAGR,1];
			};
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",2];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",2];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_m714_White",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		
		// Arma principal
		_unitat addWeapon _arma320;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;

		// Objectes
		//_unitat linkItem _gps;
		
		// Binocles
		_unitat addWeapon _vectorIV;
	};
	
	// Líder d'Equip (Team leader)
	case "tl":
	{
		// Armilla i motxilla
		_unitat addVest _armillaTL;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
			(vestContainer _unitat) addItemCargoGlobal [_einesMapa,1];
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",2];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",2];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_m714_White",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		
		// Arma principal
		_unitat addWeapon _arma320;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Binocles
		_unitat addWeapon _vectorIV;
	};
	
	// Fuseller (Rifleman)
	case "rfl":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",4];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;	
	};
	
	// Fusellser amb AT4 (Rifleman with AT4)
	case "rflat":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",4];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_m714_White",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",2];
		(unitBackpack _unitat) addItemCargoGlobal ["rhs_m136_hedp_mag",1];
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;	
		
		// Llençador AT4
		_unitat addWeapon _armaLlencadorRF;	
	};
	
	// Granader (Grenadier)
	case "gr":
	{
		// Armilla i motxilla
		_unitat addVest _armillaGR;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",4];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",6];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",4];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",6];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_m714_White",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",5];
		
		// Arma principal
		_unitat addWeapon _arma320;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
	};
	
	// Fuseller automàtic (Automatic Rifleman)
	case "ar":
	{
		// Armilla i motxilla
		_unitat addVest _armillaSAW;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",2];
		
		// Objectes a l'armilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",3];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",3];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_soft_pouch",1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
		
		// Arma principal
		_unitat addWeapon _armaAR;
		_unitat addPrimaryWeaponItem _armaLaserLlanternaAR;
		_unitat addPrimaryWeaponItem _armaMiraAR;
	};
	
	// Tirador designat (Designated Marksman)
	case "dm":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",1];
		
		// Objectes a l'armilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
			(vestContainer _unitat) addItemCargoGlobal [_kestrel,1];
			if (cc_mod_ace3) then {
				(vestContainer _unitat) addItemCargoGlobal [_atragmx,1];
			};
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",3];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",6];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",5];
		
		// Arma principal
		// Missing muzzle attachment
		_unitat addWeapon _armaDM;
		_unitat addPrimaryWeaponItem _armaLaserLlanternaSN;
		_unitat addPrimaryWeaponItem _armaMiraDM;
		_unitat addPrimaryWeaponItem _armabipodeDM;
	};
	
	
	// Metrallador (Machine Gunner)
	case "mg":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",1];
		
		// Objectes a l'armilla		
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",3];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",2];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",2];
		
		// Arma principal
		_unitat addWeapon _armaMG;
		_unitat addPrimaryWeaponItem _armaMiraAR;
	};
	
	// Assitent de metrallador (Assitant Machine Gunner)
	case "amg":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",4];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",2];
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Prismàtics
		_unitat addWeapon _prismatic;
	};
	
	// Antitanc (Antitank)
	case "at":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",4];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",1];
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Javelin
		_unitat addWeapon _armaLlencadorAT;
	};
	
	// Assistent d'antitanc (AT Ammo handler)
	case "aat":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",4];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",1];
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
	};
	
	// Anti aèri (Anti Air gunner)
	case "aa":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",4];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_fim92_mag",1];
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Stinger
		_unitat addWeapon _armaLlencadorAA;
	};
	
	// Assistent d'anti aèri (Anti Air Assitant)
	case "aaa":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",4];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_fim92_mag",1];
		
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
	};
	
	// Enginyer (Engineer)
	case "en":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		if (cc_mod_ace3 or cc_mod_agm) then{
			(uniformContainer _unitat) addItemCargoGlobal [_clacker,1];
		};
		
		// Objectes a l'armilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",4];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(vestContainer _unitat) addItemCargoGlobal [_visioNocturna,1];
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
	};
	
	// Explosius (Explosives)
	case "exp":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		if (cc_mod_ace3 or cc_mod_agm) then {
			(uniformContainer _unitat) addItemCargoGlobal [_clacker,1];
		};
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",2];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(vestContainer _unitat) addItemCargoGlobal [_visioNocturna,1];
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
	};
	
	// Franctirador (Sniper)
	case "sn":
	{
		// Uniforme i armilla
		removeUniform _unitat;
		_unitat forceAddUniform _uniformeSN;
		_unitat addVest _armillaRFL;
		
		// Casc
		removeHeadgear _unitat;
		_unitat addHeadgear _casc;
		
		// Objectes a l'uniforme
		if (cc_mod_ace3 or cc_mod_agm) then {
			(uniformContainer _unitat) addItemCargoGlobal [_taps,1];
			(uniformContainer _unitat) addItemCargoGlobal [_morfina,1];
			(uniformContainer _unitat) addItemCargoGlobal [_epinefrina,1];
		};
		(uniformContainer _unitat) addItemCargoGlobal ["rhsusf_acc_M2010S",1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010",2];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];
		
		// Objectes a l'armilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3) then {
				(vestContainer _unitat) addItemCargoGlobal [_microDAGR,1];
				(vestContainer _unitat) addItemCargoGlobal [_atragmx,1];
			};
			(vestContainer _unitat) addItemCargoGlobal [_einesMapa,1];
			(vestContainer _unitat) addItemCargoGlobal [_kestrel,1];
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010",5];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010",5];
		
		// Arma principal
		_unitat addWeapon _armaSN;
		_unitat addPrimaryWeaponItem _armaLaserLlanternaSN;
		_unitat addPrimaryWeaponItem _armaMiraSN;
	};
	
	// Observador (Spotter)
	case "sp":
	{
		// Uniforme i armilla
		removeUniform _unitat;
		_unitat forceAddUniform _uniformeSN;
		_unitat addVest _armillaRFL;
		
		// Casc
		removeHeadgear _unitat;
		_unitat addHeadgear _casc;
		
		// Objectes a l'uniforme
		if (cc_mod_ace3 or cc_mod_agm) then {
			(uniformContainer _unitat) addItemCargoGlobal [_taps,1];
			(uniformContainer _unitat) addItemCargoGlobal [_morfina,1];
			(uniformContainer _unitat) addItemCargoGlobal [_epinefrina,1];
		};
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3) then {
				(vestContainer _unitat) addItemCargoGlobal [_microDAGR,1];
				(vestContainer _unitat) addItemCargoGlobal [_atragmx,1];
			};
			(vestContainer _unitat) addItemCargoGlobal [_einesMapa,1];
			(vestContainer _unitat) addItemCargoGlobal [_kestrel,1];
		};
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Binocles
		_unitat addWeapon _vectorIV;
		
		// Objectes
		//_unitat linkItem _gps;
	};
	
	// Bussejador: Líder d'esquadra (divsl)
	case "divsl":
	{
		// Treure l'uniforme, casc i armilla
		removeUniform _unitat;
		removeHeadgear _unitat;
		removeGoggles _unitat;
		
		// Uniforme, armilla i motxilla
		_unitat forceAddUniform _uniformeDIV;
		_unitat addVest _armillaDIV;
		_unitat addBackpack _motxillaDIV;
		
		// Objectes a l'uniforme
		if (cc_mod_ace3 or cc_mod_agm) then {
			(uniformContainer _unitat) addItemCargoGlobal [_taps,1];
			(uniformContainer _unitat) addItemCargoGlobal [_morfina,1];
			(uniformContainer _unitat) addItemCargoGlobal [_epinefrina,1];
			(uniformContainer _unitat) addItemCargoGlobal [_benes,2];
		};
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",4];
		(uniformContainer _unitat) addMagazineCargoGlobal ["20Rnd_556x45_UW_mag",3];
		
		// Objectes a l'armilla
		// No es poden posar objectes a l'armilla de bussejador
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_m67",4];
		(unitBackpack _unitat) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",7];
		(unitBackpack _unitat) addMagazineCargoGlobal ["20Rnd_556x45_UW_mag",4];
		
		// Ulleres
		_unitat addGoggles _ulleresDIV;
		
		// Arma principal
		_unitat addWeapon _armaDIV;
		
		// Objectes
		_unitat linkItem _gps;
		
		// Binocles
		_unitat addWeapon _vectorIV;
	};
	
	// Bussejador metge (divme)
	case "divme":
	{
		// Treure l'uniforme, casc i armilla
		removeUniform _unitat;
		removeHeadgear _unitat;
		removeGoggles _unitat;
		
		// Uniforme, armilla i motxilla
		_unitat forceAddUniform _uniformeDIV;
		_unitat addVest _armillaDIV;
		_unitat addBackpack _motxillaDIV;
		
		// Objectes a l'uniforme
		if (cc_mod_ace3 or cc_mod_agm) then {
			(uniformContainer _unitat) addItemCargoGlobal [_taps,1];
			(uniformContainer _unitat) addItemCargoGlobal [_morfina,1];
			(uniformContainer _unitat) addItemCargoGlobal [_epinefrina,1];
			(uniformContainer _unitat) addItemCargoGlobal [_benes,2];
		};
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",4];
		(uniformContainer _unitat) addMagazineCargoGlobal ["20Rnd_556x45_UW_mag",3];
		
		// Objectes a l'armilla
		// No es poden posar objectes a l'armilla de bussejador
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_morfina,8];
			(unitBackpack _unitat) addItemCargoGlobal [_epinefrina,8];	
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benes,8];
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,8];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,8];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,6];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,3];
				(unitBackpack _unitat) addItemCargoGlobal [_atropina,8];
				(unitBackpack _unitat) addItemCargoGlobal [_kitQuirurgic,2];
				(unitBackpack _unitat) addItemCargoGlobal [_kitPrimersAuxilis,2];
				(unitBackpack _unitat) addItemCargoGlobal [_bossaSalina500,3];
			};
			if( cc_mod_agm or (cc_mod_ace3 and cc_param_SistemaMedic == 0)) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benes,15];
				(unitBackpack _unitat) addItemCargoGlobal [_bossaSang500,2];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_m67",1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",3];
		(unitBackpack _unitat) addMagazineCargoGlobal ["20Rnd_556x45_UW_mag",3];
		
		// Ulleres
		_unitat addGoggles _ulleresDIV;
		
		// Arma principal
		_unitat addWeapon _armaDIV;
	};
	
	// Bussejador (div)
	case "div":
	{
		// Treure l'uniforme, casc i armilla
		removeUniform _unitat;
		removeHeadgear _unitat;
		removeGoggles _unitat;
		
		// Uniforme, armilla i motxilla
		_unitat forceAddUniform _uniformeDIV;
		_unitat addVest _armillaDIV;
		_unitat addBackpack _motxillaDIV;
		
		// Objectes a l'uniforme
		if (cc_mod_ace3 or cc_mod_agm) then {
			(uniformContainer _unitat) addItemCargoGlobal [_taps,1];
			(uniformContainer _unitat) addItemCargoGlobal [_morfina,1];
			(uniformContainer _unitat) addItemCargoGlobal [_epinefrina,1];
			(uniformContainer _unitat) addItemCargoGlobal [_benes,2];
		};
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",4];
		(uniformContainer _unitat) addMagazineCargoGlobal ["20Rnd_556x45_UW_mag",3];
		
		// Objectes a l'armilla
		// No es poden posar objectes a l'armilla de bussejador
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_m67",4];
		(unitBackpack _unitat) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",7];
		(unitBackpack _unitat) addMagazineCargoGlobal ["20Rnd_556x45_UW_mag",4];
		
		// Ulleres
		_unitat addGoggles _ulleresDIV;
		
		// Arma principal
		_unitat addWeapon _armaDIV;
	};
		
	case "hmmwv":
	{
		clearWeaponCargoGlobal _unitat;
		clearMagazineCargoGlobal _unitat;
		clearItemCargoGlobal _unitat;
		clearBackpackCargoGlobal _unitat;
		
		_unitat addWeaponCargoGlobal [_armaDM,1];
		_unitat addItemCargoGlobal [_armaMiraDM, 1];
		_unitat addItemCargoGlobal [_armabipodeDM, 1];
		_unitat addWeaponCargoGlobal [_armaLlencadorAT,2];
		_unitat addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",2];
		_unitat addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",10];
		_unitat addMagazineCargoGlobal ["rhs_mag_m67",5];
		_unitat addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",5];
		_unitat addMagazineCargoGlobal ["SatchelCharge_Remote_Mag",2];
		_unitat addMagazineCargoGlobal ["rhs_mag_M433_HEDP",8];
		_unitat addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",6];
		if (cc_mod_ace3 or cc_mod_agm) then {
			_unitat addItemCargoGlobal [_clacker,1];
			_unitat addItemCargoGlobal [_morfina,10];
			_unitat addItemCargoGlobal [_epinefrina,10];
			_unitat addItemCargoGlobal [_benes,10];
			_unitat addItemCargoGlobal [_bossaSang500,5];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				_unitat addItemCargoGlobal [_atropina,10];
				_unitat addItemCargoGlobal [_benesElastiques,10];
				_unitat addItemCargoGlobal [_benesRapides,10];
				_unitat addItemCargoGlobal [_benesEmpaquetants,10];
				_unitat addItemCargoGlobal [_bossaSalina500,5];
			
				_unitat addItemCargoGlobal [_bossaPlasma500,5];
				
				_unitat addItemCargoGlobal [_kitQuirurgic,3];
				_unitat addItemCargoGlobal [_kitPrimersAuxilis,3];
			};
		};
	};
	
	default
	{
		_unitat sideChat format ["DEBUG (cc_equipacio_rhs_usarmy_wd.sqf): el tipus d'unitat %1 no està definit. Utilitzant l'equipació de fuseller.", _tipusUnitat];
		
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",4];
		
		// Objectes a la motxilla
		if (cc_mod_ace3 or cc_mod_agm) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
			if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
				(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
				(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
				(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
			};
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;	
	};
};

// Selecciona l'arma principal per defecte
if (_esInfanteria) then {
	_aprincipal = primaryWeapon _unitat;
	_unitat selectWeapon _aprincipal;
};

// Insiginia de la unitat
[_unitat,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;

//============================================ FI DEL FITXER ============================================//