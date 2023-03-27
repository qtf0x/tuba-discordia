
hurt(other, 1, snd_hurt);
	if (instance_exists(obj_savespot)){
		var nearest_savespot = instance_nearest(other.x, other.y, obj_savespot);
		other.x = nearest_savespot.x;
		other.y = nearest_savespot.y;
	}