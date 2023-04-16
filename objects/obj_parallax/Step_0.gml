var near = layer_get_id("Background");
if (instance_exists(obj_camera)){
	layer_x(near, lerp(0, global.cam_x,  0.2));
	layer_y(near, lerp(0, global.cam_y,  0.2));
}