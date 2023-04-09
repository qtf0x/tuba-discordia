/// @desc player picks up key

instance_destroy(self);

with (other)
	keys++;

audio_play_sound(snd_coin_6, 10, false);
