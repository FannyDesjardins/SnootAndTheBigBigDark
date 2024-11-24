
if music_playing = noone {
	
audio_play_sound(sfx_title_music_windeasy, 10, false);
 music_playing = sfx_title_music_windeasy
}



if room = Room_testing { 
	
audio_stop_sound(sfx_title_music_windeasy)	
}

/*
if music_playing = music_playing {
audio_play_sound(music_playing, 10, false);
}