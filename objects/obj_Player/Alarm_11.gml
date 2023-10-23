/// @description Enemy limit increase
// You can write your code in this editor
//Pause game when level up
if(!global.pause){
	global.enemy_limit += 2;
	show_debug_message(string(global.enemy_limit))
	alarm[11] = 120;
}else{
	alarm[11] = 120;
}

	





