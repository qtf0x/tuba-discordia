/// @description Insert description here
// You can write your code in this editor
if (confirmation_state == confirmation_states.NONE){
	if (pause_state == pause_states.CONTINUE){
		pause_state = pause_states.QUIT;
	} else if (pause_state == pause_states.RESTART){
		pause_state = pause_states.CONTINUE;
	} else if (pause_state == pause_states.CONTROLS){
		pause_state = pause_states.RESTART;
	} else if (pause_state == pause_states.QUIT){
		pause_state = pause_states.CONTROLS;
	}
} else {
	if (confirmation_state == confirmation_states.YES){
		confirmation_state = confirmation_states.NO;
	} else if (confirmation_state == confirmation_states.NO){
		confirmation_state = confirmation_states.YES;
	}
}

audio_play_sound(snd_menu_option, 1, false);