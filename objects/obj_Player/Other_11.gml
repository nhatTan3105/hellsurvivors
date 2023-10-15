/// @description Weapon Shield
// You can write your code in this editor

if (!shield_created) {
    // Nếu fireball chưa được tạo ra, tạo mới shield
   var shield = instance_create_layer(x, y, "Instances_1", obj_Weapon_Shield);

    shield_created = true; // Đánh dấu rằng shield đã được tạo ra
}

