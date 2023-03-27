// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hurt(hittable_object, amount, sound){
	
	if(hittable_object.hit_flash_delay <= 0){
		hittable_object.hp -= amount;
		hittable_object.hit = true;
		audio_play_sound(sound, 5, false);
	}
}