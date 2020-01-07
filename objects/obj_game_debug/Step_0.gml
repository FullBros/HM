if (keyboard_check_pressed(ord("P")))
{
	is_debug_on = !is_debug_on;	
}

if (is_debug_on)
{
	if (keyboard_check_pressed(ord("G")))
	{
		is_godmode_on = !is_godmode_on;
	}
	
	if (keyboard_check_pressed(ord("M")))
	{
		is_spawn_enabled = !is_spawn_enabled;
	}
	
	if (keyboard_check_pressed(ord("N")))
	{
		is_shadow_enabled = !is_shadow_enabled;
	}
}