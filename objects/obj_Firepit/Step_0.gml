

// Fire pit animation
if a >= 32 { a = 0; }
a = a + 0.5;

switch (state) {
    case "int": {
        time_ = time_ - 1;

        if (phase_ != 0) {
            if (time_ <= 0) { 
                time_ = 50;  
                img_scale = img_scale - 0.1;  
            }
        }

        
        if (img_scale >= 1) { phase_ = 3; }
        if (img_scale >= 0.5 && img_scale < 1) { phase_ = 2; }
        if (img_scale >= 0.3 && img_scale < 0.5) { phase_ = 1; }
        if (img_scale <= 0) { 
            img_scale = 0; 
            phase_ = 0; 
        }

        break;
    }
    case "temp": {
        // Reserved for future logic
        break;
    }
}

// Fire pit fueling
if place_meeting(x, y, obj_player) {
    drop = true;
} else {  
    drop = false; 
}

if (drop == true) {
    if (obj_player.action == true) { 
        for (var i = 0; i < INVENTORY_SLOTS; i++) {
            if (obj_inventory.inventory[i] != 0) {
                fuel += obj_inventory.inventory[i];
				play_sfx = true
                // Increment time_ when fuel is added
                time_ += obj_inventory.inventory[i] * 50; // Adjust multiplier (10) as needed for balance
				img_scale += obj_inventory.inventory[i] * 0.1; // Adjust growth multiplier as needed
			}
        }
        obj_inventory.dropped = true;
		
    }
}


if play_sfx = true {
//audio_play_sound( sfx_wooddrop_drop, 10, false); 


var random_pitch = irandom_range(8, 12) / 10.0; // Random pitch between 0.8 and 0.12
audio_sound_pitch(sfx_wooddrop_drop, random_pitch);
audio_play_sound(sfx_wooddrop_drop, 1, false);




play_sfx = false
}

// Limit img_scale to a maximum size
if (img_scale > 1) { 
    img_scale = 1; 
}
