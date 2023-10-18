/// @description Insert description here
// You can write your code in this editor

if(state == "idle"){
	obj_warrior_select.state = "pop_out";
	image_blend = c_grey;
}
global.player_hp = 100;
global.player_damage = 14;
global.xp_bonus = 1;
global.sprite_idle = s_acher_attack;
global.sprite_run = s_acher_run;
global.sprite_takehit = s_acher_takehit;

//default skill
global.alarm_fireshoot = 40;
global.fireshoot_lvl = 1;
global.alarm_slash = -1;
global.alarm_lightbolt = -1;
global.player_class = "acher";
room_goto(room_main);


