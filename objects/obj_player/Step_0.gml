




	
	if movment_disable = false {
	
	// input keystroke 
	
	
	left = keyboard_check(ord("A")); // each variable is false, until pressed, which becomes true.
	right = keyboard_check(ord("D")); 
	up = keyboard_check(ord("W")); 
	down = keyboard_check(ord("S"));

	inputDirection = point_direction(0,0,right-left,down-up);
	inputMagnitude = (right - left != 0) || (down - up != 0);

	PlayerStateFree()
	
	hinput = keyboard_check(ord("D")) - keyboard_check(ord("A")); 
	vinput = keyboard_check(ord("S")) - keyboard_check(ord("W"));

	}
	
	if (hinput != 0 or vinput != 0) { 
	dir_ = point_direction(0,0,hinput,vinput)
	img_dir = point_direction(0,0,hinput,vinput)
	
	  sprite_index = spr_placeholder_player_walk  // put walking animation here
	
	#region img controller
		switch(dir_){
			case 0:   if image_index >= 32 or image_index <= 17 {  image_index = 17 }  break; // right
			case 45:  if image_index >= 63 or image_index <= 48  {  image_index = 48 }  break; // upright
			case 90:  if image_index >= 63 or image_index <= 48  {  image_index = 48 }  break; // up
			case 135: if image_index >= 48 or image_index <= 33  {  image_index = 33 }  break; // up left
			case 180: if image_index >= 16 or image_index <= 0 {  image_index = 0 }  break; // left
			case 225: if image_index >= 16 or image_index <= 0 {  image_index = 0 }  break; // down left
			case 270: if image_index >= 32 or image_index <= 16 {  image_index = 16 }  break; // down
			case 315: if image_index >= 32 or image_index <= 16 {  image_index = 16 }  break; // down right
	
			}}else{  // put idle into here
				
			sprite_index = spr_placeholder_player_idle  // put ideal animation here
			  
			if img_dir = 0   {if image_index >= 16 or image_index <= 0 {  image_index = 0 }}   // right
			if img_dir = 45  {if image_index >= 16 or image_index <= 0 {  image_index = 0 }}    // upright
		    if img_dir = 90  {if image_index >= 16 or image_index <= 0 {  image_index = 0 }}   // up
		    if img_dir = 135 {if image_index >= 16 or image_index <= 0 {  image_index = 0 }}    // up left
			if img_dir = 180 {if image_index >= 16 or image_index <= 0 {  image_index = 0 }}    // left ???
			if img_dir = 225 {if image_index >= 16 or image_index <= 0 {  image_index = 0 }}   //  left 
			if img_dir = 270 {if image_index >= 16 or image_index <= 0 {  image_index = 0 }}     // down
			if img_dir = 315 {if image_index >= 16 or image_index <= 0 {  image_index = 0 }}   // down right			   
		}
		
		#endregion

	