/// @description initialize camera

var view = view_camera[0];
cam_w = camera_get_view_width(view);
cam_h = camera_get_view_height(view);
cam_spd = .1; // Used for camera momentum using lerp

window_scale = 1;

window_set_size(cam_w * window_scale, cam_h * window_scale);
alarm[0] = 1;
surface_resize(application_surface, cam_w * window_scale, cam_h * window_scale);
if(instance_exists(obj_player)){
	x = obj_player.x;
	y = obj_player.y;
} 
