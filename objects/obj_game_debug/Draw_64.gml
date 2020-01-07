if (is_debug_on)
{
	draw_set_color(c_white);
	draw_text(20,20,"[P] Debug: on");
	
	var godmode_txt;
	if (is_godmode_on)
		godmode_txt = "[G] Godmode: on";	
	else
		godmode_txt = "[G] Godmode: off";	
	draw_text(20,50,godmode_txt);
	
	var spawn_txt;
	if (is_spawn_enabled)
		spawn_txt = "[M] Spawn: on";	
	else
		spawn_txt = "[M] Spawn: off";	
	draw_text(20,80,spawn_txt);
	
	var shadow_txt;
	if (is_shadow_enabled)
		shadow_txt = "[N] Shadows: on";	
	else
		shadow_txt = "[N] Shadows: off";	
	draw_text(20,110,shadow_txt);
	
	var enemies_txt = "Enemies: " + string(instance_number(obj_zombie));
	draw_text(20,140, enemies_txt);
}