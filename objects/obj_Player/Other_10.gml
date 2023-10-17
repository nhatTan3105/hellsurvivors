/// @description Weapon Slash
// You can write your code in this editor

//Pause game when level up
if(instance_exists(obj_UpLevel0)){
	exit;
}
global.slash = instance_create_layer(x, y, "Instances_1", obj_Weapon_Slash);
global.slash.image_xscale = global.slash_img_xs
global.slash.image_yscale = global.slash_img_ys