/// @description Insert description here
// You can write your code in this editor
event_inherited();

// Knockback logic
if (has_knockback){
	is_knockback = true;
	var dir = point_direction(other.x, other.y, x, y);
	var len = point_distance(other.x, other.y, x, y);
	h_dist = lengthdir_x(len, dir);
	v_dist = lengthdir_y(len, dir);
	hsp_knockback = h_dist * 0.25;
	vsp_knockback = v_dist * 0.25;
}