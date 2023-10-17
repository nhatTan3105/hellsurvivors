/// @description Insert description here
// You can write your code in this editor

//Pause game when level up
if(instance_exists(obj_UpLevel)){
	exit;
}
xp += 1*global.xp_bonus;
if(xp >= xpNextLv){
	xp = 0; 
	xpNextLv += xpNextLv*0.3;
	
	var vx= camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2);
	var vy= camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);
	
	//upgrade fireball
	global.upgrade = instance_create_depth(vx, vy, -2000, obj_UpLevel)
	global.upgrade.desY = vy;
	global.upgrade.image_alpha = 1;
	global.upgrade.sprite_index = s_upgrade_slash;
	
}
instance_destroy(other.id)



