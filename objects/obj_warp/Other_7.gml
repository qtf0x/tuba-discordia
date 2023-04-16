room_goto(target_rm);
if (instance_exists(obj_player)
	&& target_x != -1 
	&& target_y != -1){
	obj_player.x = target_x;
	obj_player.y = target_y;
	obj_player.visible = true;
}

image_speed = -1;