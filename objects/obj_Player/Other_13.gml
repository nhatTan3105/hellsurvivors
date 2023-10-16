/// @description FireBall
// You can write your code in this editor

//Pause game when level up
if(instance_exists(obj_UpLevel)){
	exit;
}
if (!fireball_created) {
    // Nếu fireball chưa được tạo ra, tạo mới fireball
    var fire_ball = instance_create_layer(x + fire_ball_offset_x, y + fire_ball_offset_y, "Instances_1", obj_Weapon_FireBall);

    fireball_created = true; // Đánh dấu rằng fireball đã được tạo ra
}



