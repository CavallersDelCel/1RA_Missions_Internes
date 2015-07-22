//=======================================================================================================//
// Arxiu: fn_tfar_afegirRadios.sqf                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 09/03/2015                                                                      //
// Descripció: Aquest document serveix per afegir les radios a l'inventari de forma que es pugui         //
//             decidir quines radios es fan servir durant la partida en cas de que no es vulguin fer     //
//             servir les que van per defecte als perfils. Task Force Arrowhead Radio (TFAR)             //
//             https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki                          //
//=======================================================================================================//

// Declaració de variables.
private["_unitat", "_tipusUnitat", "_radioLR","_radioSR","_radioRF", "_radioActiva" ,"_objectesMotxilla"];

_unitat = player;

_tipusUnitat = _unitat getVariable ["cc_var_configEquipacio", "NIL"];

// Definir les radios que s'assignaran.
//   - radioLR: Long Range Radio.
//   - radioSR: Short Range Radio.
//   - radioRF: Rifleman Radio.

if (cc_tfar_config_utilitzarRadiosPerDefecte) then {
    switch ((side player)) do {
        case (west):
        {
            _radioLR = TF_defaultWestBackpack;
            _radioSR = TF_defaultWestPersonalRadio;
            _radioRF = TF_defaultWestRiflemanRadio;
        };
        case (east):
        {
            _radioLR = TF_defaultEastBackpack;
            _radioSR = TF_defaultEastPersonalRadio;
            _radioRF = TF_defaultEastRiflemanRadio;
        };
        default {
            _radioLR = TF_defaultGuerBackpack;
            _radioSR = TF_defaultGuerPersonalRadio;
            _radioRF = TF_defaultGuerRiflemanRadio;
        };
    };
} else {
    switch ((side player)) do {
        case (west):
        {
            _radioLR = "tf_rt1523g_big_rhs";
            _radioSR = TF_defaultWestPersonalRadio;
            _radioRF = TF_defaultWestRiflemanRadio;
        };
        case (east):
        {
            _radioLR = TF_defaultEastBackpack;
            _radioSR = TF_defaultEastPersonalRadio;
            _radioRF = TF_defaultEastRiflemanRadio;
        };
        default {
            _radioLR = TF_defaultGuerBackpack;
            _radioSR = TF_defaultGuerPersonalRadio;
            _radioRF = TF_defaultGuerRiflemanRadio;
        };
    };
};

// Assignar radios depenent del tipus d'unitat (fn_configEquipacio).
if(_tipusUnitat != "nil") then {

    // Si les radios estan habilitades, cal assignar-les depenent del rol.
    if(cc_tfar_config_distribuirRadios) then {
    
        if( !tf_give_microdagr_to_soldier) then {
            _unitat unlinkItem "ItemWatch";
            _unitat linkItem "ItemWatch";
        };
                
        // Assignar radios de Rifleman i curt abast (Short range).
        if(_tipusUnitat in cc_tfar_llistaRF ) then {
            _unitat linkItem _radioRF;
        } else {
            if(_tipusUnitat in cc_tfar_llistaSR) then {
                _unitat linkItem _radioSR;
            };
        };
        
        // Assignar les radios de llarg abast i tot el material que originariament.
        // hi havia a la motxila
        if( _tipusUnitat in cc_tfar_llistaLR ) then {
            _objectesMotxilla = backpackItems player;
            removeBackpack _unitat;
            _unitat addBackpack _radioLR;
            {
                _unitat addItemToBackpack _x
            } forEach _objectesMotxilla;
        };    
    };
};

//============================================ FI DEL FITXER ============================================//
