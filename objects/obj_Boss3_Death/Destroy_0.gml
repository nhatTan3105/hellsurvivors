/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();
global.boss3_created = true;

instance_create_layer(x, y, "Instances_1", obj_Chest);
//destroy enemy
var num_enemies = instance_number(obj_Enemy_Mushroom);
for (var i = 0; i < num_enemies; i++) {
    var enemy = instance_find(obj_Enemy_Mushroom, i);
    // Kiểm tra xem enemy có tồn tại không trước khi hủy
    if (instance_exists(enemy)) {
        // Hủy instance của obj_enemy_skeleton
        instance_destroy(enemy);
    }
}
global.enemy_limit = 20;
instance_create_layer(x+150, y+150, "Instances_1", obj_Enemy_Skeleton);
instance_create_layer(x-170, y+180, "Instances_1", obj_Enemy_Skeleton);
instance_create_layer(x+180, y-190, "Instances_1", obj_Enemy_Skeleton);
global.lv4 = true
global.lv_choose = 4;