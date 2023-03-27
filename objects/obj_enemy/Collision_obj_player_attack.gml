hurt(id, other.attack_power, snd_hurt);

if (hp <= 0){
	instance_create_depth(x,y,-9999, obj_damage_effect);
	instance_destroy();
}