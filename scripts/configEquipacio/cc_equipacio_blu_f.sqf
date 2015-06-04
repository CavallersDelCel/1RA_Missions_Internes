//=======================================================================================================//
// Arxiu: cc_equipacio_blu_f.sqf                                                                         //
// Autor: CC_Magnetar                                                                                    //
// Versi�: 0.1                                                                                           //
// Creaci� del Document: 02/04/2015                                                                      //
// Descripci�: Aquest document serveix per equipar els jugadors amb l'equipaci� dissenyada per la missi� //
//             sense fer servir els perfils est�ndard del grup dels Cavallers del Cel. Requereix que el  //
//             jugador formi part de la facci� NATO BLUFOR "blu_f". Cal afegir la seg�ent l�nia al INIT  //
//             de la unitat en l'editor:                                                                 //
//                                                                                                       //
//                  ["ROL_JUGADOR",this] spawn cc_fnc_configEquipacio;                                   //
//                                                                                                       //
//             on "ROL_JUGADOR" �s una de les seg�ents entrades:                                         //
//                                                                                                       //
//                  ROL_JUGADOR         Rol assignat                                                     //
//                  pl                  Cap de secci� (Platoon Leader)                                   //
//                  psg                 Sergent (Platoon Sergeant)                                       //
//                  rto                 Operador de Radio (Platoon Radiotelephone Operator)              //
//                  fo                  Observador avan�at (Forward Observer)                            //
//                  me                  Metge (Platoon Medic)                                            //
//                  sl                  L�der d'esquadra (Squad Leader)                                  //
//                  tl                  L�der d'equip (Team Leader)                                      //
//                  rfl                 Fuseller (Rifleman)                                              //
//                  rflat               Fusellser amb AT4 (Rifleman with AT4)                            //
//                  gr                  Granader (Grenadier)                                             //
//                  ar                  Fuseller autom�tic (Autom�tic Rifleman)                          //
//                  dm                  Tirador designat (Designated Marksman)                           //
//                  mg                  Metrallador (Machine Gunner)                                     //
//                  amg                 Assitent de metrallador (Assitant Machine Gunner)                //
//                  at                  Antitanc (Antitank)                                              //
//                  aat                 Assistent d'antitanc (AT Ammo handler)                           //
//                  aa                  Anti a�ri (Anti Air gunner)                                      //
//                  aaa                 Assistent d'anti a�ri (Anti Air Assitant)                        //
//                  en                  Enginyer (Engineer)                                              //
//                  sn                  Franctirador (Sniper)                                            //
//                  sp                  Observador (Spotter)                                             //
//                  divsl               Bussejador l�der d'esquadra (Diver Squad Leader)                 //
//                  divme               Bussejador metge (Diver Medic)                                   //
//                  div                 Bussejador                                                       //
//                                                                                                       //
//                  hmmwv               Equipaci� per HMMWVs                                             //
//                                                                                                       //
// Canvis: 0.1 (2015/04/02) Versi� inicial.                                                              //
//         0.2 (2015/04/26) Canviat el nom del fitxer i dels uniformes (RHS v0.3.7).                     //
//         0.3 (2015/05/17) Afegida l'equipaci� pel vehicle HMMWV.                                       //
//         0.4 (2015/05/26) Canviat al sistema ACE3.                                                     //                     
//=======================================================================================================//

_tipusUnitat = toLower (_this select 0);
_unitat = _this select 1;
_esInfanteria = _unitat isKindOf "CAManBase"; 

//=======================================================================================================//
// Resum d'equipaci�: Armes, accessoris, ulleres, armilles, ...                                          //
//=======================================================================================================//

private["_bateriaUAV", "_cintaDentencio", "_einesMapa", "_microDAGR", "_taps", "_vectorIV", "_atragmx", "_kestrel", "_clacker", "_clackerm26", "_kitDesactivacio", "_telefon"];
private["_atropina", "_epinefrina", "_morfina", "_benes", "_benesElastiques", "_benesRapides", "_benesEmpaquetants"];
private["_bossaSang250", "_bossaSang500", "_bossaSang1000", "_bossaPlasma250", "_bossaPlasma500", "_bossPlasma1000", "_bossaSalina250", "_bossaSalina500", "_bossaSalina1000"];
private["_kitPrimersAuxilis", "_kitQuirurgic", "_torniquet"];

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
_motxillaDIV = "B_AssaultPack_blk";

// Armes principals
_arma = "rhs_weap_m4a1";
_arma320 = "rhs_weap_m4a1_m320";
_armaAR = "rhs_weap_m249_pip";
_armaMG = "rhs_weap_m240B";
_armaDM = "rhs_weap_sr25_ec";
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
_armaMira = "rhsusf_acc_eotech_552";
_armaMiraAR = "rhsusf_acc_eotech_552";
_armaMiraDM = "rhsusf_acc_LEUPOLDMK4";
_armaMiraSN = "rhsusf_acc_LEUPOLDMK4_2";

// B�podes
_armabipodeDM = "rhsusf_acc_harris_bipod";
_armabipodeSN = "rhsusf_acc_harris_bipod";

// Llen�adores AT/AA
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

// Prism�tics
_prismatic = "lerca_1200_tan";

// Visi� nocturna
_visioNocturna = "rhsusf_ANPVS_15";

if (cc_param_modRealisme == 1) then {
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

	// Objectes m�dics: Droques
	_atropina = "ACE_atropine";
	_epinefrina = "ACE_epinephrine";
	_morfina = "ACE_morphine";

	// Objectes m�dics: Benes
	_benes = "ACE_fieldDressing";
	_benesElastiques = "ACE_elasticBandage";
	_benesRapides = "ACE_quikclot";
	_benesEmpaquetants = "ACE_packingBandage";

	// Objectes m�dics: bosses
	_bossaSang250 = "ACE_bloodIV_250";
	_bossaSang500 = "ACE_bloodIV_250";
	_bossaSang1000 = "ACE_bloodIV_250";
	_bossaPlasma250 = "ACE_plasmaIV_250";
	_bossaPlasma500 = "ACE_plasmaIV_500";
	_bossPlasma1000 = "ACE_plasmaIV";
	_bossaSalina250 = "ACE_salineIV_250";
	_bossaSalina500 = "ACE_salineIV_500";
	_bossaSalina1000 = "ACE_salineIV_1000";

	// Objectes m�dics: Kits
	_kitPrimersAuxilis = "ACE_personalAidKit";
	_kitQuirurgic = "ACE_surgicalKit";

	// Objectes m�dics: Torniquets
	_torniquet = "ACE_tourniquet";
} else {

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
	_einesMapa = "AGM_MapToos";
	_kestrel = "AGM_ItemKestrel";
	_clacker = "AGM_Clacker";
	_kitDesactivacio = "AGM_DefusalKit";
};


// Treure tota l'equipaci� que porta la unitat en el cas que sigui infanteria
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
	
	(uniformContainer _unitat) addItemCargoGlobal [_taps,1];
	(uniformContainer _unitat) addItemCargoGlobal [_morfina,1];
	(uniformContainer _unitat) addItemCargoGlobal [_epinefrina,1];
	(uniformContainer _unitat) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];
	
	// Arma secund�ria
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
	// Cap de secci� (Platoon Leader)
	case "pl":
	{
		// Armilla i motxilla
		_unitat addVest _armillaSQ;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addItemCargoGlobal [_einesMapa,1];
		if (cc_param_modRealisme == 1) then {
			(vestContainer _unitat) addItemCargoGlobal [_microDAGR,1];
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",2];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",2];
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,4];
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
		
		// Arma principal
		_unitat addWeapon _arma320;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
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
	};
	
	// Observador avan�at (Forward Observer)
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
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",3];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_morfina,8];
		(unitBackpack _unitat) addItemCargoGlobal [_epinefrina,8];	
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,10];
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,10];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,10];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,8];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,5];
			(unitBackpack _unitat) addItemCargoGlobal [_atropina,8];
			(unitBackpack _unitat) addItemCargoGlobal [_kitQuirurgic,2];
			(unitBackpack _unitat) addItemCargoGlobal [_kitPrimersAuxilis,2];
			(unitBackpack _unitat) addItemCargoGlobal [_bossaSalina500,6];
		} else {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,20];
			(unitBackpack _unitat) addItemCargoGlobal [_bossaSang500,2];
		};
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",2];
		
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
	};

	// L�der d'Esquadra (Squad Leader)
	case "sl":
	{
		// Armilla i motxilla
		_unitat addVest _armillaSQ;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addItemCargoGlobal [_einesMapa,1];
		if (cc_param_modRealisme == 1) then {
			(vestContainer _unitat) addItemCargoGlobal [_microDAGR,1];
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",2];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",2];
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
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
	
	// L�der d'Equip (Team leader)
	case "tl":
	{
		// Armilla i motxilla
		_unitat addVest _armillaTL;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addItemCargoGlobal [_einesMapa,1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",2];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",2];
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
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
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",4];
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
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
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",4];
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
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
		
		// Llen�ador AT4
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
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",6];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",4];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",6];
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
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
	
	// Fuseller autom�tic (Automatic Rifleman)
	case "ar":
	{
		// Armilla i motxilla
		_unitat addVest _armillaSAW;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",2];
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",3];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",3];
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
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
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addItemCargoGlobal [_kestrel,1];
		if (cc_param_modRealisme == 1) then {
			(vestContainer _unitat) addItemCargoGlobal [_atragmx,1];
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",3];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",6];
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
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
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",3];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",2];
		
		_unitat addBackpack _motxilla;
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
		};
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
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
	};
	
	// Antitanc (Antitank)
	case "at":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",4];
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
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
		
		// Arma principal
		_unitat addWeapon _arma;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
	};
	
	// Anti a�ri (Anti Air gunner)
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
	};
	
	// Assistent d'anti a�ri (Anti Air Assitant)
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
	};
	
	// Enginyer (Engineer)
	case "en":
	{
		// Armilla i motxilla
		_unitat addVest _armillaRFL;
		_unitat addBackpack _motxilla;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addItemCargoGlobal [_clacker,1];
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",2];
		(vestContainer _unitat) addItemCargoGlobal [_visioNocturna,1];
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
		};
		
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
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		if (cc_param_modRealisme == 1) then {
			(vestContainer _unitat) addItemCargoGlobal [_microDAGR,1];
			(vestContainer _unitat) addItemCargoGlobal [_atragmx,1];
		};
		(vestContainer _unitat) addItemCargoGlobal [_einesMapa,1];
		(vestContainer _unitat) addItemCargoGlobal [_kestrel,1];
		
		
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
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		if (cc_param_modRealisme == 1) then {
			(vestContainer _unitat) addItemCargoGlobal [_microDAGR,1];
			(vestContainer _unitat) addItemCargoGlobal [_atragmx,1];
		};
		(vestContainer _unitat) addItemCargoGlobal [_einesMapa,1];
		(vestContainer _unitat) addItemCargoGlobal [_kestrel,1];
		
		_unitat addWeapon _arma320;
		_unitat addPrimaryWeaponItem _armaSurefire;
		_unitat addPrimaryWeaponItem _armaLaserLlanterna;
		_unitat addPrimaryWeaponItem _armaMira;
		
		// Vector IV
		
		// Objectes
		_unitat linkItem _gps;
	};
	
	// Bussejador: L�der d'esquadra (divsl)
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
		(uniformContainer _unitat) addItemCargoGlobal [_taps,1];
		(uniformContainer _unitat) addItemCargoGlobal [_morfina,1];
		(uniformContainer _unitat) addItemCargoGlobal [_epinefrina,1];
		(uniformContainer _unitat) addItemCargoGlobal [_benes,2];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",4];
		(uniformContainer _unitat) addMagazineCargoGlobal ["20Rnd_556x45_UW_mag",3];
		
		// Objectes a l'armilla
		// No es poden posar objectes a l'armilla de bussejador
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
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
		(uniformContainer _unitat) addItemCargoGlobal [_taps,1];
		(uniformContainer _unitat) addItemCargoGlobal [_morfina,1];
		(uniformContainer _unitat) addItemCargoGlobal [_epinefrina,1];
		(uniformContainer _unitat) addItemCargoGlobal [_benes,2];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",4];
		(uniformContainer _unitat) addMagazineCargoGlobal ["20Rnd_556x45_UW_mag",3];
		
		// Objectes a l'armilla
		// No es poden posar objectes a l'armilla de bussejador
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_morfina,8];
		(unitBackpack _unitat) addItemCargoGlobal [_epinefrina,8];	
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,8];
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,8];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,8];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,6];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,3];
			(unitBackpack _unitat) addItemCargoGlobal [_atropina,8];
			(unitBackpack _unitat) addItemCargoGlobal [_kitQuirurgic,2];
			(unitBackpack _unitat) addItemCargoGlobal [_kitPrimersAuxilis,2];
			(unitBackpack _unitat) addItemCargoGlobal [_bossaSalina500,3];
		} else {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,15];
			(unitBackpack _unitat) addItemCargoGlobal [_bossaSang500,2];
		};
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
		(uniformContainer _unitat) addItemCargoGlobal [_taps,1];
		(uniformContainer _unitat) addItemCargoGlobal [_morfina,1];
		(uniformContainer _unitat) addItemCargoGlobal [_epinefrina,1];
		(uniformContainer _unitat) addItemCargoGlobal [_benes,2];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",4];
		(uniformContainer _unitat) addMagazineCargoGlobal ["20Rnd_556x45_UW_mag",3];
		
		// Objectes a l'armilla
		// No es poden posar objectes a l'armilla de bussejador
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_m67",4];
		(unitBackpack _unitat) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["20Rnd_556x45_UW_mag",2];
		
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
		_unitat addItemCargoGlobal [_clacker,1];
		_unitat addItemCargoGlobal [_morfina,10];
		_unitat addItemCargoGlobal [_epinefrina,10];
		_unitat addItemCargoGlobal [_benes,10];
		_unitat addItemCargoGlobal [_bossaSang500,5];
		if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
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
		
	case "blx":
	{
		clearWeaponCargoGlobal _unitat;
		clearMagazineCargoGlobal _unitat;
		clearItemCargoGlobal _unitat;
		clearBackpackCargoGlobal _unitat;
		
		_unitat addWeaponCargoGlobal [_armaDM,1];
		_unitat addItemCargoGlobal [_armaMiraDM, 1];
		_unitat addItemCargoGlobal [_armabipodeDM, 1];
		_unitat addWeaponCargoGlobal [_armaLlencadorAT,2];
		_unitat addWeaponCargoGlobal [_armaLlencadorRF,1];
		_unitat addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",2];
		_unitat addMagazineCargoGlobal ["rhs_m136_hedp_mag",1];
		_unitat addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",15];
		_unitat addMagazineCargoGlobal ["rhs_mag_m67",5];
		_unitat addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",7];
		_unitat addMagazineCargoGlobal ["SatchelCharge_Remote_Mag",2];
		_unitat addMagazineCargoGlobal ["rhs_mag_M433_HEDP",8];
		_unitat addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",10];
		_unitat addItemCargoGlobal [_clacker,1];
		_unitat addItemCargoGlobal [_morfina,10];
		_unitat addItemCargoGlobal [_epinefrina,10];
		_unitat addItemCargoGlobal [_benes,15];
		_unitat addItemCargoGlobal [_bossaSang500,5];
		if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
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

	case "sdv1":
	{
		clearWeaponCargoGlobal _unitat;
		clearMagazineCargoGlobal _unitat;
		clearItemCargoGlobal _unitat;
		clearBackpackCargoGlobal _unitat;

		_unitat addItemCargoGlobal [_uniforme,3];
		_llista = everyContainer _unitat;
		
		// L�der d'esquadra (SL)
		_temp = _llista select 0;
		(_temp select 1) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		// Fuseller (RF)
		_temp = _llista select 1;
		(_temp select 1) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		// Fuseller autom�tic (AR)
		// Sense equipaci� addicional
		
		// Resta d'equip
		_unitat addItemCargoGlobal [_casc,3];
		_unitat addItemCargoGlobal [_armillaSQ,1];
		_unitat addItemCargoGlobal [_armillaRFL,1];
		_unitat addItemCargoGlobal [_armillaSAW,1];
		_unitat addBackpackCargoGlobal [_motxilla,2];
		
		_llista = everyContainer _unitat;
		
		_count = 0;
		{
			_temp = _llista select _count;
			_nom = _temp select 0;
			
			if(_nom == _uniforme) then {
				(_temp select 1) addItemCargoGlobal [_taps,1];
				(_temp select 1) addItemCargoGlobal [_morfina,1];
				(_temp select 1) addItemCargoGlobal [_epinefrina,1];
				(_temp select 1) addItemCargoGlobal [_benes,2];
				(_temp select 1) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];
			};
			
			if( _nom == _armillaSQ) then{
				(_temp select 1) addItemCargoGlobal [_benes,2];
				(_temp select 1) addItemCargoGlobal [_einesMapa,1];
				(_temp select 1) addItemCargoGlobal [_armaSilenciador,1];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",2];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_mk84",1];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_m67",2];
			};
			
			if( _nom == _armillaRFL) then{
				(_temp select 1) addItemCargoGlobal [_benes,2];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_m67",4];
			};
				
			if(_nom == _armillaSAW) then {
				(_temp select 1) addItemCargoGlobal [_benes,2];
				(_temp select 1) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",3];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_m67",3];
			};
					
			_count = _count + 1;
		} forEach _llista;
		
		// Afegeix a les motxilles equipament especial a cada unitat
		_llistamotxilles = everybackpack _unitat;
		// Fuseller (RFL)
		_temp = _llistamotxilles select 0;
		_temp addItemCargoGlobal [_benes,2];
		if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
			_temp addItemCargoGlobal [_benesElastiques,3];
			_temp addItemCargoGlobal [_benesRapides,3];
			_temp addItemCargoGlobal [_benesEmpaquetants,3];
			_temp addItemCargoGlobal [_torniquet,1];
		};
		_temp addItemCargoGlobal [_visioNocturna,1];
		_temp addItemCargoGlobal [_armaSilenciador,1];
		_temp addItemCargoGlobal [_armaSurefire,1];
		_temp addItemCargoGlobal [_armaLaserLlanterna,1];
		_temp addItemCargoGlobal [_armaMira,1];
		_temp addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		_temp addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		_temp addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		_temp addMagazineCargoGlobal ["rhs_mag_mk84",2];
		// Fuseller Autom�tic (RFL)
		_temp = _llistamotxilles select 1;
		_temp addItemCargoGlobal [_benes,2];
		if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
			_temp addItemCargoGlobal [_benesElastiques,3];
			_temp addItemCargoGlobal [_benesRapides,3];
			_temp addItemCargoGlobal [_benesEmpaquetants,3];
			_temp addItemCargoGlobal [_torniquet,1];
		};
		_temp addItemCargoGlobal [_visioNocturna,1];
		_temp addItemCargoGlobal [_armaLaserLlanternaAR,1];
		_temp addItemCargoGlobal [_armaMiraAR,1];
		_temp addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_soft_pouch",2];
		_temp addMagazineCargoGlobal ["rhs_mag_mk84",2];
		_temp addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
		
		/* Motxilla del TFAR */
		_unitat addBackpackCargoGlobal ["tf_rt1523g_big_rhs",1];
		_llista = everyContainer _unitat;
		_count = 0;
		{
			_temp = _llista select _count;
			_nom = _temp select 0;
			
			// L�der d'esquadra (SL)
			if(_nom == "tf_rt1523g_big_rhs") then {
				(_temp select 1) addItemCargoGlobal [_benes,2];
				if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
					(_temp select 1) addItemCargoGlobal [_benesElastiques,3];
					(_temp select 1) addItemCargoGlobal [_benesRapides,3];
					(_temp select 1) addItemCargoGlobal [_benesEmpaquetants,3];
					(_temp select 1) addItemCargoGlobal [_torniquet,1];
				};
				(_temp select 1) addItemCargoGlobal [_visioNocturna,1];
				(_temp select 1) addItemCargoGlobal [_armaSilenciador,1];
				(_temp select 1) addItemCargoGlobal [_armaSurefire,1];
				(_temp select 1) addItemCargoGlobal [_armaLaserLlanterna,1];
				(_temp select 1) addItemCargoGlobal [_armaMira,1];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_m714_White",2];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
			};
			_count = _count + 1;
		} forEach _llista;

		// Armes
		_unitat addWeaponCargoGlobal [_arma320,1];
		_unitat addWeaponCargoGlobal [_arma,1];
		_unitat addWeaponCargoGlobal [_armaLlencadorRF,1];
		_unitat addWeaponCargoGlobal [_armaAR,1];
		_unitat addMagazineCargoGlobal ["rhs_m136_hedp_mag",1];
	};
		
	case "sdv2":
	{
		clearWeaponCargoGlobal _unitat;
		clearMagazineCargoGlobal _unitat;
		clearItemCargoGlobal _unitat;
		clearBackpackCargoGlobal _unitat;
		
		// Afegeix als uniformes equipament especial a cada unitat
		_unitat addItemCargoGlobal [_uniforme,3];
		_llista = everyContainer _unitat;

		// Granader (GR)
		_temp = _llista select 0;
		(_temp select 1) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",4];
		(_temp select 1) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		// Tirador (DM)
		_temp = _llista select 1;
		(_temp select 1) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",1];
		// Metge (ME)
		_temp = _llista select 2;
		(_temp select 1) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Resta d'equip
		_unitat addItemCargoGlobal [_casc,3];
		_unitat addItemCargoGlobal [_armillaRFL,1];
		_unitat addItemCargoGlobal [_armillaGR,1];
		_unitat addItemCargoGlobal [_armillaME,1];
		_unitat addItemCargoGlobal [_motxilla,3];
		
		_llista = everyContainer _unitat;
		_count = 0;
		{
			_temp = _llista select _count;
			_nom = _temp select 0;
			
			if(_nom == _uniforme) then {
				(_temp select 1) addItemCargoGlobal [_taps,1];
				(_temp select 1) addItemCargoGlobal [_morfina,1];
				(_temp select 1) addItemCargoGlobal [_epinefrina,1];
				(_temp select 1) addItemCargoGlobal [_benes,2];
				(_temp select 1) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];
			};
					
			if( _nom == _armillaRFL) then{
				(_temp select 1) addItemCargoGlobal [_benes,2];
				(_temp select 1) addItemCargoGlobal [_kestrel,1];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_m67",3];
				(_temp select 1) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",6];
				
			};
			
			if( _nom == _armillaGR) then{
				(_temp select 1) addItemCargoGlobal [_benes,2];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",6];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_m67",4];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",6];
			};
			
			if( _nom == _armillaME) then{
				(_temp select 1) addItemCargoGlobal [_benes,2];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_m67",3];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
				(_temp select 1) addMagazineCargoGlobal ["rhs_mag_mk84",1];
			};
			
			_count = _count + 1;
		} forEach _llista;
		
		// Afegeix a les motxilles equipament especial a cada unitat
		_unitat addBackpackCargoGlobal [_motxilla,3];
		_llistamotxilles = everybackpack _unitat;
				
		// Granader (GR)
		_temp = _llistamotxilles select 0;
		_temp addItemCargoGlobal [_benes,2];
		if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
			_temp addItemCargoGlobal [_benesElastiques,3];
			_temp addItemCargoGlobal [_benesRapides,3];
			_temp addItemCargoGlobal [_benesEmpaquetants,3];
			_temp addItemCargoGlobal [_torniquet,1];
		};
		_temp addItemCargoGlobal [_visioNocturna,1];
		_temp addItemCargoGlobal [_armaLaserLlanternaSN,1];
		_temp addItemCargoGlobal [_armaMiraDM,1];
		_temp addItemCargoGlobal [_armabipodeDM,1];
		_temp addItemCargoGlobal ["rhsusf_acc_SR25S",1];
		_temp addMagazineCargoGlobal ["rhs_mag_mk84",2];
		_temp addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
		_temp addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",5];
		_temp addItemCargoGlobal ["rhsusf_acc_SR25S",1];
		// Granader (GR)
		_temp = _llistamotxilles select 1;
		_temp addItemCargoGlobal [_benes,2];
		if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
			_temp addItemCargoGlobal [_benesElastiques,3];
			_temp addItemCargoGlobal [_benesRapides,3];
			_temp addItemCargoGlobal [_benesEmpaquetants,3];
			_temp addItemCargoGlobal [_torniquet,1];
		};
		_temp addItemCargoGlobal [_visioNocturna,1];
		_temp addItemCargoGlobal [_armaSilenciador,1];
		_temp addItemCargoGlobal [_armaSurefire,1];
		_temp addItemCargoGlobal [_armaLaserLlanterna,1];
		_temp addItemCargoGlobal [_armaMira,1];
		_temp addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		_temp addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		_temp addMagazineCargoGlobal ["rhs_mag_m714_White",2];
		_temp addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		_temp addMagazineCargoGlobal ["rhs_mag_mk84",2];
		_temp addMagazineCargoGlobal ["rhs_mag_M433_HEDP",5];
		// Metge (ME)
		_temp = _llistamotxilles select 2;
		_temp addItemCargoGlobal [_visioNocturna,1];
		_temp addItemCargoGlobal [_armaSilenciador,1];
		_temp addItemCargoGlobal [_armaSurefire,1];
		_temp addItemCargoGlobal [_armaLaserLlanterna,1];
		_temp addItemCargoGlobal [_armaMira,1];
		_temp addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",2];
		_temp addItemCargoGlobal [_morfina,8];
		_temp addItemCargoGlobal [_epinefrina,8];
		if (cc_param_modRealisme == 1 && cc_param_SistemaMedic == 1) then {
			(_temp select 1) addItemCargoGlobal [_benes,10];
			(_temp select 1) addItemCargoGlobal [_benesElastiques,10];
			(_temp select 1) addItemCargoGlobal [_benesRapides,10];
			(_temp select 1) addItemCargoGlobal [_benesEmpaquetants,8];
			(_temp select 1) addItemCargoGlobal [_torniquet,5];
			(_temp select 1) addItemCargoGlobal [_atropina,8];
			(_temp select 1) addItemCargoGlobal [_kitQuirurgic,2];
			(_temp select 1) addItemCargoGlobal [_kitPrimersAuxilis,2];
			(_temp select 1) addItemCargoGlobal [_bossaSalina500,6];
		} else {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,20];
			(unitBackpack _unitat) addItemCargoGlobal [_bossaSang500,2];
		};		
		
		// Armes
		_unitat addWeaponCargoGlobal [_arma320,1];
		_unitat addWeaponCargoGlobal [_arma,1];
		_unitat addWeaponCargoGlobal [_armaDM,1];
		_unitat addWeaponCargoGlobal [_armaLlencadorRF,1];
		_unitat addMagazineCargoGlobal ["rhs_m136_hedp_mag",1];
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