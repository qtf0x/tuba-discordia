if (place_meeting(x, y, obj_block) || place_meeting(x, y, obj_platform_stopper)) {
	dir *= -1;
}

hsp = spd * dir;
x += hsp;

if (movePlayer){
	with (movePlayer){
		if (!place_meeting(x + other.hsp, y, obj_block)){ 
			x += other.hsp;
		}
	}
	movePlayer = noone;
}