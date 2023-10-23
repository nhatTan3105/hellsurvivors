/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();
global.boss3_created = true;

instance_create_layer(x, y, "Instances_1", obj_Chest);
instance_destroy(obj_Enemy_Mushroom);
global.enemy_limit = 20;
instance_create_layer(x+150, y+150, "Instances_1", obj_Enemy_Skeleton);