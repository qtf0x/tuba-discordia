enum titlescreen_states {
	GAME_START,
	EXIT_GAME
};

titlescreen_state = titlescreen_states.GAME_START;
action_selected = false;
audio_play_sound(mus_titlescreen, 0, true);