/// @desc player pushes talk button when close, chooses options when talking

switch (global.game_state) {
	case game_states.PLAYING: // not already talking

	with (obj_player) { // running code in player object
		if (abs(x - other.x) < 128 && abs(y - other.y) < 128) {// if player close
			global.game_state = game_states.TALKING;
			break;
		}
	}
	
	break;
	
	case game_states.TALKING:
	// TODO: select current option
}
