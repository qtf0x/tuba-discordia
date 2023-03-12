/// @description Draw event

if (global.game_state == game_states.PLAYING){
	image_speed = 1;
	if (hit_flash_delay > 0) { 
		if (int64(hit_flash_delay) % 5 == 0){ // Flicker effect
			
		    shader_set(shd_white);    // Sets the shader to our shader file we created earlier
		    draw_self();  // Draws the sprite, but now we have a shader set so it draws it as white
		    shader_reset(); // Resets the shader to the default one (does nothing)
		} else {
			draw_self();
		}

	} else {
	    draw_self(); // If hit is false, no shader is applied.
	}
}