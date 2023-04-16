/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_escape)) {
	game_end();
}


// make sure player stays out of tutorial area after
if (room == rm_forest && global.saved_room == rm_start_0) {
	global.saved_x = 517;
	global.saved_y = 2466;
	global.saved_room = rm_forest;
}

// check for death
with (obj_player) {
	if (hp <= 0) {
		visible = false;
		// drop coins
		instance_destroy(obj_coin_brown);
		instance_create_depth(x,y,-9999, obj_damage_effect);
		
		var drop = instance_create_layer(x, y, "Instances", obj_coin_brown);
		drop.current_room = room;
		drop.value = global.coins;
		
		
		if (room != global.saved_room){
			var warp = instance_create_depth(0,0,-9999, obj_warp);
			warp.target_x = global.saved_x;
			warp.target_y = global.saved_y;
			warp.target_rm = global.saved_room
		} else {
			x = global.saved_x;
			y = global.saved_y;
			visible = true;
		}
		
		global.coins = 0;
		hp = global.max_hp;
		hsp = 0;
		hacc = 0;
		vsp = 0;
		hit = false;
		hit_flash_delay = 0;
	}
}
