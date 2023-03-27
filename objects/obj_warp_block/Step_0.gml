if (place_meeting(x,y,obj_player) && !instance_exists(obj_warp)){
	var warp = instance_create_depth(0,0,-9999, obj_warp);
	warp.target_x = target_x;
	warp.target_y = target_y;
	warp.target_rm = target_rm;
	
}