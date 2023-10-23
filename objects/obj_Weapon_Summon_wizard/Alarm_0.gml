if (instance_exists(obj_UpLevel0)) {
    exit;
}

// Lặp qua tất cả các đối tượng kẻ địch
var num_enemies = instance_number(obj_Enemy_Parents);
for (var i = 0; i < num_enemies; i++) {
    var enemy = instance_find(obj_Enemy_Parents, i);
    // Kiểm tra xem enemy có hiển thị trên viewport không
    if (point_in_rectangle(enemy.x, enemy.y, view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0])) {
        // Tạo light_bolt tại vị trí của enemy
        var target_enemy = enemy;
        var xOffset = 2; // Điều chỉnh vị trí theo hướng trái và phải
        if (enemy.image_xscale == -1) {
            xOffset = -2; // Điều chỉnh vị trí khi enemy hướng về bên trái
        }
        var light_bolt_x = enemy.x + xOffset;
        var light_bolt_y = enemy.y + 2;
        var light_bolt = instance_create_layer(light_bolt_x, light_bolt_y, "Instances_1", obj_Weapon_LightBolt);
        light_bolt.depth = enemy.depth - 1;
		alarm[1] = 10;
    }
}

