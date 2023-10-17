
//Pause game when level up
if(instance_exists(obj_UpLevel)){
	image_speed = 0;
	exit;
}
image_speed = 1;

// Khai báo một biến để lưu trạng thái của nhân vật
var isMoving = false;

// Get input
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

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