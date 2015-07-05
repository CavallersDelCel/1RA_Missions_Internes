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
//                  ural                   Equipació per Ural-4320                                       //
//                  uaz                    Equipació per UAZ-3151                                        //
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
//                  rhs_faction_vpvo        Russian Air Defense Troops                                   //
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
_uniforme = ["U_OG_leader","U_OG_Guerilla1_1","U_OG_Guerilla2_1","U_OG_Guerilla2_2","U_OG_Guerilla2_3","U_OG_Guerilla3_1","U_OG_Guerilla3_2"];
_uniformeSN = "U_I_FullGhillie_ard";
_uniformeDIV = "U_I_Wetsuit";

// Armilles
_armillaB = ["V_BandollierB_oli","V_BandollierB_khk", "V_BandollierB_rgr"];
_armillaCH = ["V_Chestrig_khk","V_Chestrig_rgr", "V_Chestrig_oli"];
_armilla = ["V_TacVest_oli","V_TacVest_khk", "V_TacVest_camo"];
_armillaSQ = "rhsusf_iotv_ocp_squadleader";
_armillaTL = "rhsusf_iotv_ocp_teamleader";
_armillaRFL = "rhsusf_iotv_ocp_rifleman";
_armillaGR = "rhsusf_iotv_ocp_grenadier";
_armillaME = "rhsusf_iotv_ocp_medic";
_armillaSAW = "rhsusf_iotv_ocp_SAW";
_armillaDIV = "V_RebreatherB";

// Cascs
_casc = ["H_Bandanna_camo","H_Bandanna_cbr","H_Beret_blk","H_Booniehat_indp","H_Booniehat_oli","H_Cap_blk_Raven","H_Cap_brn_SPECOPS","H_MilCap_dgtl","H_MilCap_mcamo","H_Shemag_olive"];
_cascSN = "rhs_Booniehat_ocp";

// Ulleres
_ulleres = "G_Tactical_Clear";
_ulleresDIV = "G_Diving";

// Motxilla
_motxilla = ["rhs_assault_umbts","rhs_sidor","rhs_assault_umbts_engineer_empty"]; 
_motxillaEN = "rhs_assault_umbts_engineer_empty";
_motxillaHE = ["B_Carryall_oli","B_Carryall_khk"];
_motxillaAT = "rhs_rpg_empty";
_motxillaRADIO = "tf_anprc155";
_motxillaDIV = "B_AssaultPack_blk";
_motxillaMT = "I_Mortar_01_weapon_F";
_motxillaAMT = "I_Mortar_01_support_F";

// Armes principals
_arma = "rhs_weap_ak74m";
_armaGR = "rhs_weap_ak74m_gp25";
_armaAKMS = "rhs_weap_akms";
_armaAKMS_GR = "rhs_weap_akms_gp25";
_armaAK103 = "rhs_weap_ak103";
_armaAR = "rhs_weap_pkm";
_armaMG = "rhs_weap_pkp";
_armaSN = "rhs_weap_svdp";
_armaDIV = "arifle_SDAR_F";

// Carregadors
_magArma = "rhs_30Rnd_545x39_AK";
_magArmaAK103 = "rhs_30Rnd_762x39mm";
_magArmaMG = "rhs_100Rnd_762x54mmR";
_magArmaMG_GRE = "rhs_100Rnd_762x54mmR_green";
_magArmaSN = "rhs_10Rnd_762x54mmR_7N1";
_magArmaPISTOLA = "rhs_mag_9x19_17";

// Granades
_granada= "rhs_mag_rgd5";
_granadaSMK_WHI= "rhs_mag_rdg2_white";
_granadaSMK_BLA= "rhs_mag_rdg2_black";
_granadaBEN_YEL= "rhs_mag_nspn_yellow";
_granadaBEN_RED= "rhs_mag_nspn_red";
_granadaBEN_GRE= "rhs_mag_nspn_green";
_granadaFLA_FAKEL= "rhs_mag_fakel";
_granadaFLA_FAKELS= "rhs_mag_fakels";
_granadaFLA_ZARYA= "rhs_mag_zarya2";
_granadaFLA_PLAMYAM= "rhs_mag_plamyam";

// Municio Llançagranades
_granadaL= "rhs_VOG25";
_granadaL_P= "rhs_VOG25P";
_granadaL_TB= "rhs_VG40TB";
_granadaL_FLA= "rhs_VG40SZ";
_granadaL_SMK_WHI= "rhs_VG40OP_white";
_granadaL_SMK_GRE= "rhs_VG40OP_green";
_granadaL_SMK_RED= "rhs_VG40OP_red";
_granadaL_BEN_WHI= "rhs_GRD40_White";
_granadaL_BEN_GRE= "rhs_GRD40_Green";
_granadaL_BEN_RED= "rhs_GRD40_Red";

// Silenciadors
_armaSilenciador = "rhs_acc_tgpa";
_armaSurefire = "rhs_acc_dtk4short";

// Accessoris
_armaLaserLlanterna = "rhsusf_acc_anpeq15";
_armaLaserLlanternaAR = "rhsusf_acc_anpeq15A";
_armaLaserLlanternaSN = "rhsusf_acc_anpeq15side";

// Mires
_armaMiraB = "rhs_acc_ekp1";
_armaMira = "rhs_acc_1p63";
_armaMira2 = "rhs_acc_pkas";
_armaMiraMG = "rhs_acc_1p29";
_armaMiraSN = "rhs_acc_pso1m2";
_armaMiraAT = "rhs_acc_pgo7v";
_armaMiraVN = "rhs_acc_1pn93_1";

// Bípodes
_armabipodeDM = "rhs_bipod";
_armabipodeSN = "rhs_bipod";

// Llençadores AT/AA
_armaLlencador26 = "rhs_weap_rpg26"; // RPG 26
_armaLlencador2 = "rhs_weap_rshg2"; //RShG 2
_armaLlencadorAT = "rhs_weap_rpg7"; //RPG 7V2
_armaLlencadorAA = "rhs_weap_igla"; //9K38

// Municio AT/AA
_magLlencadorRPG7 = "rhs_rpg7_PG7VL_mag";
_magLlencadorRPG7_AT = "rhs_rpg7_PG7VR_mag";
_magLlencadorRPG7_AP = "rhs_rpg7_OG7V_mag";
_magLlencadorRPG7_HE = "rhs_rpg7_TBG7V_mag";
_magLlencadorAA = "rhs_mag_9k38_rocket";

// Pistoles
_pistola = "rhs_weap_pya";
_pistolaB_GRE = "rhs_weap_rsp30_green";
_pistolaB_RED = "rhs_weap_rsp30_red";
_pistolaB_WHI = "rhs_weap_rsp30_white";

// Objectes
_gps = "ItemGPS";
_rellotge = "ItemWatch";
_mapa = "ItemMap";
_brujola = "ItemCompass";
_radio = "ItemRadio";
//_radio = "tf_anprc148jem_1";
_terminalUAV = "B_UavTerminal";

// Prismàtics
_prismatic = "Binocular";
_prismatic_PDU4 = "rhs_pdu4";
_prismatic_TR8 = "rhs_tr8_periscope";


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
	//clearAllItemsFromBackpack _unitat;
	//removeAllContainers _unitat;
	//removeHeadgear _unitat;
	
	// Uniforme, casc i ulleres
	//_unitat forceAddUniform (_uniforme call BIS_fnc_selectRandom);
	//_unitat addHeadgear (_casc call BIS_fnc_selectRandom);
	//_unitat addGoggles _ulleres;
	
	(uniformContainer _unitat) addItemCargoGlobal [_taps,1];
	(uniformContainer _unitat) addItemCargoGlobal [_morfina,1];
	(uniformContainer _unitat) addItemCargoGlobal [_epinefrina,1];
		
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
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack _motxillaRADIO;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,1];
		(uniformContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addItemCargoGlobal [_einesMapa,1];
		(vestContainer _unitat) addMagazineCargoGlobal [_granada,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_WHI,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_BLA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_YEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_RED,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_GRE,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_ZARYA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_PLAMYAM,0];
		if (cc_mod_ace3) then {
			(vestContainer _unitat) addItemCargoGlobal [_microDAGR,1];
		};
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",2];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_mk84",1];
		(vestContainer _unitat) addMagazineCargoGlobal ["rhs_mag_m67",2];
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,4];
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,0];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_m714_White",2];
		(unitBackpack _unitat) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
		
		// Arma principal
		_unitat addWeapon _arma;
		
		// Objectes
		//_unitat linkItem _gps;
		
		// Binocles
		_unitat addWeapon _prismatic_PDU4;
	};
	
	// Sergent (Platoon Sergeant)
	case "psg":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack (_motxillaHE call BIS_fnc_selectRandom);
		
		// Arma principal
		_unitat addWeapon _arma;
	};
	
	// Operador de Radio (Platoon Radiotelephone Operator)
	case "rto":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack (_motxillaHE call BIS_fnc_selectRandom);
		
		// Arma principal
		_unitat addWeapon _arma;
	};
	
	// Observador avançat (Forward Observer)
	case "fo":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack (_motxillaHE call BIS_fnc_selectRandom);
		
		// Arma principal
		_unitat addWeapon _arma;
		
		// Objectes
		_unitat linkItem _terminalUAV;
	};
	
	// Metge (Platoon Medic)
	case "me":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack (_motxillaHE call BIS_fnc_selectRandom);
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArma,2];
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_magArma,7];
		(vestContainer _unitat) addMagazineCargoGlobal [_granada,3];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_WHI,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_BLA,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_YEL,3];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_RED,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_GRE,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKEL,1];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_ZARYA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_PLAMYAM,0];
				
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_morfina,8];
		(unitBackpack _unitat) addItemCargoGlobal [_epinefrina,8];	
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,0];
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benes,12];
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,12];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,12];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,10];
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
		(unitBackpack _unitat) addMagazineCargoGlobal [_magArma,12];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granada,5];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaBEN_YEL,3];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaSMK_WHI,2];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,4];
		
		
		// Arma principal
		_unitat addWeapon _armaAKMS;

		// Arma secundària
		_unitat addWeapon _pistolaB_GRE;
	};

	// Líder d'Esquadra (Squad Leader)
	case "sl":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack _motxillaRADIO;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArma,4];
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArmaPISTOLA,3];
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_magArma,6];
		(vestContainer _unitat) addMagazineCargoGlobal [_granada,4];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_WHI,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_BLA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_YEL,1];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_RED,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_GRE,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,1];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_ZARYA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_PLAMYAM,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaL,5];
		if (cc_mod_ace3) then {
			(vestContainer _unitat) addItemCargoGlobal [_microDAGR,1];
		};
				
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_magArma,7];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL,12];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_P,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_TB,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_FLA,4];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_SMK_WHI,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_SMK_GRE,2];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_SMK_RED,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_BEN_WHI,2];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_BEN_GRE,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_BEN_RED,0];
		
		// Arma principal
		_unitat addWeapon _armaAKMS_GR;
		
		// Arma secundària
		_unitat addWeapon _pistola;

		// Objectes
		//_unitat linkItem _gps;
		
		// Binocles
		_unitat addWeapon _prismatic_PDU4;
	};
	
	//Líder d'esquadra amb RPG 26  (Squad Leader with RPG 26)  
	case "slat":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack _motxillaRADIO;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArma,4];
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArmaPISTOLA,3];
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_magArma,5];
		(vestContainer _unitat) addMagazineCargoGlobal [_granada,4];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_WHI,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_BLA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_YEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_RED,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_GRE,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,1];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_ZARYA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_PLAMYAM,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaL,5];
		if (cc_mod_ace3) then {
			(vestContainer _unitat) addItemCargoGlobal [_microDAGR,1];
		};
				
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_magArma,9];
		(unitBackpack _unitat) addWeaponCargoGlobal [_armaLlencador26,1];
		
		// Arma principal
		_unitat addWeapon _armaAK103;
		
		// Arma secundària
		_unitat addWeapon _pistola;
		
		// Llençador RPG 26
		_unitat addWeapon _armaLlencador26;	

		// Objectes
		//_unitat linkItem _gps;
		
		// Binocles
		_unitat addWeapon _prismatic_PDU4;
	};
	
	// Líder d'Equip (Team leader)
	case "tl":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack _motxillaRADIO;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArma,4];
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArmaPISTOLA,3];
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_magArma,6];
		(vestContainer _unitat) addMagazineCargoGlobal [_granada,4];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_WHI,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_BLA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_YEL,1];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_RED,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_GRE,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,1];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_ZARYA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_PLAMYAM,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaL,5];
		if (cc_mod_ace3) then {
			(vestContainer _unitat) addItemCargoGlobal [_microDAGR,1];
		};
				
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_magArma,7];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL,12];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_P,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_TB,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_FLA,4];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_SMK_WHI,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_SMK_GRE,2];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_SMK_RED,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_BEN_WHI,2];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_BEN_GRE,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_BEN_RED,0];
		
		// Arma principal
		_unitat addWeapon _armaAKMS_GR;
		
		// Arma secundària
		_unitat addWeapon _pistola;

		// Objectes
		//_unitat linkItem _gps;
		
		// Binocles
		_unitat addWeapon _prismatic_PDU4;
	};
	
	// Líder d'Equip amb RPG 26  (Team leader with RPG 26)   
	case "tlat":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack _motxillaRADIO;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArma,4];
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArmaPISTOLA,3];
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_magArma,5];
		(vestContainer _unitat) addMagazineCargoGlobal [_granada,4];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_WHI,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_BLA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_YEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_RED,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_GRE,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,1];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_ZARYA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_PLAMYAM,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaL,5];
		if (cc_mod_ace3) then {
			(vestContainer _unitat) addItemCargoGlobal [_microDAGR,1];
		};
				
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_magArma,9];
		(unitBackpack _unitat) addWeaponCargoGlobal [_armaLlencador26,1];
		
		// Arma principal
		_unitat addWeapon _armaAK103;
		
		// Arma secundària
		_unitat addWeapon _pistola;
		
		// Llençador RPG 26
		_unitat addWeapon _armaLlencador26;	

		// Objectes
		//_unitat linkItem _gps;
		
		// Binocles
		_unitat addWeapon _prismatic_PDU4;
};
	// Fuseller (Rifleman)
	case "rfl":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack (_motxilla call BIS_fnc_selectRandom);
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArma,4];
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_magArma,3];
		(vestContainer _unitat) addMagazineCargoGlobal [_granada,5];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_WHI,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_BLA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_YEL,3];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_RED,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_GRE,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,3];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_ZARYA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_PLAMYAM,0];
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_magArma,10];
		(unitBackpack _unitat) addItemCargoGlobal [_pistolaB_RED,1];
		(unitBackpack _unitat) addItemCargoGlobal [_pistolaB_WHI,1];
				
		// Arma principal
		_unitat addWeapon _arma;
		
		// Arma secundària
		_unitat addWeapon _pistolaB_GRE;
		//_unitat addWeapon _pistolaB_RED;
		//_unitat addWeapon _pistolaB_WHI;	
	};
	
	// Fusellser amb RPG 26 (Rifleman with RPG 26)
	case "rflat":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack _motxillaAT;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArma,3];
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_magArma,8];
		(vestContainer _unitat) addMagazineCargoGlobal [_granada,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_WHI,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_BLA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_YEL,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_RED,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_GRE,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,1];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_ZARYA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_PLAMYAM,0];
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_magArma,5];
		(unitBackpack _unitat) addWeaponCargoGlobal [_armaLlencador26,1];
		
		// Arma principal
		_unitat addWeapon _arma;
		
		// Arma secundària
		_unitat addWeapon _pistolaB_GRE;
		
		// Llençador RPG 26
		_unitat addWeapon _armaLlencador26;	
	};
	
	// Granader (Grenadier)
	case "gr":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack (_motxilla call BIS_fnc_selectRandom);
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addItemCargoGlobal [_armaSilenciador,0];
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArma,4];
			
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_magArma,5];
		(vestContainer _unitat) addMagazineCargoGlobal [_granada,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_WHI,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_BLA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_YEL,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_RED,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_GRE,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,1];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_ZARYA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_PLAMYAM,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaL,8];
		
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_magArma,8];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL,10];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_P,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_TB,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_FLA,4];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_SMK_WHI,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_SMK_GRE,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_SMK_RED,2];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_BEN_WHI,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_BEN_GRE,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_granadaL_BEN_RED,2];
				
		// Arma principal
		_unitat addWeapon _armaGR;
		
		// Arma secundària
		_unitat addWeapon _pistolaB_RED;
	};
	
	// Fuseller automàtic (Automatic Rifleman)
	case "ar":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack (_motxilla call BIS_fnc_selectRandom);
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArmaMG,1];
		(uniformContainer _unitat) addMagazineCargoGlobal [_granada,3];
		(uniformContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,2];
			
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_magArmaMG,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granada,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_WHI,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_BLA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_YEL,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_RED,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_GRE,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_ZARYA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_PLAMYAM,0];
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_magArmaMG,3];
				
		// Arma principal
		_unitat addWeapon _armaAR;
		
		// Arma secundària
		_unitat addWeapon _pistolaB_GRE;
		
		// Prismatics
		_unitat addWeapon _prismatic;
	};
	
	// Tirador designat (Designated Marksman)
	case "dm":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack (_motxilla call BIS_fnc_selectRandom);
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArmaSN,6];
				
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addItemCargoGlobal [_kestrel,1];
		if (cc_mod_ace3) then {
			(vestContainer _unitat) addItemCargoGlobal [_atragmx,1];
		};
		(vestContainer _unitat) addMagazineCargoGlobal [_magArmaSN,5];
		(vestContainer _unitat) addMagazineCargoGlobal [_granada,5];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_WHI,4];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_BLA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_YEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_RED,3];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_GRE,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,3];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_ZARYA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_PLAMYAM,0];
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_magArmaSN,24];
		(unitBackpack _unitat) addItemCargoGlobal [_armaMiraVN,1];
		(unitBackpack _unitat) addItemCargoGlobal [_pistolaB_GRE,1];
		(unitBackpack _unitat) addItemCargoGlobal [_pistolaB_WHI,1];
		
		// Arma principal
		// Missing muzzle attachment
		_unitat addWeapon _armaSN;
		_unitat addPrimaryWeaponItem _armaMiraSN;
		_unitat addPrimaryWeaponItem _armabipodeSN;
		
		// Arma secundària
		//_unitat addWeapon _pistolaB_GRE;
		_unitat addWeapon _pistolaB_RED;
		//_unitat addWeapon _pistolaB_WHI;	
		
		// Prismatics
		_unitat addWeapon _prismatic_PDU4;
	};
	
	
	// Metrallador (Machine Gunner)
	case "mg":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack (_motxillaHE call BIS_fnc_selectRandom);
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArmaMG,1];
		(uniformContainer _unitat) addMagazineCargoGlobal [_granada,3];
		(uniformContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,2];
			
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_magArmaMG,1];
		(vestContainer _unitat) addMagazineCargoGlobal [_granada,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_WHI,4];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_BLA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_YEL,3];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_RED,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_GRE,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,1];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_ZARYA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_PLAMYAM,0];
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_magArmaMG,6];
		
		// Arma principal
		_unitat addWeapon _armaMG;
		_unitat addPrimaryWeaponItem _armaMiraMG;
		
		// Arma secundària
		_unitat addWeapon _pistolaB_GRE;
		
		// Prismatics
		_unitat addWeapon _prismatic_PDU4;
	};
	
	// Assitent de metrallador (Assitant Machine Gunner)
	case "amg":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack (_motxillaHE call BIS_fnc_selectRandom);
		
		// Arma principal
		_unitat addWeapon _arma;
	};
	
	// Antitanc (Antitank)
	case "at":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack _motxillaAT;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArma,4];
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_magArma,7];
		(vestContainer _unitat) addMagazineCargoGlobal [_granada,4];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_WHI,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_BLA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_YEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_RED,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_GRE,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_ZARYA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_PLAMYAM,0];
				
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,0];
		(unitBackpack _unitat) addItemCargoGlobal [_magLlencadorRPG7,3];
		(unitBackpack _unitat) addItemCargoGlobal [_magLlencadorRPG7_AT,1];
		(unitBackpack _unitat) addItemCargoGlobal [_magLlencadorRPG7_AP,0];
		(unitBackpack _unitat) addItemCargoGlobal [_magLlencadorRPG7_HE,0];
		
		// Arma principal
		_unitat addWeapon _arma;
		
		// Arma secundària
		_unitat addWeapon _pistolaB_RED;
		
		// Llençador RPG7
		_unitat addWeapon _armaLlencadorAT;
	};
	
	// Assistent d'antitanc (AT Ammo handler)
	case "aat":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack (_motxillaHE call BIS_fnc_selectRandom);
		
		// Arma principal
		_unitat addWeapon _arma;
	};
	
	// Anti aèri (Anti Air gunner)
	case "aa":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack _motxillaAT;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArma,4];
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_magArma,7];
		(vestContainer _unitat) addMagazineCargoGlobal [_granada,4];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_WHI,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_BLA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_YEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_RED,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_GRE,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_ZARYA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_PLAMYAM,0];
				
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,0];
		(unitBackpack _unitat) addItemCargoGlobal [_magLlencadorAA,2];
		
		// Arma principal
		_unitat addWeapon _arma;
		
		// Arma secundària
		_unitat addWeapon _pistolaB_GRE;
		
		// Llençador AA
		_unitat addWeapon _armaLlencadorAA;
	};
	
	// Assistent d'anti aèri (Anti Air Assitant)
	case "aaa":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack (_motxillaHE call BIS_fnc_selectRandom);
		
		// Arma principal
		_unitat addWeapon _arma;
	};
	
	// Enginyer (Engineer)
	case "en":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack (_motxillaHE call BIS_fnc_selectRandom);
		
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
		if (cc_param_modRealisme == 1) then {
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
		// Armilla i motxilla
		_unitat addBackpack _motxillaRADIO;
		removeUniform _unitat;
		_unitat forceAddUniform _uniformeSN;
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArmaSN,6];
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArmaPISTOLA,4];
				
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addItemCargoGlobal [_kestrel,1];
		if (cc_mod_ace3) then {
			(vestContainer _unitat) addItemCargoGlobal [_atragmx,1];
		};
		(vestContainer _unitat) addMagazineCargoGlobal [_magArmaSN,5];
		(vestContainer _unitat) addMagazineCargoGlobal [_granada,5];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_WHI,4];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_BLA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_YEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_RED,3];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_GRE,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,3];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_ZARYA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_PLAMYAM,0];
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_magArmaSN,24];
		(unitBackpack _unitat) addItemCargoGlobal [_armaMiraVN,1];
		(unitBackpack _unitat) addItemCargoGlobal [_pistolaB_GRE,1];
		(unitBackpack _unitat) addItemCargoGlobal [_pistolaB_WHI,1];
		
		// Arma principal
		// Missing muzzle attachment
		_unitat addWeapon _armaSN;
		_unitat addPrimaryWeaponItem _armaMiraSN;
		_unitat addPrimaryWeaponItem _armabipodeSN;
		
		// Arma secundària
		_unitat addWeapon _pistola;
		
		// Prismatics
		_unitat addWeapon _prismatic_PDU4;

	};
	
	// Observador (Spotter)
	case "sp":
	{
		// Uniforme i armilla
		removeUniform _unitat;
		_unitat forceAddUniform _uniformeSN;
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		if (cc_mod_ace3) then {
			(vestContainer _unitat) addItemCargoGlobal [_microDAGR,1];
			(vestContainer _unitat) addItemCargoGlobal [_atragmx,1];
		};
		(vestContainer _unitat) addItemCargoGlobal [_einesMapa,1];
		(vestContainer _unitat) addItemCargoGlobal [_kestrel,1];
		
		_unitat addWeapon _arma;
		
		// Vector IV
		
		// Objectes
		_unitat linkItem _gps;
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
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
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
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
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
	
	// Morter (Mortar)
	case "mt":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack _motxillaMT;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArma,4];		
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,4];
		(vestContainer _unitat) addMagazineCargoGlobal [_magArma,10];
		(vestContainer _unitat) addMagazineCargoGlobal [_granada,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_WHI,1];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_BLA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_YEL,1];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_RED,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_GRE,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_ZARYA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_PLAMYAM,0];
		
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
			(vestContainer _unitat) addItemCargoGlobal [_benesElastiques,3];
			(vestContainer _unitat) addItemCargoGlobal [_benesRapides,3];
			(vestContainer _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(vestContainer _unitat) addItemCargoGlobal [_torniquet,1];
		};
		(vestContainer _unitat) addItemCargoGlobal [_visioNocturna,0];
		
		// Objectes a la motxilla (NO EN POT PORTAR)
		
		// Arma principal
		_unitat addWeapon _armaAKMS;
		
		// Arma secundària
		_unitat addWeapon _pistolaB_WHI;
		
		// Prismatics
		_unitat addWeapon _prismatic;
	};
	
	// Assistent de Morter (Assistant Mortar) 
	case "amt":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack _motxillaAMT;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArma,4];		
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,4];
		(vestContainer _unitat) addMagazineCargoGlobal [_magArma,10];
		(vestContainer _unitat) addMagazineCargoGlobal [_granada,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_WHI,1];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_BLA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_YEL,1];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_RED,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_GRE,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_ZARYA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_PLAMYAM,0];
		
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
			(vestContainer _unitat) addItemCargoGlobal [_benesElastiques,3];
			(vestContainer _unitat) addItemCargoGlobal [_benesRapides,3];
			(vestContainer _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(vestContainer _unitat) addItemCargoGlobal [_torniquet,1];
		};
		(vestContainer _unitat) addItemCargoGlobal [_visioNocturna,0];
				
		// Objectes a la motxilla (NO EN POT PORTAR)
		
		// Arma principal
		_unitat addWeapon _armaAKMS;
		
		// Arma secundària
		_unitat addWeapon _pistolaB_WHI;
		
		// Prismatics
		_unitat addWeapon _prismatic;
	};
	
	// Ametralladora Pesada (Heavy Machine Gun) 
	case "hmg":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack _motxillaHMG;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArma,4];		
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,4];
		(vestContainer _unitat) addMagazineCargoGlobal [_magArma,10];
		(vestContainer _unitat) addMagazineCargoGlobal [_granada,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_WHI,1];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_BLA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_YEL,1];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_RED,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_GRE,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_ZARYA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_PLAMYAM,0];
		
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
			(vestContainer _unitat) addItemCargoGlobal [_benesElastiques,3];
			(vestContainer _unitat) addItemCargoGlobal [_benesRapides,3];
			(vestContainer _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(vestContainer _unitat) addItemCargoGlobal [_torniquet,1];
		};
		(vestContainer _unitat) addItemCargoGlobal [_visioNocturna,0];
		
		// Objectes a la motxilla (NO EN POT PORTAR)
		
		// Arma principal
		_unitat addWeapon _armaAKMS;
		
		// Arma secundària
		_unitat addWeapon _pistolaB_WHI;
		
		// Prismatics
		_unitat addWeapon _prismatic;
	};
	
	// Assistent d'Ametralladora Pesada (Assistant Heavy Machine Gun)
	case "ahmg":
	{
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack _motxillaAHMG;
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArma,4];		
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,4];
		(vestContainer _unitat) addMagazineCargoGlobal [_magArma,10];
		(vestContainer _unitat) addMagazineCargoGlobal [_granada,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_WHI,1];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_BLA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_YEL,1];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_RED,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_GRE,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_ZARYA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_PLAMYAM,0];
		
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
			(vestContainer _unitat) addItemCargoGlobal [_benesElastiques,3];
			(vestContainer _unitat) addItemCargoGlobal [_benesRapides,3];
			(vestContainer _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(vestContainer _unitat) addItemCargoGlobal [_torniquet,1];
		};
		(vestContainer _unitat) addItemCargoGlobal [_visioNocturna,0];
		
		// Objectes a la motxilla (NO EN POT PORTAR)
		
		// Arma principal
		_unitat addWeapon _armaAKMS;
		
		// Arma secundària
		_unitat addWeapon _pistolaB_WHI;
		
		// Prismatics
		_unitat addWeapon _prismatic;
	};
		
	case "ural":
	{
		clearWeaponCargoGlobal _unitat;
		clearMagazineCargoGlobal _unitat;
		clearItemCargoGlobal _unitat;
		clearBackpackCargoGlobal _unitat;
		
		_unitat addWeaponCargoGlobal [_arma,2];
		_unitat addItemCargoGlobal [_armaMiraB, 2];
		_unitat addItemCargoGlobal [_armaMira, 1];
		_unitat addItemCargoGlobal [_armaMira2,1];
		_unitat addItemCargoGlobal [_armaSilenciador,1];
		_unitat addMagazineCargoGlobal [_magArma,20];
		_unitat addMagazineCargoGlobal [_granada,10];
		_unitat addMagazineCargoGlobal [_granadaSMK_WHI,6];
		_unitat addMagazineCargoGlobal [_granadaBEN_YEL,2];
		_unitat addMagazineCargoGlobal [_granadaBEN_RED,4];
		_unitat addMagazineCargoGlobal [_granadaBEN_GRE,3];
		_unitat addMagazineCargoGlobal [_granadaFLA_FAKELS,6];
				
		_unitat addItemCargoGlobal [_morfina,3];
		_unitat addItemCargoGlobal [_epinefrina,3];
		_unitat addItemCargoGlobal [_benes,10];
		_unitat addItemCargoGlobal [_bossaSang500,2];
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
			_unitat addItemCargoGlobal [_atropina,4];
			_unitat addItemCargoGlobal [_benesElastiques,4];
			_unitat addItemCargoGlobal [_benesRapides,5];
			_unitat addItemCargoGlobal [_benesEmpaquetants,5];
			_unitat addItemCargoGlobal [_bossaSalina500,1];
		
			_unitat addItemCargoGlobal [_bossaPlasma500,2];
			
			_unitat addItemCargoGlobal [_kitQuirurgic,1];
			_unitat addItemCargoGlobal [_kitPrimersAuxilis,2];
		};
	};
	
	case "uaz":
	{
		clearWeaponCargoGlobal _unitat;
		clearMagazineCargoGlobal _unitat;
		clearItemCargoGlobal _unitat;
		clearBackpackCargoGlobal _unitat;
		
		_unitat addWeaponCargoGlobal [_armaGR,1];
		_unitat addWeaponCargoGlobal [_pistola,1];
		_unitat addItemCargoGlobal [_armaMira2,1];
		_unitat addItemCargoGlobal [_armaSilenciador,1];
		_unitat addMagazineCargoGlobal [_magArma,12];
		_unitat addMagazineCargoGlobal [_magArmaPISTOLA,3];
		_unitat addMagazineCargoGlobal [_granadaL_TB,5];
		_unitat addMagazineCargoGlobal [_granadaL_SMK_WHI,3];
		_unitat addMagazineCargoGlobal [_granadaL_BEN_WHI,2];
		_unitat addItemCargoGlobal [_prismatic_PDU4,1];
	};
	
	default
	{
		_unitat sideChat format ["DEBUG (cc_equipacio_rhs_insurgents.sqf): el tipus d'unitat %1 no està definit. Utilitzant l'equipació de fuseller.", _tipusUnitat];
		
		// Armilla i motxilla
		_unitat addVest (_armillaCH call BIS_fnc_selectRandom);
		_unitat addBackpack (_motxilla call BIS_fnc_selectRandom);
		
		// Objectes a l'uniforme
		(uniformContainer _unitat) addMagazineCargoGlobal [_magArma,3];
		
		// Objectes a l'armilla
		(vestContainer _unitat) addItemCargoGlobal [_benes,2];
		(vestContainer _unitat) addMagazineCargoGlobal [_magArma,3];
		(vestContainer _unitat) addMagazineCargoGlobal [_granada,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_WHI,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaSMK_BLA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_YEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_RED,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaBEN_GRE,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKEL,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_FAKELS,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_ZARYA,0];
		(vestContainer _unitat) addMagazineCargoGlobal [_granadaFLA_PLAMYAM,0];
		
		// Objectes a la motxilla
		(unitBackpack _unitat) addItemCargoGlobal [_benes,2];
		if (cc_mod_ace3 and cc_param_SistemaMedic == 1) then {
			(unitBackpack _unitat) addItemCargoGlobal [_benesElastiques,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesRapides,3];
			(unitBackpack _unitat) addItemCargoGlobal [_benesEmpaquetants,3];
			(unitBackpack _unitat) addItemCargoGlobal [_torniquet,1];
		};
		(unitBackpack _unitat) addItemCargoGlobal [_visioNocturna,0];
		(unitBackpack _unitat) addMagazineCargoGlobal [_magArma,10];
		(unitBackpack _unitat) addItemCargoGlobal [_pistolaB_RED,1];
		(unitBackpack _unitat) addItemCargoGlobal [_pistolaB_WHI,1];
				
		// Arma principal
		_unitat addWeapon _arma;
		
		// Arma secundària
		_unitat addWeapon _pistolaB_GRE;
		//_unitat addWeapon _pistolaB_RED;
		//_unitat addWeapon _pistolaB_WHI;
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