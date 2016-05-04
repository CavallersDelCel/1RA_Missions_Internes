//=======================================================================================================//
// File: fn_tfar_removeRadios.sqf                                                                        //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 09/03/2015                                                                             //
// Description: This function removes all radios from the inventory in order to be able, later on, to    //
//              distribute (or not) the adequate radios for the mission. Task Force Arrowhead Radio      //
//              (TFAR) https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki                  //
//              Arguments:                                                                               //
//               - none                                                                                  //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Variable declarations.
private["_unit","_isRadio"];

_unit = player;

// Remove all radios from unit's inventory using TFAR API.
{
    _isRadio = _x call TFAR_fnc_isRadio;
    if(_isRadio) then
    {
        _unit unlinkItem _x;
    };
} foreach items _unit;

{
    _isRadio = _x call TFAR_fnc_isRadio;
    if(_isRadio) then
    {
        _unit unlinkItem _x;
    };
} foreach assignedItems _unit;

//============================================= END OF FILE =============================================//
