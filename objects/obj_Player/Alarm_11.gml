/// @description Enemy limit increase
// You can write your code in this editor
//Pause game when level up
if(!instance_exists(obj_UpLevel)){
	global.enemy_limit += 1;
	global.spawn_time += 30;
	show_debug_message(string(global.enemy_limit))
	show_debug_message(string(global.slash_dmg))

	alarm[11] = 150;
	show_debug_log(true);
}

	





