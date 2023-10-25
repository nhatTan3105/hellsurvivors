/// @description Insert description here
// You can write your code in this editor

/// @function array_shuffle(array)
/// @description Shuffle the elements of an array.
/// @param {array} array - The array to shuffle.
/// @returns {array} Shuffled array.
if (global.canPlaySound) {
    audio_play_sound(item_collect, 10, false); 
}

function array_shuffle(array) {
    var n = array_length_1d(array);
    for (var i = 0; i < n - 1; i++) {
        var j = i + irandom(n - i - 1);
        var temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }
    return array;
}

//Pause game when level up
if(instance_exists(obj_UpLevel0)){
	exit;
}
global.xp += 1*global.xp_bonus;
if(global.xp >= global.xpNextLv){
	audio_play_sound(level_up, 10, false);
	global.xp = 0; 
	if(global.lv<5){
		global.xpNextLv += global.xpNextLv;
	}else if(global.lv<10){
		global.xpNextLv += global.xpNextLv*0.2;
	}else if(global.lv < 15){
		global.xpNextLv += global.xpNextLv*0.07;
	}else{
		global.xpNextLv = global.xpNextLv;
	}
	//xpNextLv = 4;
	//Draw GUI Up lv
	if(global.lv < 30){
	var vx= camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2);
	var vy= camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);
	//instance_create_depth(vx - 100, vy - 140, -1000, obj_UpLevelGUI); // Tạo và vẽ đối tượng obj_levelup_gui phía dưới các s_upgrade
	// Định danh của các đối tượng cần vẽ
	var obj_names = ["slash", "lightbolt", "fireball", "fireshoot", "shield", "blackhole"];
	//var obj_names = ["obj_slash_uplv", "obj_lightbolt_uplv", "obj_fireball_uplv", "obj_fireshoot_uplv", "obj_shield_uplv", "obj_blackhole_uplv"];
	// Xáo trộn danh sách đối tượng để chọn ngẫu nhiên
	obj_names = array_shuffle(obj_names);
	// Đếm số lượng đối tượng đã vẽ
	var drawn_count = 0;
	var xx = -20; // Khởi tạo giá trị xx
	var variable_count = 0; // Biến đếm tên biến
	for (var i = 0; i < 6; i++) {
		instance_create_depth(vx - 100, vy - 140, -1000, obj_UpLevelGUI);
	    // Lấy tên đối tượng hiện tại
	    var obj_name = obj_names[i];
	    // Kiểm tra level của đối tượng hiện tại
	    var level = 0; // Khởi tạo level mặc định
	    switch (obj_name) {
		    case "slash":
		        if (!variable_global_exists("slash_lvl")) {
		            global.slash_lvl = 0;
		        }
		        level = global.slash_lvl;
		        break;
		    case "lightbolt":
		        if (!variable_global_exists("lightbolt_lvl")) {
		            global.lightbolt_lvl = 0;
		        }
		        level = global.lightbolt_lvl;
		        break;
		    case "fireball":
		        level = global.fireball_lvl;
		        break;
		    case "fireshoot":
		        if (!variable_global_exists("fireshoot_lvl")) {
		            global.fireshoot_lvl = 0;
		        }
		        level = global.fireshoot_lvl;
		        break;
		    case "shield":
		        level = global.shield_lvl;
		        break;
		    case "blackhole":
		        level = global.blackhole_lvl;
		        break;
		}
	    // Kiểm tra nếu level của đối tượng chưa đạt 5 và vẽ đối tượng đó
	    if (level < 5) {
	        var sprite_name = "ss_upgrade_" + string(obj_name);
			//var obj_index = asset_get_index(obj_name);
			var vy_add = 10*i;
			var variable_name = "global.upgrade" + string(variable_count);
			var obj_uplv_name = "obj_UpLevel" + string(variable_count);
            variable_count += 1;
            variable_global_set(variable_name, instance_create_depth(vx, vy, -2000, asset_get_index(obj_uplv_name)));
            var current_upgrade = variable_global_get(variable_name);
            current_upgrade.desY = vy - xx - vy_add;
            current_upgrade.image_alpha = 1;
            current_upgrade.sprite_index = asset_get_index(sprite_name);
			//show_debug_message(string(sprite_name) + ": " + string(level))
	        drawn_count += 1;
	        xx += 50; // Tăng giá trị của xx thêm 50
	    }
	    // Kiểm tra nếu đã vẽ đủ 3 đối tượng, thoát khỏi vòng lặp
	    if (drawn_count >= 3) {
	        break;
	    }
	}
	}
	global.lv+=1;
}
instance_destroy(other.id)	



