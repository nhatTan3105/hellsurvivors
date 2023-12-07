// Trong sự kiện Step của Wukong
var player = instance_nearest(x, y, obj_Player);

if (instance_exists(player)) {
    // Kiểm tra xem người chơi có dịch chuyển không
    if (player_x_prev != player.x || player_y_prev != player.y) {
        // Người chơi đã di chuyển, Wukong sẽ theo sau
        should_follow = true;
        
        // Xác định hướng di chuyển
        var move_direction = point_direction(player_x_prev, player_y_prev, player.x, player.y);
        
        // Thay đổi hướng của sprite dựa trên hướng di chuyển
        if (move_direction < 90 || move_direction > 270) {
            image_xscale = 0.7; // Di chuyển về bên phải
        } else {
            image_xscale = -0.7; // Di chuyển về bên trái
        }
    }
    
    // Lưu trữ vị trí người chơi để kiểm tra ở lần Step tiếp theo
    player_x_prev = player.x;
    player_y_prev = player.y;
    
    // Kiểm tra xem Wukong có nên di chuyển không
    if (should_follow && point_distance(x, y, player.x - 50, player.y) > 50) {
        // Di chuyển Wukong đến sau lưng người chơi
        direction = point_direction(x, y, player.x - 50, player.y);
        x += lengthdir_x(1, direction);
        y += lengthdir_y(1, direction);
        sprite_index = s_wukong_run;
    } else {
        // Dừng Wukong nếu đủ gần sau lưng người chơi hoặc người chơi dừng lại
        sprite_index = s_wukong_attack;
    }
} else {
    // Người chơi không tồn tại, tạm ẩn Wukong
    visible = false;
}
