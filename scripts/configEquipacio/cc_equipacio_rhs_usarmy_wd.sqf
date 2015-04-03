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
	removeAllItems _unitat;
	removeAllAssignedItems _unitat;
	removeUniform _unitat;
	removeVest _unitat;
	removeBackpack _unitat;
	removeHeadgear _unitat;
	removeGoggles _unitat;
};

// Elements comuns
_uniforme = "rhs_uniform_cu_ocp_patchless";
_armilla = "rhsusf_iotv_ocp_Squadleader";
_motxilla = "rhsusf_assault_eagleaiii_ocp";
_casc = "rhsusf_ach_helmet_headset_ocp";

_gps = "ItemGPS";
_rellotge = "ItemWatch";
_mapa = "ItemMap";
_brujola = "ItemCompass";
_radio = "ItemRadio";
_terminalUAV = "B_UavTerminal";

// Configurar l'equip per cada unitat
switch (_tipusUnitat) do
{
	// Líder d'Esquadra
	case "lideresquadra":
	{
		
	};
	
	// Líder d'Equip
	case "liderequip":
	{
		
	};
	
	// Fuseller
	case "fuseller":
	{
		
	};
	
	// Granader
	case "granader":
	{
		
	};
	
	// Fuseller automàtic
	case "fusellerautomatic":
	{
		
	};
	
	// Metrallador
	case "metrallador":
	{
		
	};
	
	// Antitanc
	case "antitanc":
	{
		
	};
	
	// Tirador
	case "tirador":
	{
		
	};
	
	// Metge
	case "metge":
	{
		
	};
	
	// Explosius
	case "explosius":
	{
		
	};
	
	// Franctirador
	case "franctirador":
	{
		
	};
};

// Insiginia de la unitat
[_unitat,"PATCH_CC_CC"] call bis_fnc_setUnitInsignia;