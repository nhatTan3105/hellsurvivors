
//Pause game when level up
if(instance_exists(obj_UpLevel0)){
	image_speed = 0;
	exit;
}
image_speed = 1;

global.elapsed_time += 1/60;
if(global.player_mana <= 10){
	global.player_mana += 1/60;
}

// Khai báo một biến để lưu trạng thái của nhân vật
var isMoving = false;

// Get input
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

var control_press = keyboard_check(vk_control);

// Movement, Combined
var hor = (right - left);
var ver = (down - up);

// Override gamepad
if (gamepad_axis_value(0, gp_axislh) != 0 or gamepad_axis_value(0, gp_axislv) != 0) {
    hor = gamepad_axis_value(0, gp_axislh);
    ver = gamepad_axis_value(0, gp_axislv);
}	

// Apply movement
x += hor * walkSpeed;
y += ver * walkSpeed;

// Change direction of sprite
if (hor > 0) {
    image_xscale = 1;
    isMoving = true;
} else if (hor < 0) {
    image_xscale = -1;
    isMoving = true;
} else {
    isMoving = false;
}

if (ver != 0){
	isMoving = true;
}

// Change sprite based on movement
if (isMoving) {
    // Nếu đang di chuyển, chuyển sprite sang s_player_run
    sprite_index = global.sprite_run;
} else {
    // Ngược lại, chuyển sprite sang sprite đứng yên (ví dụ: s_player_idle)
    sprite_index = global.sprite_idle;
}

// Lặp qua tất cả các đối tượng của lớp obj_UpLevel và hủy chúng
var num_uplevels = instance_number(obj_UpLevel0);
for (var i = 0; i < num_uplevels; i++) {
    var uplevel_instance = instance_find(obj_UpLevel0, i);
    if (uplevel_instance != noone) {
        instance_destroy(uplevel_instance);
    }
}

// Cập nhật tọa độ camera để theo dõi obj_Player
camera_set_view_pos(view_camera[0], x - camera_get_view_width(view_camera[0]) / 2, y - camera_get_view_height(view_camera[0]) / 2);

// Cập nhật tọa độ viewport để theo dõi obj_Player
view_xview[0] = x - view_wview[0] / 2;
view_yview[0] = y - view_hview[0] / 2;





