/// @description Insert description here
// You can write your code in this editor
if (titlescreen_state == titlescreen_states.GAME_START){
	if (!instance_exists(obj_warp)){
		var warp = instance_create_depth(0,0,-9999, obj_warp);
		warp.image_blend = c_red;
		warp.target_rm = rm_start_0;
	}
	action_selected = true;
}

audio_stop_sound(mus_titlescreen);
audio_play_sound(snd_select, 1, false);