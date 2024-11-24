if (animation_triggered) {
	
	x=obj_player.x;
	y=obj_player.y;
    visible=true
	sprite_index = spr_monster; // Replace with your animation sprite
    image_speed = 0.8;             // Ensure the animation is playing at normal speed
}

if play_sfx = false { 
audio_play_sound(sfx_player_lose, 10, false);	
play_sfx = true
}