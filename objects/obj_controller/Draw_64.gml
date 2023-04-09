if (global.game_state = game_states.GAMEOVER){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_title);
	draw_set_color(c_red);
	draw_text(screen_width/2, screen_height/2, "GAME OVER!");
}

// UI ------

// health
draw_sprite_ext(spr_frames, 7, 84, 84, 1, 1, 0, c_white, 1);
draw_sprite_ext(spr_clef_0_green, -1, 82, 71, 0.5, 0.5, 0, c_white, 1);

for (var i = 0; i < global.max_hp; ++i) {
	if (i < obj_player.hp)
		draw_sprite_ext(spr_player_head, 0, 180 + i * 75, 105, 1, 1, 0, c_white, 1);
	else
		draw_sprite_ext(spr_player_head_gs, 0, 180 + i * 75, 105, 1, 1, 0, c_white, 1);
}

// keys
for (var i = 0; i < obj_player.keys; ++i) {
	draw_sprite_ext(spr_key, 0, 350 + i * 75, 137, 1, 1, 0, c_white, 1);
}

// coins
coin_frame += image_speed;
draw_sprite_ext(spr_coin_silver_spin, coin_frame, 167, 145, 1, 1, 0, c_white, 1);

draw_set_font(fnt_dialogue);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(230, 123, string("{0}", global.coins));
