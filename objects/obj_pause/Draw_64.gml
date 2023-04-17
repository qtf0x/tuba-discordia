// Pause menu
	
if (global.pause){
	draw_set_color(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(0,0,screen_width, screen_height, false);
	draw_set_alpha(1);
	
	if (confirmation_state == confirmation_states.NONE){
		draw_set_color(c_red);
		draw_set_font(fnt_menu);
		draw_set_halign(fa_center);
		draw_text(screen_width/2, 2*screen_height/8,"> PAUSE MENU <");
		// Continue
		if (pause_state == pause_states.CONTINUE){draw_set_color(c_yellow);}
		else {draw_set_color(c_white);}
		draw_text(screen_width/2, 3*screen_height/8,"CONTINUE");
		// Restart
		if (pause_state == pause_states.RESTART){draw_set_color(c_yellow);}
		else {draw_set_color(c_white);}
		draw_text(screen_width/2, 4*screen_height/8,"RESTART");
		// Controls
		if (pause_state == pause_states.CONTROLS){draw_set_color(c_yellow);}
		else {draw_set_color(c_white);}
		draw_text(screen_width/2, 5*screen_height/8,"CONTROLS");
		// quit
		if (pause_state == pause_states.QUIT){draw_set_color(c_yellow);}
		else {draw_set_color(c_white);}
		draw_text(screen_width/2, 6*screen_height/8,"QUIT");
	} else {
		
		draw_set_color(c_white);
		draw_set_font(fnt_menu);
		draw_set_halign(fa_center);
		draw_text(screen_width/2, 2*screen_height/8,"> ARE YOU SURE <");
		var pause_state_string = "";
		if (pause_state == pause_states.RESTART) pause_state_string = "RESTART";
		if (pause_state == pause_states.QUIT) pause_state_string = "QUIT";
		draw_text(screen_width/2, 3*screen_height/8,"> YOU WANT TO " + pause_state_string + " <");
		// YES
		if (confirmation_state == confirmation_states.YES){draw_set_color(c_yellow);}
		else {draw_set_color(c_white);}
		draw_text(screen_width/2, 5*screen_height/8,"YES");
		// NO
		if (confirmation_state == confirmation_states.NO){draw_set_color(c_yellow);}
		else {draw_set_color(c_white);}
		draw_text(screen_width/2, 6*screen_height/8,"NO");
	}
}