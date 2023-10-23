if (instance_exists(obj_UpLevel0)) {
    exit;
}
// Lặp qua tất cả các đối tượng kẻ địch
for (var i = 0; i < 100; i++) {
        var light_bolt = instance_create_layer(x, y, "Instances_1", obj_Weapon_FireShoot);
        light_bolt.speed = 2;
        light_bolt.direction = irandom(360); // Hướng di chuyển ngẫu nhiên
        light_bolt.image_angle = light_bolt.direction; // Góc hình ảnh của light_bolt sẽ hướng theo hướng di chuyển
    
}

