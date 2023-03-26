/// @description Global variables

enum game_states {
	PLAYING,
	GAMEOVER,
	TALKING
};


global.game_state = game_states.PLAYING;
global.pause = false;

// game speed variables
game_set_speed(60, gamespeed_fps);
global.game_speed = game_get_speed(gamespeed_fps); // Game speed in fps

// music switch
switch (room) {
case rm_dev:
case rm_core:
	audio_play_sound(mus_core, 10, true);
	break;
}

// coins, lives, etc.
global.coins = 0;
coin_frame = 0;
image_speed = 0.1;
