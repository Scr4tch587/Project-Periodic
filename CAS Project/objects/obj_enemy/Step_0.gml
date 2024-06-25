// Set depth to negative y.
// This will cause instances to draw from
// top to bottom.
depth = -y;

// Set direction towards the hero.
direction = point_direction(x, y, obj_hero.x, obj_hero.y);

// If horizontal speed is NOT 0.
if(hspeed != 0)
{
	// Set our xscale to the sign of hspeed
	// (can only be -1 or 1 at this point).
	image_xscale = -sign(hspeed);
	image_yscale = 1;
}