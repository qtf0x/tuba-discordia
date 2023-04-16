/// @description Insert description here
// You can write your code in this editor
if (!action_selected){
	draw_set_font(fnt_dialogue);
	draw_set_halign(fa_center);
	if (titlescreen_state == titlescreen_states.GAME_START){draw_set_color(c_yellow);}
	else {draw_set_color(c_white);}
	draw_text(screen_width/2, screen_height/2 + 150,"GAME START!");
	if (titlescreen_state == titlescreen_states.EXIT_GAME){draw_set_color(c_yellow);}
	else {draw_set_color(c_white);}
	draw_text(screen_width/2, screen_height/2 + 225,"EXIT");
}