/// @description Move the view


camera_set_view_size(view, global.cam_w, global.cam_h);

if(instance_exists(obj_player)){
	// Clamp camera within room boundaries
	var _x = clamp(obj_player.x - global.cam_w/2, 0, room_width-global.cam_w);
	var _y = clamp(obj_player.y - global.cam_h/2, 0, room_height-global.cam_h);
	camera_set_view_pos(view_current, _x, _y); 
	
	// Give camera momentum
	var _cur_x = camera_get_view_x(view);
	var _cur_y = camera_get_view_y(view);
	
	
	camera_set_view_pos(view,
						lerp(_cur_x, _x, cam_spd), 
						lerp(_cur_y, _y, cam_spd));
						
	global.cam_x = camera_get_view_x(view);
	global.cam_y = camera_get_view_y(view);
	global.cam_w = camera_get_view_width(view);
	global.cam_h = camera_get_view_height(view);
}