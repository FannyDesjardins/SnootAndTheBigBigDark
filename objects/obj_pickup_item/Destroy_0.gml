

if play_audio_once = false {
	
	if give = 1 {  
		
	if choose_sfx = 1 {	
	var random_pitch = irandom_range(8, 12) / 10.0; // Random pitch between 0.8 and 0.12
	audio_sound_pitch(sfx_wooddrop_light_1, random_pitch);
	audio_play_sound(sfx_wooddrop_light_1, 1, false);
	}
		
	if choose_sfx = 2 {	
	var random_pitch = irandom_range(8, 12) / 10.0; // Random pitch between 0.8 and 0.12
	audio_sound_pitch(sfx_wooddrop_light_2, random_pitch);
	audio_play_sound(sfx_wooddrop_light_2, 1, false);
	}	
		
	}
	
	
	
	if give = 2 {
		
		
	if 	choose_sfx = 1 {	
	var random_pitch = irandom_range(8, 12) / 10.0; // Random pitch between 0.8 and 0.12
	audio_sound_pitch(sfx_wooddrop_med, random_pitch);
	audio_play_sound(sfx_wooddrop_med, 1, false);
	}
		
	if choose_sfx = 2 {	
	var random_pitch = irandom_range(8, 12) / 10.0; // Random pitch between 0.8 and 0.12
	audio_sound_pitch(sfx_wooddrop_med_2, random_pitch);
	audio_play_sound(sfx_wooddrop_med_2, 1, false);
	}		

		}
	if give = 3 { 
		
	var random_pitch = irandom_range(8, 12) / 10.0; // Random pitch between 0.8 and 0.12
	audio_sound_pitch(sfx_wooddrop_heavy, random_pitch);
	audio_play_sound(sfx_wooddrop_heavy, 1, false);	
		
		
	}

 play_audio_once = true	
}


