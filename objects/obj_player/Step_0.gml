/// @desc Core Player Logic

// get player inputs (use WASD like a sane person)
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

// calculate movement
hsp = hsp + hacc; // increment/decrement horizontal mvmt
vsp = vsp + grv;      // simulate acceleration due to gravity

// simulate friction with floor/air
if (abs(hsp) <= 1) { // holy shit gamemaker is the worst language AAAAAAA
	hsp = 0;
	hacc = 0;
}

// really hacky way to handle walking as separate from physics (we'll fix it later)
if (hacc == 0) {
	var _move = key_right - key_left; // bools are integers (thank god)
    hsp = _move * walksp; // increment/decrement horizontal mvmt
}

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

// vertical collision
if (place_meeting(x, y + vsp, obj_bound_box))
{
	while (!place_meeting(x, y + sign(vsp), obj_bound_box))
		y = y + sign(vsp); // move 1 pixel at a time until collision occurs
	
	vsp = 0; // don't move again
}

// actually move
x += hsp;
y += vsp;
