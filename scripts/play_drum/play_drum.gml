// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function play_drum(){
	var notes = [snd_tom_A5, snd_tom_Ab5, snd_tom_B5, snd_tom_Bb5, snd_tom_C4, snd_tom_C5, snd_tom_D4, snd_tom_Db4, snd_tom_E4, snd_tom_Eb4, snd_tom_F4, snd_tom_G4, snd_tom_Gb4];
	var rand_note = notes[ceil( random_range(0, 12) )];

	audio_play_sound(rand_note, 5, false);
}
