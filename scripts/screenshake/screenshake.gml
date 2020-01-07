/// @desc screenshake(magnitude,frames)
/// @arg magnitude sets the strength of the shake
/// @arg frames sets the length of the shake in seconds

with(obj_camera_controller)
{
	if (argument0 > shake_remain)
	{
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = room_speed * argument1;
	}
}