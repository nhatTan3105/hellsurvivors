/// @description Weapon BlackHole
// You can write your code in this editor

//Pause game when level up
if(instance_exists(obj_UpLevel)){
	exit;
}
var black_hole = instance_create_layer(x, y, "Instances_1", obj_Weapon_BlackHole);