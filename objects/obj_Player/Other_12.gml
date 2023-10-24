/// @description Weapon BlackHole
// You can write your code in this editor

//Pause game when level up
if(instance_exists(obj_UpLevel0)){
	exit;
}

for(i = 0; i < global.blackhole_count; i++){
	audio_play_sound(blackhole, 1, false)
	var randomx = "random_x" + string(i);
	var randomy = "random_y" + string(i);
	var randomx = random_range(-200, 200);
	var randomy = random_range(-200, 200);
	var black_hole = instance_create_layer(x + randomx, y + randomy, "Instances_1", obj_Weapon_BlackHole);
}

