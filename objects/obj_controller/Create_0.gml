/// @description Global variables

randomise(); // seed RNG

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
case rm_forest:
	audio_play_sound(mus_main, 10, true);
	break;
}

// coins, lives, etc.
global.coins = 0;
coin_frame = 0;
image_speed = 0.1;

global.max_hp = 10;

// last save location
global.saved_x = 448;
global.saved_y = 2368;
global.saved_room = room;

// Set randomizer
randomise();
