// Inherit the parent event
event_inherited();
if (!instance_exists(obj_UpLevel0)) {
    image_speed = 1;
    // Đặt hướng ngẫu nhiên cho obj_fireshoot khi nó được tạo ra
    if (!direction_set) {
        direction = random(360);
        direction_set = true;
    }

    // Di chuyển obj_fireshoot theo hướng đã đặt
    motion_set(direction, 1.6);

    // Đặt góc của sprite theo hướng di chuyển
    image_angle = direction;

    // Kiểm tra nếu obj_fireshoot ra khỏi viewport thì hủy nó
    if (!point_in_rectangle(x, y, view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0])) {
        instance_destroy();
    }
} else {
    image_speed = 0;
    speed = 0;
}





