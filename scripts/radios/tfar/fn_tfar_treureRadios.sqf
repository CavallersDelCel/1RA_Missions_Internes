//=======================================================================================================//
// Arxiu: fn_tfar_treureRadios.sqf                                                                       //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 09/03/2015                                                                      //
// Descripció: Aquest document serveix per esborrar les radios a l'inventari de forma que es pugui       //
//             decidir quines radios es fan servir durant la partida en cas de que no es vulguin fer     //
//             servir les que van per defecte als perfils. Task Force Arrowhead Radio (TFAR)             //
//             https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki                          //
//=======================================================================================================//

// Declaració de variables.
private["_unitat","_isRadio"];

_unitat = player;

// Esborrar totes les radios utilitzant les funcions del TFAR.
{
    _isRadio = _x call TFAR_fnc_isRadio;
    if(_isRadio) then
    {
        _unitat unlinkItem _x;
    };
} foreach items _unitat;

{
    _isRadio = _x call TFAR_fnc_isRadio;
    if(_isRadio) then
    {
        _unitat unlinkItem _x;
    };
} foreach assignedItems _unitat;

//============================================ FI DEL FITXER ============================================//
