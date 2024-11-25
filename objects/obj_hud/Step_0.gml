




#region spawn logs

time_ = time_ + 1 
if time_ >= 100 { time_ = 0  spawn_log_ = true }

if (spawn_log_ == true) {  
    if (logs_amount <= 3) {	
        var spawn_x, spawn_y, distance;
        repeat (10) { // Attempt to find a valid spawn location up to 10 times
            spawn_x = obj_Firepit.x + random_range(-800, 800);
            spawn_y = obj_Firepit.y + random_range(-800, 800);
            distance = point_distance(spawn_x, spawn_y, obj_Firepit.x, obj_Firepit.y);
            
            // Only spawn if the distance is greater than the minimum threshold
            if (distance > 500) { // Change 200 to your preferred minimum distance
                instance_create_layer(spawn_x, spawn_y, "Instances", obj_pickup_item);
                break; // Exit the loop after successful spawning
            }
        }
    }
    spawn_log_ = false;
}


#endregion
#region fire pit sound 


if play_sfx = false {
audio_play_sound(sfx_gameplay, 10, false);
audio_play_sound(sfx_fire_pit, 10, false);
audio_play_sound(sfx_ambience_night_base, 10, false);


play_sfx = true	


}

#endregion
