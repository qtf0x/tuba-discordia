if (global.saving && !waiting) {
	audio_stop_all();
	audio_play_sound(mus_waiting, 10, true);
	waiting = true;
}

if (!global.saving && waiting) {
	waiting = false;
	audio_play_sound(global.current_bg_music, 0, true);
}