/// @description Weapon BlackHole
// You can write your code in this editor

//Pause game when level up
if(instance_exists(obj_UpLevel)){
	exit;
}
var random_x1 = random_range(-200, 200);
var random_y1 = random_range(-200, 200);
var black_hole = instance_create_layer(x + random_x1, y + random_y1, "Instances_1", obj_Weapon_BlackHole);
