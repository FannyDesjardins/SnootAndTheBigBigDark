function Spawn_Eyes(phase_){
	var num_eyes = max(1, 4 - phase_); // Number of eyes to spawn per phase
	for (var i = 0; i < num_eyes; i++) {
	    var xCoord = irandom_range(0, room_width);
	    var yCoord = irandom_range(0, room_height);
		var type = irandom_range(1, 1000);
	    var distance = point_distance(xCoord, yCoord, obj_Firepit.x, obj_Firepit.y);
    
	    if (distance > 800) { // Ensure minimum distance
	        if (type % 2 == 0) {
	            instance_create_layer(xCoord, yCoord, "Instances", obj_eyes1);
				show_debug_message("even")
	        } else {
	            instance_create_layer(xCoord, yCoord, "Instances", obj_eyes2);
	        }
	    }
	}
}