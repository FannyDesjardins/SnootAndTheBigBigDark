leaves = true;
for (var i = 0; i < 15; i++) {

    repeat(10) {
        var xCoord = irandom_range(0, room_width);
        var yCoord = irandom_range(0, room_height);
        distance = point_distance(xCoord, yCoord, obj_Firepit.x, obj_Firepit.y);
        if (distance > 800) { // Change 200 to your preferred minimum distance
            if(leaves) {
                instance_create_layer(xCoord, yCoord, "Instances", obj_tree1);
                leaves = false;
            } else {
                instance_create_layer(xCoord, yCoord, "Instances", obj_tree2);
                leaves = true;
            }           
            break; // Exit the loop after successful spawning
        }
    }
}