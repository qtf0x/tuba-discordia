/// @description Insert description here
// You can write your code in this editor
event_inherited();

// Horizontal movement

hsp = spd * x_dir;
vsp = spd * y_dir;

var guide = instance_place(x, y, obj_pear_guide);
if (guide) {
	image_angle = guide.pear_angle;
	while (place_meeting(x, y, guide)) {
		x -= sign(hsp);
		y -= sign(vsp);
	}
	
	x_dir = guide.pear_x_dir;
	y_dir = guide.pear_y_dir;
	
	hsp = guide.pear_x_offset;
	vsp = guide.pear_y_offset;
}


x += hsp;
y += vsp;
