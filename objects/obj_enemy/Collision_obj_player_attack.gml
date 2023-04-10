hurt(id, other.attack_power, snd_hurt);

// Knockback logic
if (knockback_timer <= 0 && hit_flash_delay <= 0){
	is_knockback = true;
	var dir = point_direction(other.x, other.y, x, y);
	var len = point_distance(other.x, other.y, x, y);
	h_dist = lengthdir_x(len, dir);
	v_dist = lengthdir_y(len, dir);
	hsp_knockback = h_dist * 0.25;
	vsp_knockback = v_dist * 0.25;
}

if (hp <= 0){
	instance_create_depth(x,y,-9999, obj_damage_effect);
	instance_destroy();
}