if(obj_Firepit.phase_ == 3) {
	maxeyes = 5;
} else if(obj_Firepit.phase_ == 2) {
	maxeyes = 10;
}else if(obj_Firepit.phase_ == 1) {
	maxeyes =20;
}

var eyes_list = ds_list_create();
with (obj_eyes1) ds_list_add(eyes_list, id);
with (obj_eyes2) ds_list_add(eyes_list, id);

// Shuffle the list to randomly pick which eyes to destroy
ds_list_shuffle(eyes_list);


// Increment the timer
timer++;
// Handle eye spawning based on the current phase
if (timer % max(1, obj_Firepit.phase_ * 10) == 0) {
	for (var i = maxeyes; i < ds_list_size(eyes_list); i++) {
	    var eye_instance = eyes_list[| i];
	    if (instance_exists(eye_instance)) {
			with (eye_instance) instance_destroy();
		}
    }
	// Clean up the list
	ds_list_destroy(eyes_list);
	
	var eyes_list2 = ds_list_create();
	with (obj_eyes1) ds_list_add(eyes_list2, id);
	with (obj_eyes2) ds_list_add(eyes_list2, id);

	// Shuffle the list to randomly pick which eyes to destroy
	ds_list_shuffle(eyes_list2);
	if(maxeyes>ds_list_size(eyes_list2)) {
		Spawn_Eyes(obj_Firepit.phase_);	
	}
} 




