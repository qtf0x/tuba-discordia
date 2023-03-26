/// @desc player gets close, show prompt

draw_self();

// don't spam me pls
if (in_use) exit;

if (global.game_state == game_states.PLAYING) { // not already talking
	with (obj_player) { // running code in player object
		if (abs(x - other.x) < 128 && abs(y - other.y) < 128) {// if player gets close
			draw_set_font(fnt_popups);
			draw_set_color(c_white);
			draw_set_halign(fa_center);
			// prompt player to talk
			draw_text(other.x, other.y - other.sprite_height - 15, "Save\n[E]");
		}
	}
}
