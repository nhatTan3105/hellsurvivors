/// @description Light Bolt
// You can write your code in this editor
if(instance_exists(obj_UpLevel)){
	exit;
}
// Tìm đối tượng kẻ địch gần nhất
closest_enemy = noone;
closest_distance = -1;

var num_enemies = instance_number(obj_Enemy_Parents);
for (var i = 0; i < num_enemies; i++) {
    var enemy = instance_find(obj_Enemy_Parents, i);
    var distance_to_player = point_distance(enemy.x, enemy.y, obj_Player.x, obj_Player.y);

    if (closest_distance == -1 || distance_to_player < closest_distance) {
        closest_distance = distance_to_player;
        closest_enemy = enemy;
    }
}

// Gán đối tượng kẻ địch gần nhất cho obj_fireshoot và tạo obj_fireshoot tại vị trí của enemy
if (closest_enemy != noone) {
    target_enemy = closest_enemy;
    var xOffset = 2; // Điều chỉnh vị trí theo hướng trái và phải
    if (closest_enemy.image_xscale == -1) {
        xOffset = -2; // Điều chỉnh vị trí khi closest_enemy hướng về bên trái
    }
    var light_bolt = instance_create_layer(closest_enemy.x + xOffset, closest_enemy.y + 2, "Instances_1", obj_Weapon_LightBolt);
    light_bolt.depth = closest_enemy.depth - 1;
}
