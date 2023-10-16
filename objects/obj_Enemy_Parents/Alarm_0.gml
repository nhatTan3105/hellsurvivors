/// @description Spawn
// You can write your code in this editor

//Loop
alarm[0] = alarm_time_spawn;
if(instance_exists(obj_UpLevel)){
	image_speed = 0;
	speed = 0;
	exit;
}
//Pause game when level up

	var _vx = camera_get_view_x(view_camera[0]);
	var _vy = camera_get_view_y(view_camera[0]);
	var _vw = camera_get_view_width(view_camera[0]);
	var _vh = camera_get_view_height(view_camera[0]);
	
	// Kích hoạt các đối tượng trong vùng nhìn của camera (được mở rộng 30 pixel)
	instance_activate_region(_vx - 30, _vy - 30, _vw + 60, _vh + 60, 1);
	// Tắt các đối tượng nằm ngoài vùng nhìn của camera (được mở rộng 200 pixel)
	instance_deactivate_region(_vx - 200, _vy - 200, _vw + 400, _vh + 400, 0, 1);
	
	
	var dir1 =irandom_range(0, 360);
	var dir2 =irandom_range(0, 360);
	var XX = obj_Player.x + lengthdir_x(440, dir1);
	var XXX = obj_Player.x + lengthdir_x(440, dir2);
	var YY = obj_Player.y + lengthdir_y(440, dir1);
	var YYY = obj_Player.y + lengthdir_y(440, dir2);
	if(instance_number(obj_Enemy_Parents) < global.enemy_limit){
		instance_create_layer(XX, YY, "Instances_1", obj_Enemey_Mushroom)
		instance_create_layer(XXX, YYY, "Instances_1", obj_Enemy_Skeleton)
	}


	//move to object player
	image_speed = 1;
	direction = point_direction(x, y, obj_Player.x, obj_Player.y);
	speed = walkSpeed;
	if(obj_Player.x > x){
		image_xscale = 1;
	}
	else{
		image_xscale = -1;
	}
	depth = -y;
	if(sprite_index == sprite_takehit){
		sprite_index = sprite_none_takehit;
	}

