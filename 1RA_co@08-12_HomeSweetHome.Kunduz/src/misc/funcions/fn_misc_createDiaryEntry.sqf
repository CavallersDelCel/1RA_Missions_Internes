//=======================================================================================================//
// File: fn_misc_createDiaryEntry.sqf                                                                    //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/05/28                                                                             //
// Description: Creation of diary entries that require to be produced mid-mission.                       //
//              Arguments:                                                                               //
//               - 0: unit <OBJECT>.                                                                     //
//               - 1: entry title <STRING>.                                                              //
//               - 2: entry text <STRING>.                                                               //
//               - 3: scope. 0 unit, 1 group, 2 all players (faction), 3 all players (side),             //
//                    4 all playable units.                                                              //
//               - 4: open map upon entry creation? (Only passed unit)                                   //
//               - 5: hint text to display (optional).                                                   //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

params ["_unit", "_title", "_text", ["_scope",1], ["_openMap", false], ["_hintText",nil]];
private ["_unitList", "_faction", "_unitFaction", "_side", "_unitSide"];

_unitList = [];

switch (_scope) do {

    // Only passed unit
    case 0: {
        _unitList = [_unit];
    };

    // Only playabe units of the same group.
    case 1: {
        _unitList  = +units (group _unit);
    };

    // Only playabe units of the same faction.
    case 2: {
        _unitFaction = toLower (faction _unit);
        {
            _faction = toLower (faction _x);
            if (_faction == _unitFaction) then {
                _unitList pushBack _x;
            };
        } forEach playableUnits;
    };

    // Only playabe units of the same side.
    case 3: {
        _unitSide = toLower (side _unit);
        {
            _side = toLower (side _x);
            if (_side == _unitSide) then {
                _unitList pushBack _x;
            };
        } forEach playableUnits;
    };

    // All playable units.
    case 4: {
        _unitList = +playableUnits;
    };

    default {
        _unit sideChat format ["DEBUG (fn_misc_createDiaryEntry.sqf): unrecognised scope: %1", _scope];
    };
};

// Open map if desired (only where the passed unit is local)
if (local _unit) then {
    openMap _openMap;
};

// Create the diary entry and text hint for those units that qualify.
{
    _x createDiaryRecord ["Diary", [_title, _text]];
    processDiaryLink (createDiaryLink ["Diary", _unit, _title]);
    if (!isNil "_hintText") then {
        _hintText call BIS_fnc_infoText;
    };
} forEach _unitList;

//============================================= END OF FILE =============================================//
