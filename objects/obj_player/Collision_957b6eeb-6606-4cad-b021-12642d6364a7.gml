if (!obj_game_debug.is_godmode_on)
{
	part_system_clear(obj_blood_controller.blood_part_system);
	room_goto(rm_gameover);
}