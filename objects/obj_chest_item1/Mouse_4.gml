/// @description Insert description here
// You can write your code in this editor
audio_play_sound(button_press, 10, false);
audio_play_sound(level_up, 10, false);
if(global.boots_equip == "boots1"){
	global.player_max_mana = 15;
	global.player_mana = global.player_max_mana;
	global.boots_equip = "boots2"
}
else if(global.boots_equip == "boots2"){
	global.player_max_mana = 23;
	global.player_mana = global.player_max_mana;
	global.boots_equip = "boots3"
}

instance_destroy(obj_chest_item1);
instance_destroy(obj_chest_item2);
instance_destroy(obj_chest_item3);
instance_destroy(obj_chest_item4);
instance_destroy(obj_UpLevel0);
instance_destroy(obj_UpLevelGUI);


