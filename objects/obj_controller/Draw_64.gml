// UI ------

// end screen
if (room == end_screen) {
	draw_set_font(fnt_dialogue_big);
	draw_set_color(c_white);
	draw_text(room_width / 2, room_height / 2, "End of the demo\n\nThanks for playing! <3");
} else {

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


// tutorial popups
if (draw_tutorial) {
	// wasd
	draw_sprite_ext(spr_wasd, 0, 75, 760, 1, 1, 0, c_white, 1);
	
	draw_set_font(fnt_dialogue);
	draw_set_color(c_white);
	draw_text(250, 740, "move/look");
	
	// space
	draw_sprite_ext(spr_space, 0, 525, 760, 1, 1, 0, c_white, 1);
	
	draw_set_font(fnt_dialogue);
	draw_set_color(c_white);
	draw_text(665, 740, "jump");
	
	// k
	draw_sprite_ext(spr_k, 0, 800, 760, 1, 1, 0, c_white, 1);
	
	draw_set_font(fnt_dialogue);
	draw_set_color(c_white);
	draw_text(965, 740, "play trumpet");
	
	// enter
	draw_sprite_ext(spr_enter, 0, 1200, 760, 1, 1, 0, c_white, 1);
	
	draw_set_font(fnt_dialogue);
	draw_set_color(c_white);
	draw_text(1315, 740, "pause");
}
}