

if (global.pause){
	surface_set_target(application_surface);
	if (surface_exists(pause_surf)){
		draw_surface(pause_surf, 0, 0);
	}
	else {
		pause_surf = surface_create(screen_width, screen_height);
		buffer_set_surface(pause_surf_buffer, pause_surf, 0);
	}
	surface_reset_target();
	
} 