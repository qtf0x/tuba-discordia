/// @description Insert description here
// You can write your code in this editor
if (titlescreen_state == titlescreen_states.GAME_START){
	if (!instance_exists(obj_warp)){
		var warp = instance_create_depth(0,0,-9999, obj_warp);
		warp.image_blend = c_red;
		warp.target_rm = rm_start_0;
		audio_play_sound(snd_select, 1, false);
		audio_stop_sound(mus_titlescreen);
	}
	action_selected = true;
} else {
	game_end();
}

