function chunk_attack(){
	if (instance_exists(nearest_enemy))
	{
		var cone_angle = 50;    // Total angle of the cone
		var num_chunks = 5;     // Number of projectiles to fire
		var spread = 8;        // Maximum random spread in degrees for each projectile
		var projectile_speed = 10;  // Speed of each projectile

		// Get the direction from the hero to the enemy.
		var base_direction = point_direction(x, y, nearest_enemy.x, nearest_enemy.y);

		// Fire the projectiles
		for (var i = 0; i < num_chunks; i++) {
		    // Calculate a random angle within the cone
		    var random_angle = irandom_range(-cone_angle/2, cone_angle/2);
    
		    // Add some random spread to each projectile's direction
		    var fire_direction = base_direction + random_angle + irandom_range(-spread, spread);
    
		    // Create the projectile instance
		    var chunk = instance_create_layer(x, y, "Instances", obj_hero_chunk);
    
		    // Set the projectile's movement
		    chunk.direction = fire_direction;
		    chunk.initial_speed = projectile_speed;
			if (i != 0)
			{
				chunk.delay_timer = irandom_range(0,15);  // Random delay between 15 and 60 steps
			}
			else
			{
				chunk.delay_timer = 0;
			}
		}
	}
}