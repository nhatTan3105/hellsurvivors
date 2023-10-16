walkSpeed = 1.5;

gamepad_set_axis_deadzone(0, 0.2);

alarm_slash = 80;
alarm_shield = 20;
alarm_blackhole = 20;
alarm_fireball = 20;
alarm_collection = 20;

global.enemy_limit = 20;

alarm[0] = alarm_slash;
alarm[1] = alarm_shield;
alarm[2] = alarm_blackhole;
alarm[3] = alarm_fireball;

//collecting soul
alarm[4] = alarm_collection;

//increase enemy limit
alarm[11] = 30;


//FireBall
fire_ball_offset_x = 70; // Điểm x tương đối so với obj_Player
fire_ball_offset_y = 0; // Điểm y tương đối so với obj_Player
fireball_created = false; // Khởi tạo biến để kiểm tra xem fireball đã được tạo ra hay chưa

//Shield
shield_created = false;

//Damage
dmg_slash = 80;
dmg_fireball = 80;
dmg_blackhole = 80;
dmg_shield = 0;

//Collect Zone
collect_zone = 50;

//XP system
xp = 0;
xpNextLv = 4;