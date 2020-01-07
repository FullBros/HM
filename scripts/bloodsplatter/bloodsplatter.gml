/// @desc bloodsplatter(x, y, direction)
/// @arg x
/// @arg y
/// @arg direction for the splatter

with(obj_blood_controller)
{
	part_type_direction(blood_splatter, argument2 - 30, argument2 + 30, 0, 0);
	part_type_size(blood_splatter, 0.05, 0.2, 0, 0);
	part_type_speed(blood_splatter, 5, 10, -0.5, 0);
	part_particles_create(blood_part_system, argument0, argument1, blood_splatter, 10);
	
	part_type_direction(blood_splatter, argument2 - 60, argument2 + 60, 0, 0);
	part_type_size(blood_splatter, 0.4, 0.6, 0, 0);
	part_type_speed(blood_splatter, 3, 5, -0.5, 0);
	part_particles_create(blood_part_system, argument0, argument1, blood_splatter, 5);
}