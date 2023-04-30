if (((room == rm_start_0) || (room == rm_start_1) || (room == rm_start_2))
	&& (global.current_bg_music != mus_core)){
		audio_stop_all();
		global.current_bg_music = mus_core;
		audio_play_sound(global.current_bg_music, 0, true);
	}

if (room == title_screen
	&& (global.current_bg_music != mus_titlescreen)){
		audio_stop_all();
		global.current_bg_music = mus_titlescreen;
		audio_play_sound(global.current_bg_music, 0, true)
	}
if (((room == rm_forest_0) || (room == rm_forest_1))
	&& (global.current_bg_music != mus_level_1)){
		audio_stop_all();
		global.current_bg_music = mus_level_1;
		audio_play_sound(global.current_bg_music, 0, true);
	}
