class EmtpyLine1
{
	title = ":: Parametres de missio";
	values[]={0,0};
	texts[]={ "",""};
	default = 0;
};
class paramDaytimeHour
{
	title = "    Hora del dia:";
	values[] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,0};
	texts[] = {"0100","0200","0300","0400","0500","0600","0700","0800","0900","1000","1100","1200","1300","1400","1500","1600","1700","1800","1900","2000","2100","2200","2300","2400","Aleatori"};
	default = 12;
};
/*
//class paramDaytimeHour
#define DAYTIMEHOUR_DEFAULT	12
#include "\a3\functions_f\Params\paramDaytimeHour.hpp"
*/
class PARAM_Rain
{
	title= "    Parametres del clima:";
	values[]= {0,1,3,6,90,99};
	texts[]= {"Clima aleatori i sense pluja","Clima aleatori i amb pluja","%30 Pluja","%60 Pluja","Tesmpesta i pluja forta","Tempesta sense pluja"};
	default= 1;
};
class PARAM_Teamdead
{
	title = "    Falla la missio quan l'equip es eliminat:";
	values[] = {1,0};
	texts[] = {"Si","No"};
	default = 0;
};
class PARAM_AISkill
{
	title= "    Precisio i velocitat de la IA";
	values[]= { 1,2,3,4,5,6,7,8,9,10 };
	texts[]= { "0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1.0" };
	default= 3;
	code = "";
};
class PARAM_Tasks
{
	title = "    Nombre de tasques:";
	values[] = {8,7,6,5,4,3,2,1};
	texts[] = {"8","7","6","5","4","3","2","1"};
	default = 3;
};
class PARAM_Enemy
{
	title = "    Tipus d'enemic:";
	values[] = {2,1,0};
	texts[] = {"Aleatori","Exercit Grec","Exercit Irania"};
	default = 2;
};
class PARAM_Kavala
{
	title = "    Nombre de localitzacions:";
	values[] = {3,2,1,0};
	texts[] = {"Totes","Meitat","Nomes Kavala","Aleatori"};
	default = 3;
};
class PARAM_Fatigue
{
	title = "    Fatiga de jugador:";
	values[] = {1,0};
	texts[] = {"Activat","Desactivat"};
	default = 0;
};
class PARAM_PlayerVehicles
{
	title = "    Nombre de vehicles permesos per jugador:";
	values[] = {1,2,3,4,5,6};
	texts[] = {"1","2","3","4","5","6"};
	default = 6;
};
class EmtpyLine2
{
	title = ":: Parametres de Mods";
	values[]={0,0};
	texts[]={ "",""};
	default = 0;
};
class PARAM_RAVLIFTER
{
	title = "    Raven's Lifter:";
	values[] = {0,1};
	texts[] = {"Desactivat Raven's Lifter","Activat Raven's Lifter"};
	default = 0;
};
class PARAM_NIMITZ
{
	title = "    Nimitz Carrier:";
	values[] = {0,1};
	texts[] = {"Desactivat Nimitz Carrier","Activat Nimitz Carrier"};
	default = 0;
};
class PARAM_JET
{
	title = "    MOD JETS:";
	values[] = {0,1};
	texts[] = {"Desactivat JS FA18","Activat JS FA18"};
	default = 0;
};
class PARAM_C130
{
	title = "    C130:";
	values[] = {0,1};
	texts[] = {"Desactivat C-130","Activat C-130"};
	default = 0;
};
class PARAM_MH47E
{
	title = "    MH47E:";
	values[] = {0,1};
	texts[] = {"Desactivat MH-47E","Activat MH-47E"};
	default = 0;
};
class EmtpyLine3
{
	title = ":: Parametres medics de l'AGM";
	values[]={0,0};
	texts[]={ "",""};
	default = 0;
};
class PARAM_AGMMEDICAL
{
	title = "    AGM Medical:";
	values[] = {0,1};
	texts[] = {"Desactivat AGM Medical","Activat AGM Medical"};
	default = 1;
};
class PARAM_MaxUnconsciousnessTime
{
	title = "    Temps maxim d'inconsciencia fins a la mort:";
	values[] = {-1,60,120,180,240,300};
	texts[] = {"Desactivat","1 Min","2 Min","3 Min","4 Min","5 Min"};
	default = 180;
};
class PARAM_AllowNonmedics
{
	title = "    Permetre epinefrina/bosses de plasma a soldat no medics:";
	values[] = {0,1};
	texts[] = {"NO","SI"};
	default = 1;
};
class PARAM_PunishNonMedics
{
	title = "    Castigar soldats no medics:";
	values[] = {0,1};
	texts[] = {"NO","SI"};
	default = 1;
};
class PARAM_RequireDiagnosis
{
	title = "    Requerir diagnosi:";
	values[] = {0,1};
	texts[] = {"NO","SI"};
	default = 0;
};
class PARAM_PreventInstaDeath
{
	title = "    Prevenir mort instantania:";
	values[] = {0,1};
	texts[] = {"NO","SI"};
	default = 0;
};
class PARAM_PreventDeathWhileUnconscious
{
	title = "    Prevenir la mort mentre s'esta inconscient:";
	values[] = {0,1};
	texts[] = {"NO","SI"};
	default = 0;
};
class PARAM_SingleBandage
{
	title = "    Embenat individual cura:";
	values[] = {0,1};
	texts[] = {"NO","SI"};
	default = 0;
};
class PARAM_AllowChatWhileUnconscious
{
	title = "    Permetre el xat mentre s'esta inconscient:";
	values[] = {0,1};
	texts[] = {"NO","SI"};
	default = 1;
};
/*class PARAM_HeadlessClient
{
	title = "Headless Client:";
	values[] = {1,0};
	texts[] = {"ON","OFF"};
	default = 0;
};
*/