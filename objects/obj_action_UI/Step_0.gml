// Distance threshold for showing the target sprite
var proximity_distance = 100;

// Find the nearest instance of obj_target
var dist_player = point_distance(x, y, obj_player.x, obj_player.y);

// Check if the target exists and is within the proximity distance
if (dist_player <= proximity_distance) {
    // Make the target sprite visible
    this.visible = true;

    // Place it next to the player (e.g., to the right of the player)
    this.x = x + sprite_width; // Adjust as needed
    this.y = y + sprite_width/2;
} else {
    // Hide the target sprite if the player is not near
    this.visible = false;
}