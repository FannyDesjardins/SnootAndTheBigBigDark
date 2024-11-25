if obj_player.y <= y-100 {  depth = -1 }else{ depth = 0 }

//fire place animation 
	
	if place_meeting(x,y,obj_player){
		pickup = true		
	}else{  pickup = false }
	
	if pickup = true {
		if obj_player.action = true { 
			var slotNumber=-1;
			for(var i=0; i<INVENTORY_SLOTS; i++) {
				if(obj_inventory.inventory[i]==0) {
					if(self.give==1) {
						instance_destroy()
						obj_inventory.inventory[i]=self.give
						obj_hud.logs_amount = obj_hud.logs_amount - 1
						break;
					} else if (self.give==2 && i <2) {
						instance_destroy()
						obj_inventory.inventory[i]=self.give
						obj_inventory.inventory[i+1]=self.give
						obj_hud.logs_amount = obj_hud.logs_amount - 1
						break;
					} else if(self.give==3 && i < 1) {
						instance_destroy()
						obj_inventory.inventory[i]=self.give
						obj_inventory.inventory[i+1]=self.give
						obj_inventory.inventory[i+3]=self.give
						obj_hud.logs_amount = obj_hud.logs_amount - 1
						break;
					}
				}
			}
		}
	}
switch(state) {
	
    case "int": {
	
	obj_hud.logs_amount = obj_hud.logs_amount + 1// each time a new log spawns, add too total in hud, only 5 at a time
	state = choose("low","med","high")
	choose_sfx = choose(1,2)	
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