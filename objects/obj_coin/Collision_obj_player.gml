/// @desc player picks up coin

instance_destroy(self);
audio_play_sound(sound, 5, false);
global.coins += value;
