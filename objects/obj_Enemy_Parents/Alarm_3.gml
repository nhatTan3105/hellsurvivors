/// @description LV3
// You can write your code in this editor

//Loop
alarm[3] = alarm_time_spawn;
if(instance_exists(obj_UpLevel0)){
	image_speed = 0;
	speed = 0;
	exit;
}
			//audio_play_sound(lv3, 1, true);

//Pause game when level up

	var _vx = camera_get_view_x(view_camera[0]);
	var _vy = camera_get_view_y(view_camera[0]);
	var _vw = camera_get_view_width(view_camera[0]);
	var _vh = camera_get_view_height(view_camera[0]);
	
	// Kích hoạt các đối tượng trong vùng nhìn của camera (được mở rộng 30 pixel)
	instance_activate_region(_vx - 30, _vy - 30, _vw + 60, _vh + 60, 1);
	// Tắt các đối tượng nằm ngoài vùng nhìn của camera (được mở rộng 200 pixel)
	instance_deactivate_region(_vx - 200, _vy - 200, _vw + 400, _vh + 400, 0, 1);
	
	//mushroom position
	var dir_1 =irandom_range(0, 360);
	var dir_2 =irandom_range(0, 360);
	var XX = obj_Player.x + lengthdir_x(440, dir_1);
	var YY = obj_Player.y + lengthdir_y(440, dir_1);
	
	var XXX = obj_Player.x + lengthdir_x(300, dir_2);
	var YYY = obj_Player.y + lengthdir_y(300, dir_2);
	//lv3
			if(global.enemy_limit <= 120 ){
				if(instance_number(obj_Enemy_Parents) <= global.enemy_limit){
					if(!global.sound_lv3){
						audio_stop_sound(lv2);
						audio_play_sound(lv3, 1, true);
						global.sound_lv3 = true;
					}
					instance_create_layer(XX, YY, "Instances_1", obj_Enemy_Mushroom);
				}else if(global.boss3_created == false && global.enemy_limit > 60 && global.boss3_exist == false){
					if(!instance_exists(obj_Boss3_Death)){
						audio_play_sound(bossspawn, 11, false);
						instance_create_layer(XXX, YYY, "Instances_1", obj_Boss3_Death);
						global.boss3_exist = true;
					}
				}
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

