/// @description Step event

if (global.game_state == game_states.PLAYING){
	
	if (hit && hit_flash_delay <= 0){
		hit_flash_delay = global.game_speed * 1;
		hit = false;
	} else if (hit_flash_delay > 0){
		--hit_flash_delay;
	}
}