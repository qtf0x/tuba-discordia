// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function play_note(){
	var notes = [snd_A5, snd_Ab5, snd_B5, snd_Bb5, snd_C4, snd_C5, snd_D4, snd_Db4, snd_E4, snd_Eb4, snd_F4, snd_G4, snd_Gb4];
	var rand_note = notes[ceil( random_range(0, 12) )];
	
	audio_play_sound(rand_note, 5, false);
}
