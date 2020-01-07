if (room == rm_gameover || room == rm_game)
{
	draw_set_color(c_white);

	time_text = "Time: " + string(time) + "s";
	time_score = "Kills: " + string(nb_zombies_killed);

	draw_set_halign(fa_center);
	draw_text_transformed(camera_width/2, y_ui, time_text, 1.3, 1.3, 0);
	draw_text_transformed(camera_width/2, y_ui-30, time_score, 1.3, 1.3, 0);
	draw_set_halign(fa_left);
}