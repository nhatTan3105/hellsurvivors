/// @description Insert description here
// You can write your code in this editor
audio_play_sound(button_press, 10, false);
audio_play_sound(game_start, 11, false);
if(state == "idle"){
	obj_warrior_select.state = "pop_out";
	image_blend = c_grey;
}
global.player_hp = 8000;
global.player_damage = 1200;
global.xp_bonus = 1.4;
global.sprite_idle = s_warrior_attack;
global.sprite_run = s_warrior_run;
global.sprite_takehit = s_warrior_takehit;

//default skill
global.alarm_fireshoot = -1;
global.alarm_slash = 60;
global.slash_lvl = 1;
global.alarm_lightbolt = -1;
global.player_class = "warrior";
room_goto(room_main);