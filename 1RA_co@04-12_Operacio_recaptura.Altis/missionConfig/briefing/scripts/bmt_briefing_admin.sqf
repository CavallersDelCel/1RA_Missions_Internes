//=======================================================================================================//
// File: bmt_briefing_admin.sqf                                                                          //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/02/22                                                                             //
// Description: This document provides additional information to the administrator. Since only the       //
//              administrator can view this additional remarks, advices and notes can be given.          //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

private ["_briefingAdmin", "_briefingNotes", "_briefingEndings"];
private ["_debriefingEntries", "_endingEntry", "_endingTitle", "_endingDescription"];

//=======================================================================================================//
// MESSAGES ONLY SHOWN TO THE ADMINISTRATOR.                                                             //
//=======================================================================================================//

//=======================================================================================================//
// NOTES: ADMINISTRATOR.                                                                                 //
//=======================================================================================================//
_briefingAdmin = "
<font color='#FF0000' size='18'>Information for the administrator</font>
<br/>
This mission runs correctly using the following:
<br/><br/>
- Advanced Combat Environment 3 (ACE3) v3.5.1.
<br/>
- Advanced Combat Radio Environment 2 (ACRE2) v2.1.0.
<br/>
- Advanced Live Infantry Virtual Environment (ALIVE) v1.0.4. (Required)
<br/>
- Community Base Addons (CBA) v2.3.1.
<br/>
- Dynamic-AI-Creator (DAC) v3.1b. (Required)
<br/>
- Mine Detector v1.11. (Required)
<br/>
- RHS United States Army Forces (RHS USAF) v0.4.0.1. (Required)
<br/>
- Task Force Arrowhead Radio (TFAR) v0.9.7.3.*** List of addons with the corresponding tested version number. ***
<br/><br/>
If the previous requirements are not met, the mission ought to be tested before playing it.
<br/>
";

//=======================================================================================================//
// NOTES: MISSION AUTHOR'S REMARKS.                                                                      //
//=======================================================================================================//

_briefingNotes = "
<br/>
<font color='#FF0000' size='18'>Mission author's remarks</font>
<br/>
<font color='#00FFFF'>Mission name:</font> ""Operació recaptura"".
<br/>
<font color='#00FFFF'>Version</font> 1.0.
<br/>
<font color='#00FFFF'>Author:</font> Viper.
<br/>
<font color='#00FFFF'>Collaborators:</font> Magnetar.
<br/>
<font color='#00FFFF'>Minimum number of players:</font> 4.
<br/>
<font color='#00FFFF'>Maximum number of players:</font> 14.
<br/>
<font color='#00FFFF'>Respawn:</font> Sense reaparicio.
<br/>
<font color='#00FFFF'>Difficulty:</font> Dificultat mitja.
<br/>
<font color='#00FFFF'>Mission summary:</font>
<br/><br/>
Aquesta missio es va crear pensant en fer servir el RHS americà, l'ACE 3 i l'ALIVE.
";

//=======================================================================================================//
// NOTES: MISSION ENDINGS.                                                                               //
//=======================================================================================================//

_briefingEndings = "
<br/>
<font color='#FF0000' size='18'>Different mission endings</font>
<br/>
Select one of the endings in order to trigger it.
<br/><br/>
";

// List all debriefing entries defined in "bmt_missionDebriefing.hpp" automatically.
_debriefingEntries = (missionConfigFile >> "CfgDebriefing");
for [{ _x = 0 }, {_x < count _debriefingEntries}, { _x = _x + 1}] do {
    _endingEntry = (configName ((missionConfigFile >> "CfgDebriefing") select _x));
    _endingTitle = getText (missionConfigFile >> "CfgDebriefing" >> format["%1",_endingEntry] >> "title");
    _endingDescription = getText (missionConfigFile >> "CfgDebriefing" >> format["%1",_endingEntry] >> "description");
    _briefingEndings = _briefingEndings + format [
    "<execute expression=""['%1',true] remoteExec ['BIS_fnc_endMission', 0, true];"">- %2</execute>: %3.<br/>", _endingEntry, _endingTitle, _endingDescription
    ];
};

_briefing = _briefingAdmin + _briefingNotes + _briefingEndings;

//=======================================================================================================//
// DIARY ENTRY CREATION.                                                                                 //
//=======================================================================================================//
player createDiaryRecord ["diary", ["Admin",_briefing]];

//============================================= END OF FILE =============================================//
