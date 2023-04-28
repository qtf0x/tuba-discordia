/// @description Insert description here
// You can write your code in this editor
event_inherited();
hp = 0;
hit_damage = 1;
vsp = 0;
hsp = 0;

// Additional hit variables
is_hittable = true;

//Knockback stuff
hsp_knockback = 0;
vsp_knockback = 0;
knockback_timer = 0;
knockback_timer_multiplier = 0.4;
is_knockback = false;
has_knockback = true;

//Physics
grv = 0.5;  // gravity