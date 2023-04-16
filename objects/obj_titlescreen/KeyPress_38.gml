if(titlescreen_state == titlescreen_states.GAME_START){
	titlescreen_state = titlescreen_states.EXIT_GAME;
} else if (titlescreen_state == titlescreen_states.EXIT_GAME){
	titlescreen_state = titlescreen_states.GAME_START;
} 
audio_play_sound(snd_menu_option, 1, false);