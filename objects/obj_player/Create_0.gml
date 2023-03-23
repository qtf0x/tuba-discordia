/// @desc Establish some key variables
event_inherited();

//--------Dialogue Stuff
reset_dialogue_defaults();
myPortrait			= spr_player_shoot_small;
myVoice				= snd_voice2;
myFont				= fnt_dialogue;
myName				= "?????";

//--------Movement Stuff
hp = 3;		// Health
spd = 7;	// baseline speed for walking
hsp = 0;    // horizontal speed

// Jumping attributes
vsp = 0;    // vertical speed
grv = 0.5;  // gravity
grounded = false; // For jumps

// Acceleration attributes
hacc = 0; // horizontal acceleration
fric = 0.5; // friction constant
terminal_velocity = 50; // terminal velocity
jump_spd = 15; // jumping speed


// Climbing attributes.
climbing = false

// Shooting attributes
shooting = false;
shoot_delay = 90; // 1.5 seconds?


// Trampoline
force_jump = false;
jump_spd_bounce = 0;