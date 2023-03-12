if (global.game_state = game_states.GAMEOVER){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_title);
	draw_set_color(c_red);
	draw_text(screen_width/2, screen_height/2, "GAME OVER!");
	
}