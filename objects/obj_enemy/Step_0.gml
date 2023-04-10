event_inherited();

if (global.game_state == game_states.PLAYING){
	
	if (is_knockback && knockback_timer <= 0){
		knockback_timer = global.game_speed * knockback_timer_multiplier;
		is_knockback = false;
	} else if (knockback_timer > 0){
		--knockback_timer;
	} else{
		hsp_knockback = 0;
		vsp_knockback = 0;
	}
}
