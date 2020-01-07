if (muzzle_flash_remaining > 0)
{
	draw_sprite(spr_muzzle_flash, -1, muzzle_x, muzzle_y);
}

draw_sprite_ext(
	sprite_index, 
	-1,
	x,
	y,
	image_xscale,
	image_yscale,
	aiming_direction,
	c_white,
	1
);

