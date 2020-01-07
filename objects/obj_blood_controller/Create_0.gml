// System
blood_part_system = part_system_create();
part_system_layer(blood_part_system, "Blood_Part");

// Part type
blood_splatter = part_type_create();
part_type_shape(blood_splatter, pt_shape_disk);
part_type_color_rgb(blood_splatter, 99, 99, 4, 4, 6, 6);
part_type_life(blood_splatter, room_speed*300, room_speed*300);