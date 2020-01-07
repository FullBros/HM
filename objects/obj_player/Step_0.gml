// Inputs
key_left = keyboard_check(vk_left) || keyboard_check(ord("Q"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("Z"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

key_shoot = mouse_check_button(mb_left);

#region DISPLACEMENT

var move_x = key_right - key_left;
var move_y = key_down - key_up;

var normalized_speed = walkspeed;
if (move_x != 0 && move_y != 0)
{
	normalized_speed /= sqrt(2);
}

vx = move_x * normalized_speed;
vy = move_y * normalized_speed;

#region COLLISION TEST

if (place_meeting(x+vx, y, obj_wall))
{	
	while (!place_meeting(x+sign(vx), y, obj_wall))
	{
		x += sign(vx);
	}
	
	vx = 0;
}

if (place_meeting(x, y+vy, obj_wall))
{	
	while (!place_meeting(x, y + sign(vy), obj_wall))
	{
		y += sign(vy);
	}
	
	vy = 0;
}

#endregion

x += vx;
y += vy;

#endregion

#region AIMING & SHOOTING

aiming_direction = point_direction(x, y, mouse_x, mouse_y);

if (key_shoot && weapon_shoot_buffer == 0)
{
	audio_play_sound(snd_rifle_2, 1, false);

	weapon_shoot_buffer = weapon_shoot_buffer_max;
	screenshake(shoot_screenshake_magnitude, shoot_screenshake_length);
	muzzle_flash_remaining = muzzle_flash_max;

	// Rifle
	with (instance_create_layer(x, y, "Bullets", obj_bullet))
	{
		var bullet_direction = other.aiming_direction + random_range(-3,3);
		direction = bullet_direction;
		image_angle = bullet_direction;
	}
	
	// Shotgun
	/*
	with (instance_create_layer(x, y, "Bullets", obj_bullet))
	{
		var bullet_direction = other.aiming_direction - 7;
		direction = bullet_direction;
		image_angle = bullet_direction;
	}
	
	with (instance_create_layer(x, y, "Bullets", obj_bullet))
	{
		var bullet_direction = other.aiming_direction;
		direction = bullet_direction;
		image_angle = bullet_direction;
	}
	
	with (instance_create_layer(x, y, "Bullets", obj_bullet))
	{
		var bullet_direction = other.aiming_direction + 7;
		direction = bullet_direction;
		image_angle = bullet_direction;
	}
	*/
}

weapon_shoot_buffer = max(0, weapon_shoot_buffer - 1);
muzzle_flash_remaining = max(0, muzzle_flash_remaining - 1);

if (muzzle_flash_remaining > 0)
{
	muzzle_x = x + lengthdir_x(43, aiming_direction);
	muzzle_y = y + lengthdir_y(43, aiming_direction);
}

#endregion