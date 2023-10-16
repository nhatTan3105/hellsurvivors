/// @description Weapon Slash
// You can write your code in this editor

//Pause game when level up
if(instance_exists(obj_UpLevel)){
	exit;
}
var slash = instance_create_layer(x, y, "Instances_1", obj_Weapon_Slash);
slash.image_xscale = image_xscale;
if(image_xscale == 1){
slash.addX = 60;
}
if(image_xscale == -1){
slash.addX = -60;
}
