/// @description FireShoot
// You can write your code in this editor

if(instance_exists(obj_UpLevel0)){
	exit;
}

for( i = 0; i < global.fireshoot_count; i++){
	var fire_shoot = instance_create_layer(x,y , "Instances_1", obj_Weapon_FireShoot);
}

