var should_try_spawn_zombie = should_try_spawn_slow_zombie || should_try_spawn_fast_zombie;

if (should_try_spawn_zombie && obj_game_debug.is_spawn_enabled)
{
	var spawner = noone;
	var max_duration_last_spawn = 0;
	
	// Find spawner outside player's view which has not spawned in a long time
	with (obj_zombie_spawner)
	{
		var is_in_camera_view = point_in_rectangle(
			x,
			y,
			obj_camera_controller.x - (obj_camera_controller.camera_width/2) - other.buffer_half_enemy,
			obj_camera_controller.y - (obj_camera_controller.camera_height/2) - other.buffer_half_enemy,
			obj_camera_controller.x + (obj_camera_controller.camera_width/2) + other.buffer_half_enemy,
			obj_camera_controller.y + (obj_camera_controller.camera_height/2) + other.buffer_half_enemy
		);
		
		var has_enough_space_to_spawn = true;
		var inst_collided = collision_rectangle(
			x - (sprite_get_width(spr_zombie)/2), 
			y - (sprite_get_height(spr_zombie)/2), 
			x + (sprite_get_width(spr_zombie)/2), 
			y + (sprite_get_height(spr_zombie)/2), 
			obj_zombie, 
			false, 
			false 
		);
		
		if (inst_collided != noone)
		{
			has_enough_space_to_spawn = false;	
		}	

		if (!is_in_camera_view && has_enough_space_to_spawn)
		{
			var duration_last_spawn = current_time - time_last_spawn;
			if (duration_last_spawn > max_duration_last_spawn)
			{
				max_duration_last_spawn = duration_last_spawn;
				spawner = id;
			}	
		}
	}
	
	
	if (spawner != noone)
	{
		if (should_try_spawn_slow_zombie)
		{
			instance_create_layer(spawner.x, spawner.y, "Enemies", obj_zombie_slow);
			alarm[0] = room_speed * time_to_spawn_slow_zombie;
			should_try_spawn_slow_zombie = false;
		}
		else // should_try_spawn_fast_zombie
		{
			instance_create_layer(spawner.x, spawner.y, "Enemies", obj_zombie_fast);
			alarm[1] = room_speed * time_to_spawn_fast_zombie;
			should_try_spawn_fast_zombie = false;
		}
		
		spawner.time_last_spawn = current_time;
	}
}



// Find spawner