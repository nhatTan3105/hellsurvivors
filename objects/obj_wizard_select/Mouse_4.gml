/// @description Insert description here
// You can write your code in this editor

audio_play_sound(button_press, 10, false);
audio_play_sound(game_start, 11, false);
if(state == "idle"){
	obj_warrior_select.state = "pop_out";
	image_blend = c_grey;
}
global.player_hp = 100;
global.player_damage = 14;
global.xp_bonus = 1;
global.sprite_idle = s_wizard_attack;
global.sprite_run = s_wizard_run;
global.sprite_takehit = s_wizard_takehit;

//default skill
global.alarm_fireshoot = -1;
global.alarm_slash = -1;
global.alarm_lightbolt = 120;
global.lightbolt_lvl = 1;
global.player_class = "wizard";
room_goto(room_main)


