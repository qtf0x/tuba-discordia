/// @desc Shoot/play note

if (!shooting) {
	var note_spd = 20;

	var note = instance_create_layer(x, y, "Instances", obj_player_attack);

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
		hsp = image_xscale * note_spd; // player's velocity in opposite direction
		hacc = image_xscale * -fric;
	}

	note.speed = note_spd;
	
	shooting = true;
	alarm[0] = shoot_delay;
}