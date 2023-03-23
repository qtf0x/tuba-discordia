/// @description Move the view

var view = view_camera[0];

camera_set_view_size(view, cam_w, cam_h);

if(instance_exists(obj_player)){
	// Clamp camera within room boundaries
	var _x = clamp(obj_player.x - cam_w/2, 0, room_width-cam_w);
	var _y = clamp(obj_player.y - cam_h/2, 0, room_height-cam_h);
	camera_set_view_pos(view_current, _x, _y); 
	
	// Give camera momentum
	var _cur_x = camera_get_view_x(view);
	var _cur_y = camera_get_view_y(view);
	
	
	camera_set_view_pos(view,
						lerp(_cur_x, _x, cam_spd), 
						lerp(_cur_y, _y, cam_spd));
}