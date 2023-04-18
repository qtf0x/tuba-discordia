/// @description Insert description here
// You can write your code in this editor
event_inherited();
spd = 2;
dir = -1;
hp = 3;

vsp = 0;    // vertical speed
hsp = 0; // horizontal speed
grv = 0.5;  // gravity

// Jumping logic
grounded = false; // For jumps
jump_spd = 15; // jumping speed
jump_timer = 15;
jump_timer_multiplier = 5; // Jump every 5 seconds