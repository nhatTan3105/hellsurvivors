/// @description Insert description here
// You can write your code in this editor
audio_play_sound(menu_select, 10, false);
audio_play_sound(level_up, 10, false);
if(global.armor_equip == "armor1"){
	global.player_max_hp = global.player_max_hp*1.5;
	global.player_hp = global.player_max_hp;
	global.armor_equip = "armor2"
}
else if(global.armor_equip == "armor2"){
	global.player_max_hp = global.player_max_hp*1.5;
	global.player_hp = global.player_max_hp;
	global.armor_equip = "armor3"
}

instance_destroy(obj_chest_item1);
instance_destroy(obj_chest_item2);
instance_destroy(obj_chest_item3);
instance_destroy(obj_chest_item4);
instance_destroy(obj_UpLevel0);
instance_destroy(obj_UpLevelGUI);


