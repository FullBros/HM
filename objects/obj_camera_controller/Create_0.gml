camera_width = 1024;
camera_height = 768;

camera = camera_create();

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);

var pm = matrix_build_projection_ortho(camera_width,camera_height,1,20000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;

entity_to_follow = obj_player;

// Screenshake properties
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
