

function PlayerCollision() {
	var _collision = false;

	//Horizontal Tiles
	if (tilemap_get_at_pixel(collisionMap, x + hsp, y))
	{
		x -= x mod TILE_SIZE;	
		if (sign(hsp) == 1) x += TILE_SIZE - 1;
		hsp = 0;
		_collision = true;
	}


	x += hsp;

	//Vertical Tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + vsp))
	{
		y -= y mod TILE_SIZE;	
		if (sign(vsp) == 1) y += TILE_SIZE - 1;
		vsp = 0;
		_collision = true;
	}



	y += vsp;


	return _collision;


}



