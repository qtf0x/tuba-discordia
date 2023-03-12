if (place_meeting(x, y, obj_block) || place_meeting(x, y, obj_platform_stopper)) {
	dir *= -1;
}
vsp = spd * dir;
y += vsp;

if (movePlayer){
	with (movePlayer){
		if (!place_meeting(x, y + other.vsp, obj_block)){ 
			if (place_meeting(x,y + other.vsp + 1, other.id)){
				y += other.vsp; // Prevents accidental falling
				while(place_meeting(x,y,other.id)){
					y -= 1;
				}
			}
		}
	}
	movePlayer = noone;
}