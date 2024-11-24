

//fire place animation 
	
	if place_meeting(x,y,obj_player){
	pickup = true		
	}else{  pickup = false }
	
	if obj_player.action = true { instance_destroy() obj_hud.inv = self.give	}

switch(state) {
	
    case "int": {
	
	obj_hud.logs_amount = obj_hud.logs_amount + 1// each time a new log spawns, add too total in hud, only 5 at a time
	state = choose("low","med","high")
	
	break;}
	case "low":{	
	
	sprite_index = spr_log_
	image_index = 2
	give = 1
	
	break;}
	case "med":{	
	
	sprite_index = spr_log_
	image_index = 1
	give = 2
	
	break;}
	case "high":{	
	
	sprite_index = spr_log_
	image_index = 0
	give = 3
	
	
	break;}
	
	
	}