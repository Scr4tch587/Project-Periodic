//cooldown variable for puddle attack
_cooldown = 0;
// Create variable for max hitpoints.
hitpoints_max = 2 * global.enemy_health_bonus;

// Create variable for hitpoints.
hitpoints = hitpoints_max;

// Set speed.
speed = 4;

// Set image scale.
image_xscale = 0.5;
image_yscale = 0.5;

// Create variable to show/hide the healthbar.
show_healthbar = 0;

// Create shadow object to follow.
var _shadow = instance_create_layer(x, y, "Shadows", obj_shadow);
// Set shadow owner.
_shadow.owner_object = self;


if (instance_place(x, y, obj_environment) != noone)
{
	var _x, _y;

	repeat(1000) // Try up to 1000 times to find a valid position
	{
		// Define room width and height
		var _room_width = room_width;
		var _room_height = room_height;

		// Generate random integer positions within the room bounds
		var _x = round(random_range(0, _room_width - 1));
		var _y = round(random_range(0, _room_height - 1));

		// Check if the position is inside a restricted area
		if (instance_place(_x, _y, obj_environment) == noone && is_inside_room(_x, _y, room_width, room_height))
		{
		    break; // Valid position found, break out of the loop
		}
	
	}    
	x = _x
	y = _y
}


