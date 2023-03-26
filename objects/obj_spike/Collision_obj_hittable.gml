/// @desc something hits a spike

--other.hp;
//other.hit = true;

// bounce away

other.vsp *= -1;
other.hsp *= -1;
other.hacc *= -1;

// if player is on ground, bounce horizontally only
if (abs(other.vsp) < 0.001) {
	other.hsp = 2 * other.spd * sign(other.image_xscale);
	other.hacc = -0.1 * other.spd * sign(other.image_xscale);
}

// move out of collision
other.x += 3 * other.hsp;
other.y += 2 * other.vsp;

// don't allow play to move for a moment when bounced
other.bounced = true;

// activate shader
other.hit = true;
