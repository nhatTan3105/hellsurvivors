/// @description Insert description here
// You can write your code in this editor

//Pause game when level up
if(instance_exists(obj_UpLevel)){
	exit;
}
xp += 1;
if(xp >= xpNextLv){
	xp = 0; 
	xpNextLv += xpNextLv;
	instance_create_depth(0, 0, -2000, obj_UpLevel)
}
instance_destroy(other.id)



