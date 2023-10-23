
//pause game

//Pause game when level up
if(instance_exists(obj_UpLevel0)){
	image_speed = 0;
	exit;
}
global.pause_sound = false;
image_speed = 1;

global.elapsed_time += 1/60;
if(global.player_mana <= 10){
	global.player_mana += 1/60;
}

// Khai báo một biến để lưu trạng thái của nhân vật
var isMoving = false;

// Get input
var left = keyboard_check(ord("A"));  // Phím A
var right = keyboard_check(ord("D")); // Phím D
var up = keyboard_check(ord("W"));    // Phím W
var down = keyboard_check(ord("S"));  // Phím S


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
if(global.pause == true){
	audio_stop_sound(item_collect)
}

if (global.shake_duration > 0) {
    // Giảm thời gian còn lại của hiệu ứng rung màn hình
    global.shake_duration--;

    // Thay đổi tọa độ x và y của tất cả các đối tượng trên màn hình ngẫu nhiên trong khoảng nhỏ
    var shake_amount = 5; // Điều chỉnh độ lớn của hiệu ứng rung
    var shake_x = random_range(-shake_amount, shake_amount);
    var shake_y = random_range(-shake_amount, shake_amount);

    // Áp dụng hiệu ứng rung cho tất cả các đối tượng
    var instance_counts = instance_number(obj_Enemy_Parents); // Số lượng đối tượng kẻ địch
    for (var i = 0; i < instance_counts; i++) {
        var enemy = instance_find(obj_Enemy_Parents, i);
        enemy.x += shake_x;
        enemy.y += shake_y;
    }
	

    // Áp dụng hiệu ứng rung cho các đối tượng khác nếu cần thiết
    // ...
}



