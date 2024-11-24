




	switch(state) {
	
	    case "int": {
		
		
		if obj_Firepit.phase_ = 3 { sprite_index = spr_fire_large    } 	
		if obj_Firepit.phase_ = 2 { sprite_index = spr_fire_med    } 	
		if obj_Firepit.phase_ = 1 { sprite_index = spr_fire_small    } 	
		if obj_Firepit.phase_ = 0 { sprite_index = spr_fire_small    } 
		
		
		if place_meeting(x,y,obj_player){
			
		with obj_player {  dark_mode = false }	
		}else{ with obj_player {  dark_mode = true}  }
		
		break;}
		case "temp":{	
	
	
	
	
	
		break;}
		}
