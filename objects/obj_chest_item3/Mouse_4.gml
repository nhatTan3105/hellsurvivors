/// @description Insert description here
// You can write your code in this editor
audio_play_sound(menu_select, 10, false);
audio_play_sound(level_up, 10, false);
if(global.book_equip == "book1"){
	global.xp_bonus = global.xp_bonus*1.5;
	global.book_equip = "book2"
}
else if(global.book_equip == "book2"){
	global.xp_bonus = global.xp_bonus*1.5;
	global.book_equip = "book3"
}

instance_destroy(obj_chest_item1);
instance_destroy(obj_chest_item2);
instance_destroy(obj_chest_item3);
instance_destroy(obj_chest_item4);
instance_destroy(obj_UpLevel0);
instance_destroy(obj_UpLevelGUI);


