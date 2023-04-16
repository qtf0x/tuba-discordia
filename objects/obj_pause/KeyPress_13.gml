if (!global.pause){// Draw frozen image to screen while paused
	global.pause = true;
	// deactivate everything other than this object
	instance_deactivate_all(true);
	// capture this game moment (Won't capture gui, though)
	pause_surf = surface_create(screen_width, screen_height);
	surface_set_target(pause_surf);
	draw_surface(application_surface, 0, 0);
	surface_reset_target();
	
	// Back up this surface to a buffer in case we lose it (screen focus, etc)
	if (buffer_exists(pause_surf_buffer)) buffer_delete(pause_surf_buffer);
	pause_surf_buffer = buffer_create(screen_width * screen_height * 4, buffer_fixed, 1); // Multiply by 4 to account for RGBA
	buffer_get_surface(pause_surf_buffer, pause_surf, 0);
} else {
	audio_play_sound(snd_select, 1, false);
	if (pause_state == pause_states.CONTINUE){ // Continue the game
		audio_play_sound(snd_select, 1, false);
		global.pause = false;
		instance_activate_all();
		if (surface_exists(pause_surf)) surface_free(pause_surf);
		if (buffer_exists(pause_surf_buffer)) buffer_delete(pause_surf_buffer);
	} else{
		if (confirmation_state == confirmation_states.NONE){ // Either restart or quit have been selected, show confirmation screen
			confirmation_state = confirmation_states.YES; // Go to confirmation screen
		} else if (confirmation_state == confirmation_states.NO){
			confirmation_state = confirmation_states.NONE; // Go back to original pause screen
		} else if (confirmation_state == confirmation_states.YES){
			if (pause_state = pause_states.RESTART){
				game_restart();
			} else if (pause_state = pause_states.QUIT){
				game_end();
			}
		}
	}
}