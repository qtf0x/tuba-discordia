/// @desc player interacts

if (in_use) exit; // don't spam me pls

// save location
global.saved_x = x;
global.saved_y = y - 16;

// restore health
obj_player.hp = global.max_hp;

// wait a moment
in_use = true;

// TODO: play animation, sound, etc.

//audio_sound_set_track_position(mus_waiting, 0);
audio_play_sound(mus_waiting, 10, true);
