/// @desc Shoot/play note

if (!shooting && hops < max_hops) {
	++hops;
	
	play_note();
	
	var note_spd = 20;

	var note = instance_create_layer(x, y, "Instances", obj_player_attack);
	note.attack_power = attack_power;

	if (keyboard_check(ord("W"))) {
		note.direction = point_direction(x, y, x, y - 1);
		vsp = note_spd; // player's velocity in opposite direction
	}
	else if (keyboard_check(ord("S"))) {
		note.direction = point_direction(x, y, x, y + 1);
		vsp = -note_spd; // player's velocity in opposite direction
	}
	else {
		note.direction = point_direction(x, y, x - image_xscale, y);
		
		if (!place_meeting(x, y + 1, obj_bound_box) && !place_meeting(x, y + 1, obj_platform) && !place_meeting(x, y + 1, obj_moving_platform_horizontal) && !place_meeting(x, y + 1, obj_moving_platform_vertical) && !climbing) {
			hsp = image_xscale * note_spd; // player's velocity in opposite direction
			hacc = image_xscale * -fric;
		}
	}

	note.speed = note_spd;
	
	shooting = true;
	alarm[0] = shoot_delay;
}