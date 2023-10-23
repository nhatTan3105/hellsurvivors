gamepad_set_axis_deadzone(0, 0.2);
//const
walkSpeed = 1.5;
global.pause = false;
global.enemy_limit = 20;
var themesongplay = audio_stop_sound(themesong);
audio_play_sound(lv1, 1, true);

// Global Variables
global.fireball_lvl = 0;
global.shield_lvl = 0;
global.blackhole_lvl = 0;
global.fireshoot_count = 1;
global.elapsed_time  = 0; 
global.player_mana = 0; 
global.player_max_mana = 10; 
global.player_max_hp = global.player_hp;
global.hit_cooldown = false;
global.spawn_time = 0;
global.addX_Slash = 40;
global.armor_equip = "armor1";
global.boots_equip = "boots1";
global.book_equip = "book1";
global.shake_duration = -1;
global.boss1_exist = false;
global.boss2_exist = false;
global.boss3_exist = false;
global.boss4_exist = false;

//Sound
global.canPlaySound = true;
global.slash_sound = false;
global.shield_sound = false;
global.lightbolt_sound = false;
global.fireshoot_sound = false;
global.fireball_sound = false;
global.blackhole_sound = false;

//BOSS
global.boss1_created = false;
global.boss2_created = false;
global.boss3_created = false;
global.boss4_created = false;
global.boss5_created = false;
global.skills_slot = ds_list_create();

if(global.player_class == "acher"){
	ds_list_add(global.skills_slot, sprite_get_name(s_upgrade_fireshoot));
	
	global.pick_slash = false;
	global.pick_lightbolt = false;
	global.pick_fireshoot = true;
	global.pick_fireball = false;
	global.pick_shield = false;
	global.pick_blackhole = false;
}else if(global.player_class == "warrior"){
	ds_list_add(global.skills_slot, sprite_get_name(s_upgrade_slash));
	global.pick_slash = true;
	global.pick_lightbolt = false;
	global.pick_fireshoot = false;
	global.pick_fireball = false;
	global.pick_shield = false;
	global.pick_blackhole = false;
}else if(global.player_class == "wizard"){
	ds_list_add(global.skills_slot, sprite_get_name(s_upgrade_lightbolt));
	global.pick_slash = false;
	global.pick_lightbolt = true;
	global.pick_fireshoot = false;
	global.pick_fireball = false;
	global.pick_shield = false;
	global.pick_blackhole = false;
}

//slash attribute
global.slash_dmg = global.player_damage*7;
global.slash_img_xs = 1;
global.slash_img_ys = 1;

//shield attribute
global.alarm_shield = -1;
global.push_back = 30;
global.shield_img_xs = 1;
global.shield_img_ys = 1;

//fireshoot attribute
global.fireshoot_dmg = global.player_damage*5;
//global.alarm_fireshoot = -1; //countdown

//lightbolt attribute
global.lightbolt_dmg = global.player_damage*3;

//blackhole attribute
global.blackhole_count = 0;
global.blackhole_dmg = global.player_damage*2;
global.alarm_blackhole = -1;

//fireball attribute
global.fireball_count = 0;
global.fireball_dmg = global.player_damage*5;
global.alarm_fireball = -1;

//optional weapon
alarm[0] = global.alarm_slash;
alarm[1] = global.alarm_shield;
alarm[2] = global.alarm_blackhole;
//alarm[3] = global.alarm_fireball;
alarm[5] = global.alarm_fireshoot;
alarm[6] = global.alarm_lightbolt;
alarm[9] = 60;

//collecting soul
alarm_collection = 20;
alarm[4] = alarm_collection;

//increase enemy limit
alarm[11] = 30;


//FireBall
fire_ball_offset_x = 70; // Điểm x tương đối so với obj_Player
fire_ball_offset_y = 0; // Điểm y tương đối so với obj_Player
fireball_created = false; // Khởi tạo biến để kiểm tra xem fireball đã được tạo ra hay chưa

//Weapon Created
shield_created = false;

//Collect Zone
collect_zone = 50;

//XP system
global.xp = 0;
global.xpNextLv = 4;

