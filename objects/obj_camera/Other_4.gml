view = view_camera[0];
view_enabled = true;
view_visible[0] = true;

cam_x = camera_get_view_x(view);
cam_y = camera_get_view_y(view);
cam_w = camera_get_view_width(view);
cam_h = camera_get_view_height(view);
	
	
if(instance_exists(obj_player)){
	var _x = clamp(obj_player.x - cam_w/2, 0, room_width-cam_w);
	var _y = clamp(obj_player.y - cam_h/2, 0, room_height-cam_h);
	camera_set_view_pos(view, _x, _y); 
} 