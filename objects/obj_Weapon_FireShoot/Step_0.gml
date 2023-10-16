// Inherit the parent event
event_inherited();

// Đặt hướng ngẫu nhiên cho obj_fireshoot khi nó được tạo ra
if (!direction_set) {
    direction = random(360);
    direction_set = true;
}

// Di chuyển obj_fireshoot theo hướng đã đặt
motion_set(direction, 1.3);

// Đặt góc của sprite theo hướng di chuyển
image_angle = direction;
