// Not paused by default.
global.paused = false;

// Declare pause function.
function pause() 
{
	// Pause the game.
	global.paused = true;

	// Apply the following code to all instances...
	with (all) 
	{
		if (variable_instance_exists(id, "speed")){
			// Save the instance's speed.
			paused_speed = speed;
	
			// Save the animation speed.
			paused_animation = image_speed;
	
			// Stop moving the instance.
			speed = 0;
	
			// Stop animation.
			image_speed = 0;
		}

	}
}