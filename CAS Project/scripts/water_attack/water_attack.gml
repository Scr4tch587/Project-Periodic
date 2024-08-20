
function water_attack()
{
	// Get the direction of the hero
	var _direction = global.herolastmoved;

	
	// Repeat the following code for each bullet we need to spawn.
	repeat (1)
	{
		// Create a bullet and assign it to temp variable _bullet.
		var _bullet = instance_create_layer(x, y, "Instances", obj_hero_water);
		// Change values of the bullet...
		with (_bullet) 
		{
			// Set the bullet's direction.
			direction = _direction;
			
			// Set speed of the bullet.
			speed = 16;
			
			// Rotate the bullet to face it's moving direction.
			image_angle = direction;
		}
	}
}