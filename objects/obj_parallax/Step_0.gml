var near = layer_get_id("Background");

layer_x(near, lerp(0, obj_camera.cam_x,  0.2));
layer_y(near, lerp(0, obj_camera.cam_y,  0.2));