/// @desc walk away from piano

if (in_use) {
	in_use = false;
	
	audio_stop_sound(mus_waiting);
}
