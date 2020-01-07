event_inherited();

if (should_play_sound && point_distance(x, y, obj_player.x, obj_player.y) < 400)
{
	sound_to_play = snd_alien;
	
	audio_play_sound(sound_to_play, 4, false);
	
	should_play_sound = false;
	alarm[0] = random_range(10,15);
}
