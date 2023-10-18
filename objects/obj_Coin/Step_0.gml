/// @description Insert description here
// You can write your code in this editor
if (!global.pause && can_collect) {
    // Tính toán hướng và vận tốc
	image_speed = 1;
    direction = point_direction(x, y, obj_Player.x, obj_Player.y);
    speed = 1.4;
    
    // Cập nhật vận tốc dựa trên hướng và speed
    motion_set(direction, speed);
} else {
    // Nếu đang trong trạng thái pause, dừng vận tốc của đối tượng
	image_speed = 0;
    motion_set(0, 0);
}







