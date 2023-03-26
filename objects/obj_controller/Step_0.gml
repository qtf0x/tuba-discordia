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

// check for death
with (obj_player) {
	if (hp <= 0) {
		// drop coins
		instance_destroy(obj_coin_brown);
		
		var drop = instance_create_layer(x, y, "Instances", obj_coin_brown);
		drop.value = global.coins;
		
		x = global.saved_x;
		y = global.saved_y;
		global.coins = 0;
		hp = global.max_hp;
		hsp = 0;
		hacc = 0;
		vsp = 0;
		hit = false;
		hit_flash_delay = 0;
	}
}
