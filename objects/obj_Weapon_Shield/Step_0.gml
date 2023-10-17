event_inherited();
if(instance_exists(obj_UpLevel)){
	image_speed = 0;
	exit;
}
image_speed = 1;
image_xscale = global.shield_img_xs;
image_yscale = global.shield_img_ys;
x = obj_Player.x;
y = obj_Player.y;
