/// @description Enemy limit increase
// You can write your code in this editor
//Pause game when level up
if(instance_exists(obj_UpLevel)){
	exit;
}
global.enemy_limit += 1;
show_debug_message(string(global.enemy_limit))

alarm[11] = 150;
show_debug_log(true);




