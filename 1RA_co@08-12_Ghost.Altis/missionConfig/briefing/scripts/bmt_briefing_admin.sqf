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
- Advanced Combat Environment 3 (ACE3) v3.5.0.
<br/>
- Advanced Combat Radio Environment 2 (ACRE2) v2.1.0.
<br/>
- Community Base Addons (CBA) v2.3.1.
<br/>
- Dynamic-AI-Creator (DAC) v3.1b (Required).
<br/>
- RHS United States Army Forces (RHS USAF) v0.4.0.1. (Required)
<br/>
- Task Force Arrowhead Radio (TFAR) v0.9.7.3.
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
<font color='#00FFFF'>Mission name:</font> ""Operation Ghost"".
<br/>
<font color='#00FFFF'>Version</font> 1.1.
<br/>
<font color='#00FFFF'>Author:</font> TheMagnetar.
<br/>
<font color='#00FFFF'>Collaborators:</font> -.
<br/>
<font color='#00FFFF'>Minimum number of players:</font> 8.
<br/>
<font color='#00FFFF'>Maximum number of players:</font> 12.
<br/>
<font color='#00FFFF'>Respawn:</font> None (Spectator).
<br/>
<font color='#00FFFF'>Difficulty:</font> High.
<br/>
<font color='#00FFFF'>Mission summary:</font> Operation ""Ghost"" is a mission where two fire teams and a sniper team must eliminate an enemy officer in a highly populated
civilian area. In order to complete the objective, between 8 to 12 well coordinated players are required, since it is considered a difficult mission. The task is not updated
once it is completed and therefore, the players must decide if they have completed it or not.
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
