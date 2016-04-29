/*
	missionBriefing.hpp - Template Mission by MistyRonin

	Description: 

		Mission's specific part of the briefing. 

		(You can find the default briefing here system\briefing.hpp)
*/

class CfgRadio 
{
	sounds[] = {};

	class radio1 // CPT
	{
		name = "radio1";
		sound[] = {"\sound\Radio1", db+10, 1.0};
		title = "Good morning Dimopoulos. First I would like to congratulate for your promotion.";
	};
};