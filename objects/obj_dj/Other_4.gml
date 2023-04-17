switch (room){
	case title_screen:
		audio_stop_all();
		global.current_bg_music = mus_titlescreen;
		audio_play_sound(global.current_bg_music, 0, true);
		break;
	case rm_start_0:
		audio_stop_all();
		global.current_bg_music = mus_core;
		audio_play_sound(global.current_bg_music, 0, true);
		break;
	case rm_forest:
		audio_stop_all();
		global.current_bg_music = mus_level_1;
		audio_play_sound(global.current_bg_music, 0, true);
		break;
}
