// Set depth to negative y.
// This will cause instances to draw from
// top to bottom.
depth = -y;

// Set direction towards the hero.
direction = point_direction(x, y, obj_hero.x, obj_hero.y);

// Calculate hspeed and vspeed based on current speed and direction
hspeed = lengthdir_x(speed, direction);
vspeed = lengthdir_y(speed, direction);

// Attempt to move horizontally

if (place_meeting(x + 10, y, obj_environment) || place_meeting(x + 10, y, obj_enemy) || place_meeting(x - 10, y, obj_environment) || place_meeting(x - 10, y, obj_enemy)) {
  x -= hspeed;
} 

if (place_meeting(x, y + 10, obj_environment) || place_meeting(x, y + 10, obj_enemy) || place_meeting(x, y - 10, obj_environment) || place_meeting(x, y - 10, obj_enemy)) {
  y -= vspeed;
} 

// If horizontal speed is NOT 0.
if(hspeed != 0)
{
	// Set our xscale to the sign of hspeed
	// (can only be -1 or 1 at this point).
	image_xscale = -sign(hspeed);
	image_yscale = 1;
}


//adjust cooldown

if (!global.paused) 
{
	_cooldown += 1;
	cloudcd += 1;
}
