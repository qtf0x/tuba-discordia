/// @desc Core Player Logic

// get player inputs (use WASD like a sane person)
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

// calculate movement
var _move = key_right - key_left; // bools are integers (thank god)

hsp = _move * walksp; // increment/decrement horizontal mvmt
vsp = vsp + grv;      // simulate acceleration due to gravity

// jumping
if (place_meeting(x, y + 1, obj_bound_box) && key_jump)
	vsp = -jumpsp;

// horizontal collision
if (place_meeting(x + hsp, y, obj_bound_box))
{
	while (!place_meeting(x + sign(hsp), y, obj_bound_box))
		x = x + sign(hsp); // move 1 pixel at a time until collision occurs
	
	hsp = 0; // don't move again
}

x = x + hsp;

// vertical collision
if (place_meeting(x, y + vsp, obj_bound_box))
{
	while (!place_meeting(x, y + sign(vsp), obj_bound_box))
		y = y + sign(vsp); // move 1 pixel at a time until collision occurs
	
	vsp = 0; // don't move again
}

y = y + vsp;

if (hsp != 0)
	image_xscale = sign(-hsp); // flip image for facing left/right
