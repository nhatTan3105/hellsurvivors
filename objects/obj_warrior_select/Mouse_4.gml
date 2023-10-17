/// @description Insert description here
// You can write your code in this editor

if(state == "idle"){
	obj_warrior_select.state = "pop_out";
	image_blend = c_grey;
}
global.player_hp = 80;
global.player_damage = 12;
global.xp_bonus = 1.4;
global.sprite_idle = s_warrior_attack;
global.sprite_run = s_warrior_run;
global.sprite_takehit = s_warrior_takehit;

//default skill
global.alarm_fireshoot = -1;
global.alarm_slash = 60;
global.slash_lvl = 1;
global.alarm_lightbolt = -1;
room_goto(room_main);


