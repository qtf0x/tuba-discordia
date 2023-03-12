/// @description Global variables

enum game_states {
	PLAYING,
	GAMEOVER,
	GAMEWON,
};


global.game_state = game_states.PLAYING;
global.pause = false;


// game speed variables
game_set_speed(60, gamespeed_fps);
global.game_speed = game_get_speed(gamespeed_fps); // Game speed in fps

