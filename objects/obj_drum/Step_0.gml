/// @description Insert description here
// You can write your code in this editor

if (obj_player.y + obj_player.sprite_height / 2> y) exit;

if (player_collision){
	
	//hurt(obj_player, 1, snd_hurt);

	// don't allow play to move for a moment when bounced
	if (on_ground){
		obj_player.force_jump = true;
		obj_player.jump_spd_bounce = 6;
	}

	// bounce away ---------

	// if player is on ground, bounce horizontally only
	/*if (obj_player.vsp = 0) {
		obj_player.hsp = 2 * obj_player.spd * sign(obj_player.image_xscale);
		obj_player.hacc = -0.1 * obj_player.spd * sign(obj_player.image_xscale);
	}*/
	player_collision = false;
	
	play_drum();
}