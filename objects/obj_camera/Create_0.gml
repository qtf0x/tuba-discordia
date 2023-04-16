/// @description initialize camera

view = view_camera[0];
global.cam_x = camera_get_view_x(view);
global.cam_y = camera_get_view_y(view);
global.cam_w = camera_get_view_width(view);
global.cam_h = camera_get_view_height(view);
cam_spd = .1; // Used for camera momentum using lerp

global.window_scale = 0.75;

window_set_size(global.cam_w * global.window_scale, global.cam_h * global.window_scale);
alarm[0] = 1;
surface_resize(application_surface, global.cam_w * global.window_scale, global.cam_h * global.window_scale);