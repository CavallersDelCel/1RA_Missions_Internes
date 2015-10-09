//=======================================================================================================//
// Arxiu: fn_configGrup.sqf                                                                              //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 2015/10/03                                                                      //
// Descripció: Aquest document serveix per definir els grups al que pertany la unitat. Té efectes en les //
//             freqüències de les ràdios, els canals per defecte i en com es mostra el nom al xat.       //
// Canvis: 0.1 (2015/10/03) Versió inicial.                                                              //
//=======================================================================================================//

params [["_nomGrup", nil], ["_indexSubgrup", -1], "_unitat"];
private["_grup"];

// Guardar el grup per tal de poder-lo referenciar més endavant.
_unitat setVariable["cc_var_grupUnitat",[_nomGrup,_indexSubgrup],true];

// Configurar el xat si el grup està definit
if (!isNil "_nomGrup") then {
    _grup = group _unitat;
    if (_indexSubgrup != -1) then {
        _grup setGroupId [format["%1 %2", _nomGrup, _indexSubgrup], "GroupColor0"];
    } else {
      _grup setGroupId [format["%1", _nomGrup], "GroupColor0"];
    };
};

//============================================ FI DEL FITXER ============================================//
