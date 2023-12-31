// Trong sự kiện Draw của đối tượng bạn muốn vẽ lên camera:

// Lấy tọa độ x, y trên viewport để vẽ sprite GUI
global.gui_x = view_xport[0]; 
global.gui_y = view_yport[0];



global.drawn_sprites_skills = ds_list_create();


// Draw clock
var minutes = floor((global.elapsed_time mod 3600) / 60);
var seconds = floor(global.elapsed_time mod 60);

// Định dạng chuỗi giờ:phút:giây
var minutes_str = string(minutes);
var seconds_str = string(seconds);

// Thêm "0" phía trước nếu giờ hoặc phút chỉ có một chữ số
if string_length(minutes_str) == 1 {
    minutes_str = "0" + minutes_str;
}
if string_length(seconds_str) == 1 {
    seconds_str = "0" + seconds_str;
}

var time_string = "Time: " + minutes_str + ":" + seconds_str;

draw_text(global.gui_x + 300, global.gui_y + 20, time_string);
//Draw avatar
if(global.player_class == "acher"){
	draw_sprite(s_GUI_Acher, 0, global.gui_x, global.gui_y);
	draw_sprite(s_upgrade_fireshoot, 0, global.gui_x + 44, global.gui_y + 151)
	draw_set_color(c_white); // Đặt màu vẽ là màu trắng (white)
	var weapon_lvl = "Level: " + string(global.fireshoot_lvl);
	draw_text(global.gui_x + 75, global.gui_y + 140, weapon_lvl);
	
	//add sprite to global.drawn_sprites_skills
	ds_list_add(global.drawn_sprites_skills, sprite_get_name(s_upgrade_fireshoot));
	
}else if(global.player_class == "warrior"){
	draw_sprite(s_GUI_Warrior, 0, global.gui_x, global.gui_y);
	draw_sprite(s_upgrade_slash, 0,  global.gui_x + 44, global.gui_y + 151)
	var weapon_lvl = "Level: " + string(global.slash_lvl);
	draw_text(global.gui_x + 75, global.gui_y + 140, weapon_lvl);
	ds_list_add(global.drawn_sprites_skills, sprite_get_name(s_upgrade_slash));
}else{
	draw_sprite(s_GUI_Wizard, 0, global.gui_x, global.gui_y);
	draw_sprite(s_upgrade_lightbolt, 0, global.gui_x + 44, global.gui_y + 151)
	var weapon_lvl = "Level: " + string(global.lightbolt_lvl);
	draw_text(global.gui_x + 75, global.gui_y + 140, weapon_lvl);
	ds_list_add(global.drawn_sprites_skills, sprite_get_name(s_upgrade_lightbolt));
}


//Draw Equip
for(var i = 1; i <= 3; i++){
	var equip1_check = "armor" + string(i);
	var equip2_check = "boots" + string(i);
	var equip3_check = "book" + string(i);
	if(global.armor_equip == equip1_check){
		draw_sprite(asset_get_index(equip1_check), 0, global.gui_x + 43, global.gui_y + 100);
	}
	if(global.boots_equip == equip2_check){
		draw_sprite(asset_get_index(equip2_check), 0, global.gui_x + 94, global.gui_y + 100);
	}
	if(global.book_equip == equip3_check){
		draw_sprite(asset_get_index(equip3_check), 0, global.gui_x + 144, global.gui_y + 100);
	}
}


var skill_y = global.gui_y + 194; // Vị trí y ban đầu
for (var i = 1; i < ds_list_size(global.skills_slot); i++) {
	
	switch(ds_list_find_value(global.skills_slot, i)){
		case "s_upgrade_lightbolt":
				i -= 1;
				draw_sprite(s_upgrade_lightbolt, 0, global.gui_x + 44, skill_y + 43*i)
				var weapon_lvl = "Level: " + string(global.lightbolt_lvl);
				draw_text(global.gui_x + 75, skill_y + 43*i - 11, weapon_lvl);
				break;
		case "s_upgrade_blackhole":
				i -= 1;
				draw_sprite(s_upgrade_blackhole, 0, global.gui_x + 44, skill_y + 43*i)
				var weapon_lvl = "Level: " + string(global.blackhole_lvl);
				draw_text(global.gui_x + 75, skill_y + 43*i - 11, weapon_lvl);
				break;
		case "s_upgrade_fireball":
				i -= 1;
				draw_sprite(s_upgrade_fireball, 0, global.gui_x + 44, skill_y + 43*i)
				var weapon_lvl = "Level: " + string(global.fireball_lvl);
				draw_text(global.gui_x + 75, skill_y + 43*i - 11, weapon_lvl);
				break;
		case "s_upgrade_fireshoot":
				i -= 1;
				draw_sprite(s_upgrade_fireshoot, 0, global.gui_x + 44, skill_y + 43*i)
				var weapon_lvl = "Level: " + string(global.fireshoot_lvl);
				draw_text(global.gui_x + 75, skill_y + 43*i - 11, weapon_lvl);
				break;
		case "s_upgrade_slash":
				i -= 1;
				draw_sprite(s_upgrade_slash, 0, global.gui_x + 44, skill_y + 43*i)
				var weapon_lvl = "Level: " + string(global.slash_lvl);
				draw_text(global.gui_x + 75, skill_y + 43*i - 11, weapon_lvl);
				break;
		case "s_upgrade_shield":
				i -= 1;
				draw_sprite(s_upgrade_shield, 0, global.gui_x + 44, skill_y + 43*i)
				var weapon_lvl = "Level: " + string(global.shield_lvl);
				draw_text(global.gui_x + 75, skill_y + 43*i - 11, weapon_lvl);
				break;
	}
	i+=1;
	
}

//DRAW HP
// Định dạng thanh HP
var hp_bar_width = 130; // Độ rộng của thanh HP
var hp_bar_height = 15; // Độ cao của thanh HP
var hp_bar_x = global.gui_x + 96; // Vị trí X của thanh HP
var hp_bar_y = global.gui_y + 7; // Vị trí Y của thanh HP
// Tính toán chiều dài của thanh HP dựa trên giá trị global.player_hp
var hp_percentage = clamp(global.player_hp / global.player_max_hp, 0, 1);
var hp_bar_length = hp_percentage * hp_bar_width;
// Thiết lập màu đỏ cho phần mất máu
draw_set_color(#646464);
// Vẽ phần mất máu màu đen
draw_rectangle(hp_bar_x + hp_bar_length, hp_bar_y, hp_bar_x + hp_bar_width, hp_bar_y + hp_bar_height, false);
// Thiết lập màu đỏ cho phần còn lại của thanh HP
draw_set_color(#B01F00);
// Vẽ thanh HP màu đỏ
draw_rectangle(hp_bar_x, hp_bar_y, hp_bar_x + hp_bar_length, hp_bar_y + hp_bar_height, false);
// Đặt lại màu về mặc định (trắng) nếu bạn cần vẽ các đối tượng khác với màu mặc định
draw_set_color(c_white);

//DRAW XP
// Định dạng thanh XP
var xp_bar_width = 130; // Độ rộng của thanh XP
var xp_bar_height = 15; // Độ cao của thanh XP
var xp_bar_x = global.gui_x + 96; // Vị trí X của thanh XP
var xp_bar_y = global.gui_y + 29; // Vị trí Y của thanh XP
// Tính toán chiều dài của thanh XP dựa trên giá trị xp và xpNextLv
var xp_percentage = clamp(global.xp / global.xpNextLv, 0, 1);
var xp_bar_length = xp_percentage * xp_bar_width;
// Thiết lập màu đen cho phần mất máu
draw_set_color(#646464);
draw_rectangle(xp_bar_x + xp_bar_length, xp_bar_y, xp_bar_x + xp_bar_width, xp_bar_y + xp_bar_height, false);
// Thiết lập màu xanh lá cho phần còn lại của thanh XP
draw_set_color(#12A600);
draw_rectangle(xp_bar_x, xp_bar_y, xp_bar_x + xp_bar_length, xp_bar_y + xp_bar_height, false);
// Đặt lại màu về mặc định (trắng) nếu bạn cần vẽ các đối tượng khác với màu mặc định
draw_set_color(c_white);

//Draw Mana
// Định dạng thanh Mana
var mana_bar_width = 130; // Độ rộng của thanh Mana
var mana_bar_height = 15; // Độ cao của thanh Mana
var mana_bar_x = global.gui_x + 96; // Vị trí X của thanh Mana
var mana_bar_y = global.gui_y + 51; // Vị trí Y của thanh Mana

// Tính toán chiều dài của thanh Mana dựa trên giá trị mana và giá trị tối đa của mana (10)
var mana_percentage = clamp(global.player_mana / global.player_max_mana, 0, 1);
var mana_bar_length = mana_percentage * mana_bar_width;

// Thiết lập màu đen cho phần mất máu
draw_set_color(#646464);
draw_rectangle(mana_bar_x + mana_bar_length, mana_bar_y, mana_bar_x + mana_bar_width, mana_bar_y + mana_bar_height, false);

// Thiết lập màu xanh lá cho phần còn lại của thanh Mana
draw_set_color(#0065A6);
draw_rectangle(mana_bar_x, mana_bar_y, mana_bar_x + mana_bar_length, mana_bar_y + mana_bar_height, false);

// Đặt lại màu về mặc định (trắng) nếu bạn cần vẽ các đối tượng khác với màu mặc định
draw_set_color(#EFEF0B);
var level = "Level: "+string(global.lv);
draw_text(global.gui_x + 300, global.gui_y + 51, level)
draw_set_color(c_white);
var count_enemy_destroy = "Enemies destroyed: "+string(global.enemy_dead);
draw_text(global.gui_x + 1150, global.gui_y + 20, count_enemy_destroy)




