// Lấy đối tượng người chơi
var player = instance_find(obj_Player, 0);

// Tìm đối tượng Enemy gần nhất
var nearest_enemy = instance_nearest(x, y, obj_Enemy_Parents);

// Kiểm tra xem người chơi và Enemy có tồn tại không
if (instance_exists(player) && instance_exists(nearest_enemy)) {
    // Tính toán hướng và khoảng cách giữa wukong và người chơi
    var direction_to_player = point_direction(x, y, player.x, player.y);
    var distance_to_player = point_distance(x, y, player.x, player.y);

    // Tính toán hướng và khoảng cách giữa wukong và Enemy gần nhất
    var direction_to_enemy = point_direction(x, y, nearest_enemy.x, nearest_enemy.y);
    var distance_to_enemy = point_distance(x, y, nearest_enemy.x, nearest_enemy.y);

    // Xác định hướng và xoay sprite
    image_xscale = sign(player.x - x) * 0.7;

    // Kiểm tra khoảng cách giữa wukong và người chơi
    if (distance_to_player > 600) {
        // Di chuyển wukong gần người chơi nếu cách xa hơn 400 pixel
        var move_speed = 1; // Tốc độ di chuyển của wukong
        x += lengthdir_x(move_speed, direction_to_player);
        y += lengthdir_y(move_speed, direction_to_player);
        
        // Thay đổi sprite khi wukong di chuyển
        sprite_index = s_wukong_run;
    } else if (distance_to_enemy > 50) {
        // Di chuyển wukong tới vị trí của Enemy nếu cách xa hơn 50 pixel
        var move_speed = 1; // Tốc độ di chuyển của wukong
        x += lengthdir_x(move_speed, direction_to_enemy);
        y += lengthdir_y(move_speed, direction_to_enemy);
        
        // Thay đổi sprite khi wukong di chuyển gần Enemy
        sprite_index = s_wukong_run;
        
        // Xoay mặt về hướng của Enemy
        image_xscale = sign(nearest_enemy.x - x) * 0.7;
    } else {
        // Đứng yên nếu gần người chơi hoặc gần Enemy
        sprite_index = s_wukong_attack;
    }
} else {
    // Người chơi hoặc Enemy không
	// Người chơi hoặc Enemy không tồn tại, tạm ẩn wukong
        visible = false;
    }


