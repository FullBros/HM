var should_destroy = false;

if (place_meeting(x, y, obj_wall))
{
	should_destroy = true;
}


var neon = instance_place(x, y, obj_neon);
if (neon != noone)
{
	with(neon)
	{
		if (is_broken == false)
		{
			audio_play_sound(snd_broken_light, 2, false);
		
			is_broken = true;

			image_index = 1;
			mask_index = spr_empty;
		}
	}
	
	should_destroy = true;
}

if (should_destroy)
{
	instance_destroy();	
}