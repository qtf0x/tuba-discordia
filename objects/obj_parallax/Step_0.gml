var near = layer_get_id("Background");
if (instance_exists(obj_camera)){
	layer_x(near, lerp(0, global.cam_x, parallax_speed));
	layer_y(near, lerp(0, global.cam_y,  parallax_speed));
}