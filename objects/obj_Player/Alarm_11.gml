/// @description Enemy limit increase
// You can write your code in this editor
//Pause game when level up
if(!global.pause){
	global.enemy_limit += 1;
	global.spawn_time += 30;
	
	alarm[11] = 150;
}else{
	alarm[11] = 150;
}

	





