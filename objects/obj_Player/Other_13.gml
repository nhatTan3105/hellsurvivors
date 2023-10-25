/// @description FireBall
// You can write your code in this editor
//Pause game when level up
if(instance_exists(obj_UpLevel0)){
	exit;
}


// Bán kính của vòng tròn chứa các fireball
instance_destroy(obj_Weapon_FireBall)
// Bán kính của vòng tròn chứa các fireball
var radius = 50;
switch (global.fireball_count) {
	    case 1:
	        radius = 35;
	        break;
	    case 2:
	        radius = 45;
	        break;
	    case 3:
	        radius = 55;
	        break;
	    case 4:
	        radius = 65;
	        break;
	    case 5:
	        radius = 95;
	        break;
	    default:
	        radius = 35; // Giá trị mặc định nếu global.fireball_count không nằm trong các trường hợp trên
	}
var angle_increment = 360 / global.fireball_count; // Góc giữa mỗi fireball
// Xác định vị trí ban đầu của fireball
var fireball_x = x + radius;
var fireball_y = y;
// Vòng lặp để tạo ra fireball và phân bố chúng trên đường tròn
for (var i = 1; i <= global.fireball_count; i++) {	
    var angle = i * angle_increment; // Góc của fireball thứ i
    var fireball_name = "fire_ball" + string(i);
    var fireball = instance_create_layer(fireball_x, fireball_y, "Instances_1", obj_Weapon_FireBall);
    // Tính toán vị trí của fireball thứ i trên đường tròn
    fireball_x = x + radius * dcos(angle);
    fireball_y = y - radius * dsin(angle);
}





