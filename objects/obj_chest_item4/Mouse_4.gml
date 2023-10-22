/// @description Insert description here
// You can write your code in this editor
audio_play_sound(menu_select, 10, false);
audio_play_sound(level_up, 10, false);
global.xp = global.xpNextLv;
instance_destroy(obj_chest_item1);
instance_destroy(obj_chest_item2);
instance_destroy(obj_chest_item3);
instance_destroy(obj_chest_item4);
instance_destroy(obj_UpLevel0);
instance_destroy(obj_UpLevelGUI);


