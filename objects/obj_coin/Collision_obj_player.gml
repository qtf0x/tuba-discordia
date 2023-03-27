/// @desc player picks up coin
if (visible && other.visible){
	instance_destroy(self);
	audio_play_sound(sound, 5, false);
	global.coins += value;
}
