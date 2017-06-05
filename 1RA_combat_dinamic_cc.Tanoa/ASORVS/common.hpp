///////////////////////////////////////////////////////////////////////////
/// Styles
///////////////////////////////////////////////////////////////////////////

// Control types
#define CT_STATIC 0
#define CT_BUTTON 1
#define CT_EDIT 2
#define CT_SLIDER 3
#define CT_COMBO 4
#define CT_LISTBOX 5
#define CT_TOOLBOX 6
#define CT_CHECKBOXES 7
#define CT_PROGRESS 8
#define CT_HTML 9
#define CT_STATIC_SKEW 10
#define CT_ACTIVETEXT 11
#define CT_TREE 12
#define CT_STRUCTURED_TEXT 13
#define CT_CONTEXT_MENU 14
#define CT_CONTROLS_GROUP 15
#define CT_SHORTCUTBUTTON 16
#define CT_XKEYDESC 40
#define CT_XBUTTON 41
#define CT_XLISTBOX 42
#define CT_XSLIDER 43
#define CT_XCOMBO 44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT 80
#define CT_OBJECT_ZOOM 81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK 98
#define CT_USER 99
#define CT_MAP 100
#define CT_MAP_MAIN 101
#define CT_LISTNBOX 102
#define CT_CHECKBOX 77

// Static styles
#define ST_POS 0x0F
#define ST_HPOS 0x03
#define ST_VPOS 0x0C
#define ST_LEFT 0x00
#define ST_RIGHT 0x01
#define ST_CENTER 0x02
#define ST_DOWN 0x04
#define ST_UP 0x08
#define ST_VCENTER 0x0C

#define ST_TYPE 0xF0
#define ST_SINGLE 0x00
#define ST_MULTI 0x10
#define ST_TITLE_BAR 0x20
#define ST_PICTURE 0x30
#define ST_FRAME 0x40
#define ST_BACKGROUND 0x50
#define ST_GROUP_BOX 0x60
#define ST_GROUP_BOX2 0x70
#define ST_HUD_BACKGROUND 0x80
#define ST_TILE_PICTURE 0x90
#define ST_WITH_RECT 0xA0
#define ST_LINE 0xB0

#define ST_SHADOW 0x100
#define ST_NO_RECT 0x200
#define ST_KEEP_ASPECT_RATIO 0x800

#define ST_TITLE ST_TITLE_BAR+ST_CENTER

// Slider styles
#define SL_DIR 0x400
#define SL_VERT 0
#define SL_HORZ 0x400

#define SL_TEXTURES 0x10

// progress bar 
#define ST_VERTICAL 0x01
#define ST_HORIZONTAL 0

// Listbox styles
#define LB_TEXTURES 0x10
#define LB_MULTI 0x20

// Tree styles
#define TR_SHOWROOT 1
#define TR_AUTOCOLLAPSE 2

// MessageBox styles
#define MB_BUTTON_OK 1
#define MB_BUTTON_CANCEL 2
#define MB_BUTTON_USER 4


///////////////////////////////////////////////////////////////////////////
/// Base Classes
///////////////////////////////////////////////////////////////////////////
class ASORVS_RscText {
	colorBackground[]={0,0,0,0};
	colorText[]={1,1,1,1};
		font="PuristaMedium";
	colorBackground[]={0,0,0,1};
	colorSelect[]={0,0,0,1};
		color[] = {1, 1, 1, 0.6};
		colorActive[] = {1, 1, 1, 1};
		colorDisabled[] = {1, 1, 1, 0.3};
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
	};
		color[]={1,1,1,0.6};
	arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
		color[]={1,1,1,0.6};
		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
	class HitZone{
		left=0;
		left=0;
		left="(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * (3/4)";
		font="PuristaMedium";
		font="PuristaMedium";
	color[]={1,1,1,1};
		left=0;
		left=0.0145;
		font="PuristaMedium";
	colorBackground[]={0,0,0,0};
	color[]={1,1,1,0.8};
	colorText[]={0,0,0,0};
	color[]={1,1,1,0.7};
	idc=-1;
	idc=-1;
	textureNoShortcut="#(argb,8,8,3)color(0,0,0,0)";
		left="0.25 * (((safezoneW / safezoneH) min 1.2) / 40)";
		font="PuristaLight";
	class VScrollbar{color[]={1,1,1,1};
class ASORVS_RscProgress 
{
	type = 8;
	style = 0;
	x = 0.344;
	y = 0.619;
	w = 0.313726;
	h = 0.0261438;
	shadow = 2;
	texture = "\A3\ui_f\data\GUI\RscCommon\RscProgress\progressbar_ca.paa";
	colorFrame[] = {0,0,0,0};
	colorBar[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.8])"};
};
	idc=-1;
//	type=11;
	style=0;
	type=0;
	x=0;
	y=0;
	h=0.037;
	w=0.3;
	sizeEx=0.040;
	font="PuristaLight";
	color[]={1,1,1,1};
	colorActive[]={1,1,1,1};
	colorText[] = {0.95, 0.95, 0.95, 1};
	soundEnter[]={"\A3\ui_f\data\Sound\RscButtonMenu\soundEnter",0.09,1};
	soundPush[]={"\A3\ui_f\data\Sound\RscButtonMenu\soundPush",0.0,0};
	soundClick[]={"\A3\ui_f\data\Sound\RscButtonMenu\soundClick",0.07,1};
	soundEscape[]={"\A3\ui_f\data\Sound\RscButtonMenu\soundEscape",0.09,1};
	action="";
	text="";
};
class ASORVS_RscTitle : ASORVS_RscText {
	style = 0;
	sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	colorText[] = {0.95, 0.95, 0.95, 1};
};