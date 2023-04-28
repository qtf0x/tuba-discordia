if (player_collision){
	if (instance_exists(obj_player)){
		with (obj_player){
			hurt(id, 1, snd_hurt);
			if (instance_exists(obj_savespot)){
				var nearest_savespot = instance_nearest(x, y, obj_savespot);
				x = nearest_savespot.x;
				y = nearest_savespot.y;
			}
		}
	}
	player_collision = false;
}