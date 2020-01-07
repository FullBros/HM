var _cw = obj_camera_controller.camera_width;
var _ch = obj_camera_controller.camera_height;

if (!surface_exists(surface))
{
    surface = surface_create(_cw, _ch);
	
    surface_set_target(surface);
    draw_set_colour(c_black);
    draw_set_alpha(0);
    draw_rectangle(0, 0, _cw, _cw, false);
	
    surface_reset_target();
}

var _cx = obj_camera_controller.x - (_cw/2);
var _cy = obj_camera_controller.y - (_ch/2);
	
surface_set_target(surface);
	
draw_set_color(c_black);
draw_set_alpha(0.90);
draw_rectangle(0, 0, _cw, _ch, 0);
	
gpu_set_blendmode(bm_subtract);

with (obj_light_emitter)
{
	switch(object_index)
	{
		case obj_player:
		    draw_sprite_ext(spr_light_torch, 0, x - _cx, y - _cy, 3, 3, obj_player.aiming_direction, c_white, 1);            
		    break;
			
		case obj_neon:
			if (!is_broken)
			{
				draw_sprite_ext(spr_light_neon, 0, x - _cx, y - _cy, 3, 3, image_angle, c_white, 1);
			}
			break;
	}
	
}

gpu_set_blendmode(bm_normal);

draw_set_alpha(1);

surface_reset_target();

if (obj_game_debug.is_shadow_enabled)
{
	draw_surface(surface, _cx, _cy);
}