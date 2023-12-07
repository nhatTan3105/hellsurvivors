/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();
global.boss4_created = true;

instance_create_layer(x, y, "Instances_1", obj_Chest);
instance_destroy(obj_Enemy_Skeleton);
global.collect_zone = 500;
audio_stop_sound(boss4_gru);
audio_play_sound(boss_dead, 30, false);
room_goto(room_win)

