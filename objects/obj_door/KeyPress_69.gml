if (global.game_state = game_states.PLAYING) {
	with (obj_player) { // running code in player object
		if (abs(x - other.x) < 128 && abs(y - other.y) < 128) {// if player close
			if (keys > 0) {
				instance_destroy(other);
				keys--;
			}
		}
	}
}