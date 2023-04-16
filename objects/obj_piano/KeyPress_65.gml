/// @desc walk away from piano

if (in_use) {
	in_use = false;
	global.saving = false;
	
	audio_stop_sound(mus_waiting);
}
