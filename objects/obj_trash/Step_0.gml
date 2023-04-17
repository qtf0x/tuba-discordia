/// @description Insert description here
event_inherited();

if (transition_timer <= 0){
	if (is_hiding){
		is_hiding = false;
		is_hittable = true;
		sprite_index = spr_junkie_walk;
		spd = max_spd;
		transition_timer += walking_timer_max;
	} else{
		is_hiding = true;
		is_hittable = false;
		sprite_index = spr_junkie_still;
		transition_timer += hiding_timer_max;
		spd = 0;
	}
} 
--transition_timer;

hsp = dir * spd;
hsp += hsp_knockback;

// Collision with obj_block
if (place_meeting(x + hsp, y, obj_block)){
	while (!place_meeting(x + sign(hsp), y, obj_block)){
		x += sign(hsp);
	}
	hsp = 0;
	dir *= -1;
	image_xscale *= -1;
}

// Collision with obj_platform_stopper
if (place_meeting(x + hsp, y, obj_platform_stopper)){
	while (!place_meeting(x + sign(hsp), y, obj_platform_stopper)){
		x += sign(hsp);
	}
	hsp = 0;
	dir *= -1;
	image_xscale *= -1;
}

x += hsp;