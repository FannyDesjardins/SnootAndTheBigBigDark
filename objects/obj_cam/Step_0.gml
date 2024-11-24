

if (instance_exists(follow))  // update destination
{
 xTo = follow.x;
 yTo = follow.y;
	
}


//update object postion

y += (yTo - y) // change centre point 
x += (xTo - x) 


x = clamp(x,view_w_half,room_width-view_w_half); // clamp to edge of room 

y = clamp(y,view_w_half,room_width-view_w_half);

camera_set_view_pos(cam, x-view_w_half,y-view_h_half);






