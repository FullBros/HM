draw_sprite_ext(
	sprite_index, 
	-1,
	x,
	y,
	image_xscale,
	image_yscale,
	direction,
	c_white,
	1
);

if (hit_flash > 0)
{
	shader_set(sh_white);
	
	draw_sprite_ext(
	sprite_index, 
	-1,
	x,
	y,
	image_xscale,
	image_yscale,
	direction,
	c_white,
	1
);
	
	shader_reset();
	
	hit_flash--;
}