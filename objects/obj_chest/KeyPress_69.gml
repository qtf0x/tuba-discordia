if (global.game_state = game_states.PLAYING) {
	with (obj_player) { // running code in player object
		if (abs(x - other.x) < 128 && abs(y - other.y) < 128) {// if player close
			if (keys > 0 && !other.is_open) {
				// TODO
				global.coins += other.value;
				audio_play_sound(snd_triumph, 10, false);
				other.sprite_index = spr_chest_open;
				keys--;
				other.is_open = true;
			}
		}
	}
}