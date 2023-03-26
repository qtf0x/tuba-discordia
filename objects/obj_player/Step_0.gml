/// @desc Core Player Logic
event_inherited();

// bounce delay
if (bounced && alarm[1] == -1)
	alarm[1] = 10; // idk short time

// don't allow movement if talking
if (instance_exists(obj_textbox) || instance_exists(obj_textevent)) exit;

// get player inputs (use WASD like a sane person)
var key_left = keyboard_check(ord("A"));
var key_right = keyboard_check(ord("D"));
var key_up = keyboard_check(ord("W"));
var key_down = keyboard_check(ord("S"));
var key_jump = keyboard_check(vk_space);

var vmove = key_down - key_up;
var hmove = key_right - key_left; // bools are integers (thank god)

// disallow movement when bouncing
if (bounced) {
	vmove = 0;
	hmove = 0;
}

// calculate movement
hsp += hacc; // increment/decrement horizontal mvmt

// simulate friction with floor/air
if (abs(hsp) < 0.001 || sign(hsp) != sign(hsp - hacc)) { // holy shit gamemaker is the worst language AAAAAAA
	hsp = 0;
	hacc = 0;
}

// really hacky way to handle walking as separate from physics (we'll fix it later)
if (hacc == 0) {
    hsp = hmove * spd; // increment/decrement horizontal mvmt
}

if(hmove != 0) {
	image_xscale = -sign(hmove); // Flip sprite based on which keys are pressed
	if (shooting){
		sprite_index = asset_get_index("spr_player_walk_shoot");
	} else {
		sprite_index = asset_get_index("spr_player_walk_" + current_sprite);
	}
} else {
	if (shooting){
		sprite_index = asset_get_index("spr_player_idle_shoot");	
	} else {
		sprite_index = asset_get_index("spr_player_idle_" + current_sprite);	
	}
}


// Climbing logic. Are we about to hit a ladder.
var ladder = instance_place(x, y + 1, obj_ladder);
if (ladder) {
	if (vmove < 0 && (bbox_bottom > ladder.bbox_top || climbing)) ||  // Fix annoying bugs
	   (vmove == 0 && climbing) ||
	   (vmove > 0) {
		climbing = true;
	} else {
		climbing = false;
	}
} else {
	climbing = false;
}

// Gravity logic

if (climbing) {
	vsp = vmove * spd;
	//sprite_index = spr_player_climb;
} else if(!grounded){
	vsp += grv; // Important, adds gravity only if player isn't climbing a ladder
}

// terminal velocity check
if (vsp > terminal_velocity){
	vsp = terminal_velocity;
}

// Am I jumping?
if ((grounded && key_jump || force_jump) &&
	!(place_meeting(x, y - 1, obj_block))) {
	//audio_play_sound(snd_jump, 1, false);
	force_jump = false;
	vsp -= (jump_spd + jump_spd_bounce);
	jump_spd_bounce = 0;
	grounded = false;
}

// Horizontal collision with a block.
if (place_meeting(x + hsp, y, obj_block)) {
	while (!place_meeting(x + sign(hsp), y, obj_block)) {
		x += sign(hsp);
	}
	hsp = 0;
}


var vertical_collision = false;

// Vertical collision with a block
if (place_meeting(x, y + vsp, obj_block)) {
	while (!place_meeting(x, y + sign(vsp), obj_block)) {
		y += sign(vsp);
	}
	if (vsp >= 0){ // Ensures player does not stick to the ceiling when jumping
		grounded = true;
	}
	vsp = 0;
	vertical_collision = true;
} 
// all collisions with jump_through platforms
if (vsp >= 0  // Player must be falling
	&& !(climbing)){  // Not climbing
  // Ensure player is above platform's bbox

	var platforms = ds_list_create();
	var num_platforms = instance_place_list(x, y + vsp + 1, obj_jump_through, platforms, false);

	 if (num_platforms > 0){
		for (var i = 0; i < num_platforms; i += 1){
			var platform = platforms[| i];
			 
			if (platform && bbox_bottom <= platform.bbox_top){ // Extra check for program safety
				while (!place_meeting(x, y + 1, platform)) { // Perfect pixel collision
					y += 1;
				}
				vsp = 0;
				grounded = true;
				vertical_collision = true;
				// Vertical collision handling
				platform.movePlayer = id;
			} 
		}
	 }
}




// Jumping animation
if (!grounded){
	if (shooting){
		sprite_index = asset_get_index("spr_player_jump_shoot");
	} else {
		sprite_index = asset_get_index("spr_player_jump_" + current_sprite);
	}
} 

if (!vertical_collision){
	grounded = false;
}


// actually move
// Flooring, because you just gotta love gamemaker's imprecise as shit collision system
x += floor(hsp);
y += floor(vsp);
