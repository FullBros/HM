// Update object position
if (instance_exists(entity_to_follow))
{
	x = entity_to_follow.x;
	y = entity_to_follow.y; 
	
	//x = clamp(x, camera_half_width, room_width - camera_half_width);
	//y = clamp(y, camera_half_height, room_height - camera_half_height);
	
	// Screenshake
	x += random_range(-shake_remain,shake_remain);
	y += random_range(-shake_remain,shake_remain);
	shake_remain = max(0, shake_remain-((1/shake_length)*shake_magnitude));
}

// Update camera
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);

camera_set_view_mat(camera,vm);
