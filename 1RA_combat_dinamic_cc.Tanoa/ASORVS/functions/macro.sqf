
//can't define defines :(
/*#define hash #

#define MULTICOMBO(VARNAME,FIRSTIDC) \
	hash##define ASORVS_##VARNAME##_combo (FIRSTIDC+1)
	hash##define ASORVS_##VARNAME##_minus (FIRSTIDC+2) \
	hash##define ASORVS_##VARNAME##_count (FIRSTIDC+3) \
	hash##define ASORVS_##VARNAME##_plus (FIRSTIDC+4) ;

	MULTICOMBO(launcherAmmo,420060);
*/

#define ASORVS_Main_Display 418000

#define ASORVS_Description 426001

#define ASORVS_save_dialog 420999
#define ASORVS_save_listbox 421000
#define ASORVS_save_textbox 421001
#define ASORVS_save_cancel 421002
#define ASORVS_save_save 421003
#define ASORVS_save_delete 421004

#define ASORVS_deleteconfirm_dialog 421999
#define ASORVS_deleteconfirm_text 422001
#define ASORVS_deleteconfirm_cancel 422002
#define ASORVS_deleteconfirm_delete 422003

#define ASORVS_preset_label 419000
#define ASORVS_preset_combo 419001
//new combo boxes
#define ASORVS_primary_label 420000
#define ASORVS_vehicle_combo 420001

#define ASORVS_primaryAmmo_label 420010
#define ASORVS_primaryAmmo1_combo 420011
#define ASORVS_primaryAmmo1_minus 420012
#define ASORVS_primaryAmmo1_count 420013
#define ASORVS_primaryAmmo1_plus 420014

#define ASORVS_primaryAmmo2_combo 420021
#define ASORVS_primaryAmmo2_minus 420022
#define ASORVS_primaryAmmo2_count 420023
#define ASORVS_primaryAmmo2_plus 420024

#define ASORVS_primaryAmmo3_combo 420031
#define ASORVS_primaryAmmo3_minus 420032
#define ASORVS_primaryAmmo3_count 420033
#define ASORVS_primaryAmmo3_plus 420034

#define ASORVS_primaryAmmo4_combo 420041
#define ASORVS_primaryAmmo4_minus 420042
#define ASORVS_primaryAmmo4_count 420043
#define ASORVS_primaryAmmo4_plus 420044

#define ASORVS_primaryAmmo5_combo 420051
#define ASORVS_primaryAmmo5_minus 420052
#define ASORVS_primaryAmmo5_count 420053
#define ASORVS_primaryAmmo5_plus 420054

#define ASORVS_primaryScope_label 420060
#define ASORVS_primaryScope_combo 420061

#define ASORVS_primaryRail_label 420070
#define ASORVS_primaryRail_combo 420071

#define ASORVS_primarySuppressor_label 420080
#define ASORVS_primarySuppressor_combo 420081

#define ASORVS_launcher_label 420090
#define ASORVS_launcher_combo 420091


#define ASORVS_launcherAmmo_label 420100

#define ASORVS_launcherAmmo1_combo 420101
#define ASORVS_launcherAmmo1_minus 420102
#define ASORVS_launcherAmmo1_count 420103
#define ASORVS_launcherAmmo1_plus 420104

#define ASORVS_launcherAmmo2_combo 420111
#define ASORVS_launcherAmmo2_minus 420112
#define ASORVS_launcherAmmo2_count 420113
#define ASORVS_launcherAmmo2_plus 420114
#define ASORVS_launcherAmmo3_combo 420121
#define ASORVS_launcherAmmo3_minus 420122
#define ASORVS_launcherAmmo3_count 420123
#define ASORVS_launcherAmmo3_plus 420124
#define ASORVS_launcherAmmo4_combo 420131
#define ASORVS_launcherAmmo4_minus 420132
#define ASORVS_launcherAmmo4_count 420133
#define ASORVS_launcherAmmo4_plus 420134
#define ASORVS_launcherAmmo5_combo 420141
#define ASORVS_launcherAmmo5_minus 420142
#define ASORVS_launcherAmmo5_count 420143
#define ASORVS_launcherAmmo5_plus 420144

#define ASORVS_launcherScope_label 420150
#define ASORVS_launcherScope_combo 420151

#define ASORVS_handgun_label 420160
#define ASORVS_handgun_combo 420161

#define ASORVS_handgunAmmo_label 420170
#define ASORVS_handgunAmmo1_combo 420171
#define ASORVS_handgunAmmo1_minus 420172
#define ASORVS_handgunAmmo1_count 420173
#define ASORVS_handgunAmmo1_plus 420174
#define ASORVS_handgunAmmo2_combo 420181
#define ASORVS_handgunAmmo2_minus 420182
#define ASORVS_handgunAmmo2_count 420183
#define ASORVS_handgunAmmo2_plus 420184
#define ASORVS_handgunAmmo3_combo 420191
#define ASORVS_handgunAmmo3_minus 420192
#define ASORVS_handgunAmmo3_count 420193
#define ASORVS_handgunAmmo3_plus 420194
#define ASORVS_handgunAmmo4_combo 420201
#define ASORVS_handgunAmmo4_minus 420202
#define ASORVS_handgunAmmo4_count 420203
#define ASORVS_handgunAmmo4_plus 420204
#define ASORVS_handgunAmmo5_combo 420211
#define ASORVS_handgunAmmo5_minus 420212
#define ASORVS_handgunAmmo5_count 420213
#define ASORVS_handgunAmmo5_plus 420214

#define ASORVS_handgunScope_label 420220
#define ASORVS_handgunScope_combo 420221

#define ASORVS_handgunSuppressor_label 420230
#define ASORVS_handgunSuppressor_combo 420231

#define ASORVS_uniform_label 420240
#define ASORVS_uniform_combo 420241

#define ASORVS_headgear_label 420250
#define ASORVS_headgear_combo 420251

#define ASORVS_vest_label 420260
#define ASORVS_vest_combo 420261

#define ASORVS_backpack_label 420270
#define ASORVS_backpack_combo 420271

#define ASORVS_goggles_label 422000
#define ASORVS_goggles_combo 422001

#define ASORVS_nightvision_label 422010
#define ASORVS_nightvision_combo 422011

#define ASORVS_binoculars_label 422020
#define ASORVS_binoculars_combo 422021

#define ASORVS_grenade_label 420300
#define ASORVS_grenade1_combo 420301
#define ASORVS_grenade1_minus 420302
#define ASORVS_grenade1_count 420303
#define ASORVS_grenade1_plus 420304

#define ASORVS_grenade2_combo 420311
#define ASORVS_grenade2_minus 420312
#define ASORVS_grenade2_count 420313
#define ASORVS_grenade2_plus 420314

#define ASORVS_grenade3_combo 420321
#define ASORVS_grenade3_minus 420322
#define ASORVS_grenade3_count 420323
#define ASORVS_grenade3_plus 420324

#define ASORVS_grenade4_combo 420331
#define ASORVS_grenade4_minus 420332
#define ASORVS_grenade4_count 420333
#define ASORVS_grenade4_plus 420334

#define ASORVS_grenade5_combo 420341
#define ASORVS_grenade5_minus 420342
#define ASORVS_grenade5_count 420343
#define ASORVS_grenade5_plus 420344

#define ASORVS_explosives_label 420350
#define ASORVS_explosives1_combo 420351
#define ASORVS_explosives1_minus 420352
#define ASORVS_explosives1_count 420353
#define ASORVS_explosives1_plus 420354

#define ASORVS_explosives2_combo 420361
#define ASORVS_explosives2_minus 420362
#define ASORVS_explosives2_count 420363
#define ASORVS_explosives2_plus 420364

#define ASORVS_explosives3_combo 420371
#define ASORVS_explosives3_minus 420372
#define ASORVS_explosives3_count 420373
#define ASORVS_explosives3_plus 420374

#define ASORVS_explosives4_combo 420381
#define ASORVS_explosives4_minus 420382
#define ASORVS_explosives4_count 420383
#define ASORVS_explosives4_plus 420384

#define ASORVS_explosives5_combo 420391
#define ASORVS_explosives5_minus 420392
#define ASORVS_explosives5_count 420393
#define ASORVS_explosives5_plus 420394

#define ASORVS_medical_label 420400
#define ASORVS_medical1_combo 420401
#define ASORVS_medical1_minus 420402
#define ASORVS_medical1_count 420403
#define ASORVS_medical1_plus 420404

#define ASORVS_medical2_combo 420411
#define ASORVS_medical2_minus 420412
#define ASORVS_medical2_count 420413
#define ASORVS_medical2_plus 420414

#define ASORVS_medical3_combo 420421
#define ASORVS_medical3_minus 420422
#define ASORVS_medical3_count 420423
#define ASORVS_medical3_plus 420424

#define ASORVS_medical4_combo 420431
#define ASORVS_medical4_minus 420432
#define ASORVS_medical4_count 420433
#define ASORVS_medical4_plus 420434

#define ASORVS_medical5_combo 420441
#define ASORVS_medical5_minus 420442
#define ASORVS_medical5_count 420443
#define ASORVS_medical5_plus 420444

#define ASORVS_medical6_combo 420451
#define ASORVS_medical6_minus 420452
#define ASORVS_medical6_count 420453
#define ASORVS_medical6_plus 420454

#define ASORVS_medical7_combo 420461
#define ASORVS_medical7_minus 420462
#define ASORVS_medical7_count 420463
#define ASORVS_medical7_plus 420464

#define ASORVS_medical8_combo 420471
#define ASORVS_medical8_minus 420472
#define ASORVS_medical8_count 420473
#define ASORVS_medical8_plus 420474

#define ASORVS_medical9_combo 420481
#define ASORVS_medical9_minus 420482
#define ASORVS_medical9_count 420483
#define ASORVS_medical9_plus 420484

#define ASORVS_medical10_combo 420491
#define ASORVS_medical10_minus 420492
#define ASORVS_medical10_count 420493
#define ASORVS_medical10_plus 420494

#define ASORVS_medical11_combo 420501
#define ASORVS_medical11_minus 420502
#define ASORVS_medical11_count 420503
#define ASORVS_medical11_plus 420504

#define ASORVS_medical12_combo 420511
#define ASORVS_medical12_minus 420512
#define ASORVS_medical12_count 420513
#define ASORVS_medical12_plus 420514

#define ASORVS_medical13_combo 420521
#define ASORVS_medical13_minus 420522
#define ASORVS_medical13_count 420523
#define ASORVS_medical13_plus 420524

#define ASORVS_medical14_combo 420531
#define ASORVS_medical14_minus 420532
#define ASORVS_medical14_count 420533
#define ASORVS_medical14_plus 420534

#define ASORVS_medical15_combo 420541
#define ASORVS_medical15_minus 420542
#define ASORVS_medical15_count 420543
#define ASORVS_medical15_plus 420544

#define ASORVS_medical16_combo 420551
#define ASORVS_medical16_minus 420552
#define ASORVS_medical16_count 420553
#define ASORVS_medical16_plus 420554

#define ASORVS_medical17_combo 420561
#define ASORVS_medical17_minus 420562
#define ASORVS_medical17_count 420563
#define ASORVS_medical17_plus 420564

#define ASORVS_medical18_combo 420571
#define ASORVS_medical18_minus 420572
#define ASORVS_medical18_count 420573
#define ASORVS_medical18_plus 420574

#define ASORVS_medical19_combo 420681
#define ASORVS_medical19_minus 420682
#define ASORVS_medical19_count 420683
#define ASORVS_medical19_plus 420684

#define ASORVS_medical20_combo 420791
#define ASORVS_medical20_minus 420792
#define ASORVS_medical20_count 420793
#define ASORVS_medical20_plus 420794

#define ASORVS_misc_label 420600
#define ASORVS_misc1_combo 420601
#define ASORVS_misc1_minus 420602
#define ASORVS_misc1_count 420603
#define ASORVS_misc1_plus 420604

#define ASORVS_misc2_combo 420611
#define ASORVS_misc2_minus 420612
#define ASORVS_misc2_count 420613
#define ASORVS_misc2_plus 420614

#define ASORVS_misc3_combo 420621
#define ASORVS_misc3_minus 420622
#define ASORVS_misc3_count 420623
#define ASORVS_misc3_plus 420624

#define ASORVS_misc4_combo 420631
#define ASORVS_misc4_minus 420632
#define ASORVS_misc4_count 420633
#define ASORVS_misc4_plus 420634

#define ASORVS_misc5_combo 420641
#define ASORVS_misc5_minus 420642
#define ASORVS_misc5_count 420643
#define ASORVS_misc5_plus 420644

#define ASORVS_extraammo_label 420650
#define ASORVS_extraammo1_combo 420651
#define ASORVS_extraammo1_minus 420652
#define ASORVS_extraammo1_count 420653
#define ASORVS_extraammo1_plus 420654

#define ASORVS_extraammo2_combo 420661
#define ASORVS_extraammo2_minus 420662
#define ASORVS_extraammo2_count 420663
#define ASORVS_extraammo2_plus 420664

#define ASORVS_extraammo3_combo 420671
#define ASORVS_extraammo3_minus 420672
#define ASORVS_extraammo3_count 420673
#define ASORVS_extraammo3_plus 420674

#define ASORVS_extraammo4_combo 420681
#define ASORVS_extraammo4_minus 420682
#define ASORVS_extraammo4_count 420683
#define ASORVS_extraammo4_plus 420684

#define ASORVS_extraammo5_combo 420691
#define ASORVS_extraammo5_minus 420692
#define ASORVS_extraammo5_count 420693
#define ASORVS_extraammo5_plus 420694

#define ASORVS_extraattach_label 420700
#define ASORVS_extraattach1_combo 420701
#define ASORVS_extraattach2_combo 420711
#define ASORVS_extraattach3_combo 420721
#define ASORVS_extraattach4_combo 420731
#define ASORVS_extraattach5_combo 420741

#define ASORVS_insignia_label 420750
#define ASORVS_insignia_combo 420751

#define ASORVS_equipped_label 400099
#define ASORVS_map_combo 400100
#define ASORVS_gps_combo 400101
#define ASORVS_radio_combo 400102
#define ASORVS_compass_combo 400103
#define ASORVS_watch_combo 400104

#define DB_Cars 0
#define DB_Tanks 1
#define DB_Autonomous 2
#define DB_Planes 3
#define DB_Boats 4
#define DB_Ships 4
#define DB_Helicopters 5
#define DB_Support 6

#define DBF_DB 0
#define DBF_Class 1
#define DBF_ClassName 1
#define DBF_Name 2
#define DBF_Picture 3
#define DBF_Magazines 4
#define DBF_Index 5
#define DBF_Side 6
#define DBF_Scopes 6
#define DBF_Rail 7

#define DBF_Suppressors 8
#define DBF_Capacity  4
#define DBF_Mass 6

//["",_primary,_launcher,_handgun,_magazines,_uniform,_vest,_backpack,_items,_primitems,_secitems,_handgunitems,_uitems,_vitems,_bitems, _insignia]
#define GSVI_Name 0
#define GSVI_Primary 1
#define GSVI_Launcher 2
#define GSVI_Secondary 2
#define GSVI_Handgun 3
#define GSVI_Magazines 4
#define GSVI_Uniform 5
#define GSVI_Vest 6
#define GSVI_Backpack 7
#define GSVI_Items 8
#define GSVI_PrimaryItems 9
#define GSVI_SecondaryItems 10
#define GSVI_LauncherItems 10
#define GSVI_HandgunItems 11
#define GSVI_UniformItems 12
#define GSVI_VestItems 13
#define GSVI_BackpackItems 14
#define GSVI_Insignia 15

#define IT_HANDGUN 2
#define IT_SCOPED 0
#define IT_RIFLE  1
#define IT_LAUNCHER 4
#define IT_BINOCULAR 4096
#define IT_ITEM 131072


#define IIT_SUPPRESSOR 101
#define IIT_SCOPE 201
#define IIT_RAIL 301
#define IIT_HEADGEAR 605
#define IIT_UNIFORM 801
#define IIT_VEST 701
#define IIT_NIGHTVISION 616

#define ASORVS_capacityUniform 426000
#define ASORVS_capacityVest 426001
#define ASORVS_capacityBackpack 426002

#define ASORVS_weightProgress 427000
#define ASORVS_weightTT 427001

#define ASORVS_capacityUniformTT 426003
#define ASORVS_capacityVestTT 426004
#define ASORVS_capacityBackpackTT 426005

#define ASORVS_weaponsBorder 400000
#define ASORVS_uniformBorder 400001
#define ASORVS_miscBorder 400002
#define ASORVS_presetBorder 399999
#define ASORVS_equippedBorder 400003
//Control Macros
#define ASORVS_getControl(disp,ctrl) ((findDisplay ##disp) displayCtrl ##ctrl)
#define ASORVS_getSelData(ctrl) (lbData[##ctrl,(lbCurSel ##ctrl)])

#define ASORVS_MaxMass 1210
