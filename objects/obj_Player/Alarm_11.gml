/// @description Enemy limit increase
// You can write your code in this editor
//Pause game when level up
if(!global.pause){
	if(global.enemy_limit < 77){
		global.enemy_limit += 2;
	}else{
		global.enemy_limit += 0.1;
	}
	show_debug_message(string(global.enemy_limit))
	alarm[11] = 120;
}else{
	global.pause = false;
	alarm[11] = 120;
}

	





