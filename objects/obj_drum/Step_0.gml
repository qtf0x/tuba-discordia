/// @description Insert description here
// You can write your code in this editor


if (instance_exists(obj_player)){
	if (player_collision 
		&& obj_player.vsp >= 0
		&& (obj_player.bbox_bottom == bbox_top)){
	

		// don't allow play to move for a moment when bounced
		if (on_ground){
			obj_player.force_jump = true;
			obj_player.jump_spd_bounce = 6;
		}

		// bounce away ---------
		player_collision = false;
	
		play_drum();
	}
}