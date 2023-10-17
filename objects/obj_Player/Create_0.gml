gamepad_set_axis_deadzone(0, 0.2);

walkSpeed = 1.5;

alarm_slash = 60;
alarm_shield = 20;
alarm_blackhole = 150;
alarm_fireball = 20;
alarm_fireshoot = 60;
alarm_lightbolt = 90;

//weapon damage
//dmg_slash = 0;
dmg_fireball = 0;
dmg_blackhole = 0;
dmg_fireshoot = 0;
dmg_lightbolt = 0;
dmg_shield = 0;

global.pause = false;
global.enemy_limit = 20;
global.spawn_time = 0;
global.player_hp = 100;

//slash attribute
alarm[0] = 30;
global.slash_dmg = 50;
global.slash_img_xs = 1;
global.slash_img_ys = 1;

//shield attribute
global.push_back = 30;
global.shield_img_xs = 1;
global.shield_img_ys = 1;

//optional weapon
alarm[1] = alarm_shield;
alarm[2] = alarm_blackhole;
alarm[3] = alarm_fireball;
alarm[5] = alarm_fireshoot;
alarm[6] = alarm_lightbolt;

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