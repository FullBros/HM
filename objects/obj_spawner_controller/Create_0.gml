time_to_spawn_slow_zombie = 0.5;
time_to_spawn_fast_zombie = 5;

should_try_spawn_slow_zombie = false;
should_try_spawn_fast_zombie = false;

alarm[0] = room_speed * time_to_spawn_slow_zombie;
alarm[1] = room_speed * time_to_spawn_fast_zombie;

buffer_half_enemy = 50; // Buffer to spawn outside the player's view