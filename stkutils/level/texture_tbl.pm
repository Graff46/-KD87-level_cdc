package stkutils::level::texture_tbl;
use strict;
use vars qw(@ISA @EXPORT);
require Exporter;

@ISA		= qw(Exporter);
@EXPORT	= qw(%sw_texture);
our %sw_texture = ( # ТЧ <-> ЗП
	"act\\act_monolit_corp" => "act\\act_corp_monolit",
	"act\\act_specnaz_corp" => "act\\act_corp_specnaz",
	"act\\act_stalker_corp" => "act\\act_corp_stalker",
	"act\\act_stalker_military_corp" => "act\\act_corp_military",
	"corp\\corp_stalker" => "act\\act_corp_stalker",
	"crete\\crete_dirty1_gr" => "floor\\floor_dirty1_gr",
	"crete\\crete_dirty_gr" => "floor\\floor_dirty_gr",
	"crete\\crete_floor4" => "floor\\floor_tile_02",
	"crete\\crete_floor4a" => "floor\\floor_tile_02",
	"crete\\crete_floor4a_1" => "floor\\floor_tile_02",
	"crete\\crete_floor_linol" => "floor\\floor_linoleum_02",
	"crete\\crete_golima_daxa" => "roof\\roof_golima",
	"crete\\crete_plitka_qllab" => "tile\\tile_plitka_qllab",
	"crete\\crete_plitka_qllab_02" => "tile\\tile_plitka_qllab_02",
	"crete\\crete_podval" => "wall\\wall_walls_paint_02",
	"crete\\crete_pol_t_01" => "floor\\floor_tile_01",
	"crete\\crete_provoda_ql" => "prop\\prop_cable_bobbin",
	"crete\\crete_roof1" => "roof\\roof_smola",
	"crete\\crete_roof1_det" => "roof\\roof_smola",
	"crete\\crete_roof2" => "roof\\roof_smola_02",
	"crete\\crete_roof3" => "roof\\roof_crete_01",
	"crete\\crete_schiffer2" => "roof\\roof_schiffer_01",
	"crete\\crete_schiffer2a" => "roof\\roof_schiffer_02",
	"crete\\crete_schiffer3" => "roof\\roof_schiffer_01",
	"crete\\crete_st_gr02" => "crete\\crete_walls_old_02",
	"crete\\crete_stena_kraska_03a" => "wall\\wall_walls_paint_01",
	"crete\\crete_stuccowall3_iov" => "wall\\wall_stucco_01",
	"crete\\crete_walls12" => "crete\\crete_walls_01",
	"crete\\crete_walls17_iov" => "wall\\wall_wallpaper_02",
	"crete\\crete_walls2_iov" => "wall\\wall_wallpaper_03",
	"crete\\crete_walls7" => "wall\\wall_stena_01",
	"crete\\crete_walls9a" => "wall\\wall_walls_paint_03",
	"crete\\crete_walls_g" => "wall\\wall_wallpaper_01",
	"crete\\crete_walls_j12a" => "crete\\crete_walls_01",
	"crete\\crete_walls_rg07" => "wall\\wall_walls_paint_05",
	"crete\\crete_walls_tual_b" => "floor\\floor_tile_02b",
	"crete\\crete_walls_tualgr01" => "tile\\tile_walls_tualgr01",
	"crete\\crete_walls_tualgr04" => "tile\\tile_walls_red_01",
	"crete\\crete_wallsgr11" => "floor\\floor_tile_03",
	"door\\door_gr01!" => "door\\door_gr01",
	"door\\door_gr2_iov" => "door\\door_gr2",
	"door\\door_gr_iov_01" => "door\\door_gr1",
	"door\\door_iov2" => "door\\door_electricunit_01",
	"door\\door_iov3" => "door\\door_electricunit_02",
	"door\\door_j01" => "door\\door_white_02",
	"door\\door_j03alfa" => "door\\door_j03",
	"door\\door_metal_iov" => "door\\door_metal_01",
	"door\\door_old_iov" => "door\\door_wood_01",
	"door\\door_red_garaj_iov" => "door\\door_wood_02",
	"glas\\glas_g-01" => "glas\\glas_dirt",
	"grnd\\grnd_concrete_1" => "grnd\\grnd_concrete_01",
	"grnd\\grnd_concrete_2" => "grnd\\grnd_shlak_03",
	"grnd\\grnd_dirt_dust_0" => "grnd\\grnd_dirt_dust_01",
	"grnd\\grnd_dry_gr" => "grnd\\grnd_dry_gr_01",
	"grnd\\grnd_mudwalls_iov" => "grnd\\grnd_shlak_03",
	"grnd\\grnd_obriv_2" => "grnd\\grnd_precipice_01",
	"grnd\\grnd_obriv_3" => "grnd\\grnd_precipice_01",
	"grnd\\grnd_zemlya2_iov" => "grnd\\grnd_land_01",
	"grnd\\grnd_zemlya_iov" => "grnd\\grnd_zemlya",
	"mtl\\mtl_bo4ka_big_iov" => "mtl\\mtl_barrel_big",
	"mtl\\mtl_fence2" => "mtl\\mtl_floor_fence_01",
	"mtl\\mtl_fence2n" => "mtl\\mtl_fence_01",
	"mtl\\mtl_fence3" => "mtl\\mtl_fence_03",
	"mtl\\mtl_fence4" => "mtl\\mtl_fence_04",
	"mtl\\mtl_fence5" => "mtl\\mtl_fence_05",
	"mtl\\mtl_floor_01tga" => "mtl\\mtl_floor_plate_02",
	"mtl\\mtl_garage_pryp_01" => "mtl\\mtl_garage_02",
	"mtl\\mtl_garage_pryp_02" => "mtl\\mtl_garage_02",
	"mtl\\mtl_green_rja_iov" => "mtl\\mtl_rja_green",
	"mtl\\mtl_metall_02_b" => "mtl\\mtl_floor_plate_01",
	"mtl\\mtl_musor_bak" => "mtl\\mtl_trash_box",
	"mtl\\mtl_perehod02" => "mtl\\mtl_walls7",
	"mtl\\mtl_pod_02" => "mtl\\mtl_rja_blue",
	"mtl\\mtl_railroad_04" => "mtl\\mtl_railroad_01",
	"mtl\\mtl_resh_reil" => "mtl\\mtl_girder_reil",
	"mtl\\mtl_resh_reil_a" => "mtl\\mtl_girder_reil_a",
	"mtl\\mtl_resh_reil_b" => "mtl\\mtl_girder_reil_b",
	"mtl\\mtl_rja_iov_01" => "mtl\\mtl_rja_01",
	"mtl\\mtl_roof_red_iov" => "roof\\roof_metal_01",
	"mtl\\mtl_rope2-1" => "prop\\prop_provod_01",
	"mtl\\mtl_rope3-1" => "prop\\prop_provod_02",
	"mtl\\mtl_rust_dark_iov" => "mtl\\mtl_rust_dark",
	"mtl\\mtl_rusty_0" => "mtl\\mtl_rja_02",
	"mtl\\mtl_stena_ch_06" => "mtl\\mtl_walls8",
	"mtl\\mtl_stena_old_iov" => "mtl\\mtl_walls8_old",
	"mtl\\mtl_tubes3c" => "mtl\\mtl_tubes3b",
	"mtl\\mtl_ventel_ql" => "mtl\\mtl_ventel",
	"mtl\\mtl_vorota_a" => "door\\door_gate_metal_03",
	"mtl\\mtl_walls16" => "door\\door_gate_metal_04",
	"mtl\\mtl_walls2" => "mtl\\mtl_railroad_items",
	"mtl\\mtl_walls2_1" => "mtl\\mtl_railroad_items",
	"mtl\\mtl_walls7" => "mtl\\mtl_walls10",
	"mtl\\mtl_z_trba" => "mtl\\mtl_stena_ch_04",
	"mtl\\mtl_zakl_ch_01" => "mtl\\mtl_walls9b",
	"prop\\prop_batarea_p" => "mtl\\mtl_batarea_p",
	"prop\\prop_bathhole1" => "prop\\prop_bathhole",
	"prop\\prop_door1" => "door\\door_wood_03",
	"prop\\prop_door2" => "door\\door_metal_02",
	"prop\\prop_door3" => "door\\door_electricunit_03",
	"prop\\prop_door4" => "door\\door_gate_metal_01",
	"prop\\prop_door5" => "door\\door_metal_03",
	"prop\\prop_door6" => "door\\door_white_03",
	"prop\\prop_door7" => "door\\door_gate_metal_02",
	"prop\\prop_door9" => "door\\door_white_04",
	"prop\\prop_door_a" => "door\\door_wood_03",
	"prop\\prop_elec_door01" => "door\\door_electricunit_05",
	"prop\\prop_elec_door_01" => "door\\door_electricunit_04",
	"prop\\prop_elec_kran" => "prop\\prop_girder_01",
	"prop\\prop_elec_kran_b" => "prop\\prop_girder_02",
	"prop\\prop_elektr" => "prop\\prop_elektro",
	"prop\\prop_govno" => "prop\\prop_kucha",
	"prop\\prop_grate2" => "prop\\prop_grate_01",
	"prop\\prop_lift_door" => "door\\door_lift_01",
	"prop\\prop_mus_kont_01a" => "prop\\prop_musor_02",
	"prop\\prop_musor_01_1" => "prop\\prop_musor_01",
	"prop\\prop_plitka_lab" => "tile\\tile_plitka_lab",
	"prop\\prop_plitka_lab2" => "tile\\tile_plitka_lab",
	"prop\\prop_plitka_lab_n" => "tile\\tile_plitka_lab",
	#"prop\\prop_priluki" => "какчастьprop\\prop_sigaret",
	#"prop\\prop_primab" => "какчастьprop\\prop_sigaret",
	"prop\\prop_primar" => "какчастьprop\\prop_sigaret",
	"prop\\prop_provod_01" => "prop\\prop_provod_03",
	"prop\\prop_roadblock1_j" => "prop\\prop_roadblock1",
	"prop\\prop_roadborder_2iov" => "prop\\prop_roadborder_2",
	"prop\\prop_sigarets" => "prop\\prop_sigaret",
	"prop\\prop_stupeni_a" => "crete\\crete_stupeni_a",
	"prop\\prop_stupeni_b" => "crete\\crete_stupeni_b",
	"prop\\prop_switch_iov" => "prop\\prop_switch",
	"prop\\prop_trainwheel2" => "prop\\prop_trainwheel1",
	"prop\\prop_trainwheel2a" => "prop\\prop_trainwheel1a",
	"prop\\prop_vac_2" => "mtl\\mtl_luk_ch_02",
	"prop\\prop_vagon_iov" => "prop\\prop_vagon",
	"prop\\prop_vagon_iov_d" => "prop\\prop_vagon_d",
	"prop\\prop_vagon_iov_gr" => "prop\\prop_vagon_gr",
	"ston\\ston_beton04" => "crete\\crete_walls_02",
	"ston\\ston_beton_01d" => "crete\\crete_beton_01d",
	"ston\\ston_beton_03" => "crete\\crete_beton_03",
	"ston\\ston_beton_ch_03" => "crete\\crete_beton_ch_03",
	"ston\\ston_beton_ch_06" => "crete\\crete_beton_ch_06",
	"ston\\ston_beton_ch_08" => "crete\\crete_stena_ch_08",
	"ston\\ston_beton_ch_09" => "floor\\floor_tile_05",
	"ston\\ston_beton_ch_09a" => "floor\\floor_tile_06",
	"ston\\ston_beton_ch_13" => "crete\\crete_beton_ch_13",
	"ston\\ston_beton_ch_141" => "crete\\crete_beton_slag",
	"ston\\ston_beton_ch_15" => "crete\\crete_beton_7",
	"ston\\ston_beton_iov_01" => "crete\\crete_beton_plita_3",
	"ston\\ston_beton_iov_02" => "crete\\crete_beton_plita",
	"ston\\ston_beton_iov_02_copy" => "crete\\crete_beton_plita",
	"ston\\ston_beton_iov_05" => "crete\\crete_beton_dirt_01",
	"ston\\ston_beton_iov_dirt_01" => "crete\\crete_beton_dirt_01",
	"ston\\ston_beton_lom_iov" => "crete\\crete_beton_lom",
	"ston\\ston_beton_pod_01" => "crete\\crete_debris_01",
	"ston\\ston_beton_pod_03" => "crete\\crete_beton_pod_03",
	"ston\\ston_beton_potolok2_iov" => "wall\\wall_ceiling_01",
	"ston\\ston_beton_stena_iov" => "crete\\crete_beton_5",
	"ston\\ston_beton_stena_iov_hi" => "crete\\crete_beton_5",
	"ston\\ston_big_iov" => "crete\\crete_beton_3",
	"ston\\ston_bordur" => "prop\\prop_border",
	"ston\\ston_br2_iov" => "briks\\briks_br2",
	"ston\\ston_br_hr_iov" => "briks\\briks_br1",
	"ston\\ston_brickinside_iov" => "briks\\briks_inside_01",
	"ston\\ston_bricks10" => "briks\\briks_inside_02",
	"ston\\ston_bricks4" => "briks\\briks_big_01",
	"ston\\ston_bricks5" => "briks\\briks_tube_02",
	"ston\\ston_bricks_1973" => "briks\\briks_tube_01",
	"ston\\ston_briks_01_ch" => "tile\\tile_walls_white_01",
	"ston\\ston_briks_iov_dirt_01" => "briks\\briks_dirt_01",
	"ston\\ston_floor_04" => "floor\\floor_tile_11",
	"ston\\ston_kazarmawall_iov" => "wall\\wall_stucco_03",
	"ston\\ston_marble_br_iov" => "tile\\tile_marble_1",
	"ston\\ston_megabrick_iov" => "briks\\briks_br3",
	"ston\\ston_monolith" => "crete\\crete_monolith",
	"ston\\ston_mramor_iov" => "tile\\tile_marble_2",
	"ston\\ston_musor_iov" => "grnd\\grnd_dirt_dust_02",
	"ston\\ston_old_beton_iov" => "crete\\crete_old_beton",
	"ston\\ston_old_wall_iov" => "wall\\wall_stucco_11",
	"ston\\ston_plitka_iov_green" => "tile\\tile_green",
	"ston\\ston_plitka_iov_wall_01" => "tile\\tile_walls_white_02",
	"ston\\ston_plitka_pink_iov" => "tile\\tile_walls_pink_01",
	"ston\\ston_plitka_y_02" => "tile\\tile_plitka_y_02",
	"ston\\ston_pol_m_01" => "floor\\floor_tile_09",
	"ston\\ston_pol_smola_iov" => "floor\\floor_pitch_01",
	"ston\\ston_redwall_iov" => "wall\\wall_red_01",
	"ston\\ston_reka_ch" => "crete\\crete_border_01",
	"ston\\ston_rocks1" => "grnd\\grnd_rocks_01",
	"ston\\ston_srarkon_iov" => "wall\\wall_stucco_04",
	"ston\\ston_stanc" => "crete\\crete_stanc",
	"ston\\ston_stanc_bl" => "crete\\crete_stanc_black",
	"ston\\ston_stena_04a" => "crete\\crete_stena_04a",
	"ston\\ston_stena_04d" => "crete\\crete_stena_04d",
	"ston\\ston_stena_04e" => "crete\\crete_stena_04e",
	"ston\\ston_stena_04f" => "crete\\crete_stena_04f",
	"ston\\ston_stena_04g" => "crete\\crete_stena_04g",
	"ston\\ston_stena_04h" => "crete\\crete_stena_04h",
	"ston\\ston_stena_05b_j" => "wall\\wall_stena_05b",
	"ston\\ston_stena_06a" => "briks\\briks_inside_03",
	"ston\\ston_stena_07_a" => "crete\\crete_stena_07_a",
	"ston\\ston_stena_07_a_j" => "crete\\crete_stena_07_a_j",
	"ston\\ston_stena_07_d" => "prop\\prop_stena_07_d",
	"ston\\ston_stena_ch" => "tile\\tile_stena_ch",
	"ston\\ston_stena_ch_11_1" => "crete\\crete_house_wall_1",
	"ston\\ston_stena_ch_11_2" => "crete\\crete_stena_ch_11_2",
	"ston\\ston_stena_ch_12" => "crete\\crete_stena_ch_12",
	"ston\\ston_stena_ch_13" => "crete\\crete_stena_ch_13",
	"ston\\ston_stena_ch_14" => "crete\\crete_stena_ch_14",
	"ston\\ston_stena_ch_15" => "crete\\crete_stena_ch_15",
	"ston\\ston_stena_ch_16" => "wall\\wall_schiffer_01",
	"ston\\ston_stena_da_01" => "wall\\wall_stucco_05",
	"ston\\ston_stena_pod_01" => "wall\\wall_stucco_06",
	"ston\\ston_stena_pod_04" => "wall\\wall_stucco_08",
	"ston\\ston_stena_pod_08" => "wall\\wall_border_02",
	"ston\\ston_stena_pod_09" => "wall\\wall_stucco_02",
	"ston\\ston_stena_yz_iov" => "wall\\wall_stucco_13",
	"ston\\ston_stolb_rail" => "crete\\crete_stolb_rail",
	"ston\\ston_stucco_old_iov" => "wall\\wall_stucco_09",
	"ston\\ston_stuccowall2_iov" => "wall\\wall_stucco_12",
	"ston\\ston_stuccowall3_iov" => "wall\\wall_stucco_10",
	"ston\\ston_stupeni_iov" => "crete\\crete_stupeni_c",
	"ston\\ston_tr_iov" => "crete\\crete_dirt_1",
	"ston\\ston_trotuar_bg_iov" => "floor\\floor_tile_08",
	"ston\\ston_trotuar_sm_iov" => "floor\\floor_tile_08",
	"ston\\ston_truba_ch" => "crete\\crete_truba_ch",
	"ston\\ston_walls1" => "crete\\crete_walls_old_01",
	"ston\\ston_walls1_1" => "crete\\crete_walls_old_01",
	"ston\\ston_walls2_1" => "crete\\crete_beton_6",
	"ston\\ston_zabor_02" => "crete\\crete_zabor_02",
	"ston\\ston_zabor_iov" => "crete\\crete_zabor",
	"tree\\tree_fuflo" => "trees\\trees_fake",
	"veh\\veh_btr" => "veh\\veh_btr_br",
	"veh\\veh_collision" => "trees\\trees_fake",
	"veh\\veh_nivawheels1b" => "veh\\veh_nivawheels1",
	"wind\\wind_03_ch" => "wind\\wind_03",
	"wind\\wind_04_ch" => "wind\\wind_transp",
	"wind\\wind_04_ch_transp" => "wind\\wind_transp",
	"wind\\wind_04_pryp_01" => "wind\\wind_04",
	"wm\\wm_anarh1" => "decal\\decal_anarh_1",
	"wm\\wm_anarh2" => "decal\\decal_anarh_2",
	"wm\\wm_anarh3" => "decal\\decal_anarh_3",
	"wm\\wm_anarh4" => "decal\\decal_anarh_4",
	"wm\\wm_anarh5" => "decal\\decal_anarh_5",
	"wm\\wm_anarh6" => "decal\\decal_anarh_6",
	"wm\\wm_anarh7" => "decal\\decal_anarh_7",
	"wm\\wm_dirt_01" => "decal\\decal_dirt_01",
	"wm\\wm_dirt_02" => "decal\\decal_dirt_02",
	"wm\\wm_dirt_03" => "decal\\decal_dirt_03",
	"wm\\wm_dirt_04" => "decal\\decal_dirt_04",
	"wm\\wm_dirt_05" => "decal\\decal_dirt_05",
	"wm\\wm_graz1" => "decal\\decal_graz1",
	"wm\\wm_graz2" => "decal\\decal_graz2",
	"wm\\wm_graz3" => "decal\\decal_graz3",
	"wm\\wm_graz4" => "decal\\decal_graz4",
	"wm\\wm_graz5" => "decal\\decal_graz5",
	"wm\\wm_graz6" => "decal\\decal_graz6",
	"wm\\wm_graz7" => "decal\\decal_graz7",
	"wm\\wm_kostrishe_a" => "decal\\decal_kostrishe",
	"wm\\wm_listja" => "decal\\decal_listja",
	"wm\\wm_listja_vetki" => "decal\\decal_listja_vetki",
	"wm\\wm_moh_iov" => "decal\\decal_moh_1",
	"wm\\wm_musor_pol1" => "decal\\decal_musor_pol1",
	"wm\\wm_musor_pol2" => "decal\\decal_musor_pol2",
	"wm\\wm_musor_pol3" => "decal\\decal_musor_pol3",
	"wm\\wm_pl_3" => "decal\\decal_plakat_1",
	"wm\\wm_pl_4" => "decal\\decal_plakat_2",
	"wm\\wm_pl_5" => "decal\\decal_plakat_3",
	"wm\\wm_poteki_iov" => "decal\\decal_poteki_iov",
	"wm\\wm_redteam_trafaret" => "decal\\decal_redteam_trafaret",
	"wm\\wm_rza_a" => "decal\\decal_rza_a",
	"wm\\wm_rza_potek" => "decal\\decal_rza_potek",
	"wm\\wm_rza_potek1" => "decal\\decal_rza_potek1",
	"wood\\wood_dosk_gr01" => "wood\\wood_gr01",
	"wood\\wood_doski_1" => "wood\\wood_board_02",
	"wood\\wood_doski_tomb" => "wood\\wood_tomb",
	"wood\\wood_parket_01" => "floor\\floor_parket_01",
	"wood\\wood_plank5" => "wood\\wood_stolb",
	"wood\\wood_zabor_iov" => "wood\\wood_fence_01",
);
1;
