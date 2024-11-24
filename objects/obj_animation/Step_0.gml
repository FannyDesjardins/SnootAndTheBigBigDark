


	image_speed = 1

	
	if show_once = false {
	if image_index = 77 { 
	show_once = true	
	spawn_button = true
	}}
	
	
	if spawn_button = true { 
		
	if instance_exists(obj_win_screen_restart){
		
	instance_create_layer(x,y,"Instance",obj_win_screen_restart)	
	}
	}
	
	// play once 
	
	draw_img = true
	
	if play_sfx = false {
	//audio_play_sound(     , 10, false);
	play_sfx = true	
	}
	/*	
	//sprite_index = spr_win_cutscene
	var loop_frame = 77
	
	
	if set_img = false {// set image
	//sprite_index = spr_win_cutscene
	set_img = true	
	}
 
	if loop_enable = false { // when animation gets to end point, loop last part
	if scr_anim_hit(95){ // set end animation frame
	loop_enable = false  
	image_index = loop_frame //few frames back
	} // frame should be last one. 
	}
	
	if loop_enable = true { // when animation gets to end point, loop last part
	if scr_anim_hit(95){image_index = loop_frame  } //set back to loop point
	}
	
	//95?
	
