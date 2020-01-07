vx = 0;
vy = 0;

walkspeed = 6

weapon_shoot_buffer = 0;
weapon_shoot_buffer_max = 0.1 * room_speed;

muzzle_flash_max = 3;
muzzle_flash_remaining = 0;
muzzle_x = 0;
muzzle_y = 0;

aim_marker = instance_create_layer(mouse_x, mouse_y, "Aim_Marker", obj_aim_marker);

shoot_screenshake_magnitude = 3;
shoot_screenshake_length = 0.1;

aiming_direction = 0;