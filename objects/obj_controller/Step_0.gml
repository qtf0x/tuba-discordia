/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_escape)) {
	game_end();
}

if (global.game_state == game_states.GAMEOVER){
	global.pause = true;
}

if (global.pause == true){
	instance_deactivate_all(true);
	instance_activate_object(obj_camera);
	global.pause = false;
}