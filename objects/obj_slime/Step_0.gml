/// @description Insert description here
// You can write your code in this editor
event_inherited();



// Jumping
if (jump_timer <= 0 && !grounded){
	vsp -= jump_spd;
	grounded = false;
	jump_timer = global.game_speed * jump_timer_multiplier;
	sprite_index = spr_slime_jump_start;
}

--jump_timer;

// Gravity
if(!grounded){
	vsp += grv; // Gravity
} 
hsp = spd * dir;
hsp += hsp_knockback;


if (place_meeting(x + hsp, y, obj_block)) {
	while (!place_meeting(x + sign(hsp), y, obj_block)) {
		x += sign(hsp);
	}
	
	dir *= -1;
	image_xscale *= -1;
	hsp = 0;
}


x += hsp;

vsp += vsp_knockback;
// Vertical collision with a block
var block = instance_place(x, y + vsp, obj_block);
if (block){
	
	while (!place_meeting(x, y + sign(vsp), block)) {
		y += sign(vsp);
	}
	if (vsp >= 0 && bbox_bottom >= block.bbox_top){
		grounded = true;
	}
	vsp = 0;
	grounded = true;
} else{
	grounded = false;
}

y += floor(vsp);

if (grounded && sprite_index == spr_slime_jump_start){ // Animation
	sprite_index = spr_slime_jump_end;
	image_speed = 1;
	image_index = 0;
}

