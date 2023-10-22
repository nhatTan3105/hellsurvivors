/// @description Insert description here
// You can write your code in this editor
audio_play_sound(chestopen, 11, false);
var vx= camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2);
var vy= camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);

instance_create_depth(vx - 100, vy - 140, -1001, obj_UpLevel0);
instance_create_depth(vx - 100, vy - 140, -1000, obj_UpLevelGUI); // Tạo và vẽ đối tượng obj_levelup_gui phía dưới các s_upgrade
if(global.armor_equip != "armor3"){
	instance_create_depth(vx - 90, vy - 35, -1002, obj_chest_item2);
}
if(global.book_equip != "book3"){
	instance_create_depth(vx - 90, vy + 55, -1002, obj_chest_item3);
}
if(global.boots_equip != "boots3"){
	instance_create_depth(vx - 90, vy +10, -1002, obj_chest_item1);
}

instance_create_depth(vx - 90, vy - 80, -1002, obj_chest_item4);
instance_destroy(other.id)
//instance_create_depth(vx - 90, vy - 35, -1001, obj_chest_item2);
//instance_create_depth(vx - 90, vy + 10, -1001, obj_chest_item3);
//instance_create_depth(vx - 90, vy + 55, -1001, obj_chest_item4);






