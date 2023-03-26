/// @desc something hits a spike

// don't hit multiple spikes at once
if (other.invincible) exit;
other.invincible = true;

show_debug_message("{0}\n~~~~~~~~~~", id);

--other.hp;
other.hit = true; // activate shader
audio_play_sound(snd_hurt, 5, false);

// don't allow play to move for a moment when bounced
other.bounced = true;

// bounce away ---------

// move out of collision
other.x += -4 * other.hsp;
other.y += -4 * other.vsp;

other.vsp *= -1;
other.hsp *= -1;
other.hacc *= -1;

// if player is on ground, bounce horizontally only
if (abs(other.vsp) < 0.0001) {
	other.hsp = 2 * other.spd * sign(other.image_xscale);
	other.hacc = -0.1 * other.spd * sign(other.image_xscale);
}

// release player
other.invincible = false;
