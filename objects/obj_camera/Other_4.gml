view = view_camera[0];
view_enabled = true;
view_visible[0] = true;

global.cam_x = camera_get_view_x(view);
global.cam_y = camera_get_view_y(view);
global.cam_w = camera_get_view_width(view);
global.cam_h = camera_get_view_height(view);
	
	
if(instance_exists(obj_player)){
	var _x = clamp(obj_player.x - global.cam_w/2, 0, room_width-global.cam_w);
	var _y = clamp(obj_player.y - global.cam_h/2, 0, room_height-global.cam_h);
	camera_set_view_pos(view, _x, _y); 
} 