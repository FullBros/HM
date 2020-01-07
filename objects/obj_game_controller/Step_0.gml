if (keyboard_check_pressed(ord("R")))
{
	if (room == rm_game || room == rm_gameover)
	{
		if (instance_exists(obj_blood_controller))
		{
			part_system_clear(obj_blood_controller.blood_part_system);	
		}
		room_goto(rm_game);
	}
}

if (keyboard_check_pressed(vk_escape))
{
	if (room == rm_menu)
	{
		game_end();	
	}
	else
	{
		room_goto(rm_menu);	
	}
}

if (room == rm_menu)
{
	if (mouse_check_button_pressed(mb_left))
	{
		room_goto(rm_game);
	}
}

if (room == rm_game)
{
	time += delta_time/1000000;
}