/// @desc player gets close, show talk button

switch (global.game_state) {
	case game_states.PLAYING: // not already talking

	with (obj_player) { // running code in player object
		if (abs(x - other.x) < 128 && abs(y - other.y) < 128) {// if player gets close
			draw_set_font(fnt_popups);
			draw_set_color(c_white);
			draw_set_halign(fa_center);
			// prompt player to talk
			draw_text(other.x, other.y - other.sprite_height - 15, "Talk\n[E]");
		}
	}
	
	break;
	
	case game_states.TALKING:

	// TODO: draw dialogue GUI
}
