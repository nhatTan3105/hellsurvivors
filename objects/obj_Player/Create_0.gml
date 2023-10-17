gamepad_set_axis_deadzone(0, 0.2);


walkSpeed = 1.5;

//const



//no used
dmg_fireball = 0;
dmg_blackhole = 0;
dmg_fireshoot = 0;
dmg_lightbolt = 0;
dmg_shield = 0;

global.pause = false;
global.enemy_limit = 20;
global.spawn_time = 0;

//ready start
//global.player_hp = 10;
//global.player_damage = 0;
//global.xp_bonus = 1;

//slash attribute
//global.alarm_slash = -1;
global.slash_dmg = global.player_damage*5;
global.slash_img_xs = 1;
global.slash_img_ys = 1;

//shield attribute
global.alarm_shield = -1;
global.push_back = 30;
global.shield_img_xs = 1;
global.shield_img_ys = 1;

//fireshoot attribute
global.fireshoot_dmg = global.player_damage*2
//global.alarm_fireshoot = -1; //countdown

//lightbolt attribute

global.lightbolt_dmg = global.player_damage*6;

//blackhole attribute
global.alarm_blackhole = -1;

//fireball attribute
global.alarm_fireball = -1;


//optional weapon
alarm[0] = global.alarm_slash;
alarm[1] = global.alarm_shield;
alarm[2] = global.alarm_blackhole;
alarm[3] = global.alarm_fireball;
alarm[5] = global.alarm_fireshoot;
alarm[6] = global.alarm_lightbolt;

//collecting soul
alarm_collection = 20;
alarm[4] = alarm_collection;

//increase enemy limit
alarm[11] = 30;


//FireBall
fire_ball_offset_x = 70; // Điểm x tương đối so với obj_Player
fire_ball_offset_y = 0; // Điểm y tương đối so với obj_Player
fireball_created = false; // Khởi tạo biến để kiểm tra xem fireball đã được tạo ra hay chưa

//Shield
shield_created = false;



//Collect Zone
collect_zone = 50;

//XP system
xp = 0;
xpNextLv = 4;