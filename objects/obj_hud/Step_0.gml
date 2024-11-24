




#region spawn logs

time_ = time_ + 1 
if time_ >= 400 { time_ = 0  spawn_log_ = true }

if spawn_log_ = true {  
if logs_amount >= 3 {	
instance_create_layer(obj_Firepit.x+random_range(0,100),obj_Firepit.y+random_range(0,100),"Instances",obj_pickup_item)	
}
spawn_log_ = false
}
#endregion


