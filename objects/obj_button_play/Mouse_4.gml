/// @description Insert description here
// You can write your code in this editor
	var vx= camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2);
	var vy= camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);
	
	//warrior
	global.select = instance_create_depth(vx - 150, vy, -2000, obj_warrior_select)
	global.select.desY = vy + 70;
	global.select.image_alpha = 1;
	global.select.sprite_index = s_warrior_selection;
	
	//acher
	global.select = instance_create_depth(vx - 150, vy, -2000, obj_acher_select)
	global.select.desY = vy - 30;
	global.select.image_alpha = 1;
	global.select.sprite_index = s_acher_selection;

	//wizard
	global.select = instance_create_depth(vx - 150, vy, -2000, obj_wizard_select)
	global.select.desY = vy - 130;
	global.select.image_alpha = 1;
	global.select.sprite_index = s_wizard_selection;
	
	global.select = instance_create_depth(vx+20, vy-20, -1999, obj_blank_board)
	global.select.desY = vy;
	global.select.image_alpha = 1;
	global.select.sprite_index = s_blankboard;
//room_goto(room_main);	



