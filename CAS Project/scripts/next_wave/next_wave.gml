// Declare a function to set up the next wave.
function next_wave() 
{	
	global.level += 1;
	// Subtract experience goal from current experience.
	// Basically this is the cost of levelling up.

	// Increase the experience goal for the next wave.
	global.xp_goal += 10;
	global.num_enemies = global.xp_goal;

	// Decrease the time it takes to spawn enemies.

	// Increase enemy health bonus, making all enemies slightly harder to kill each wave.
	global.enemy_health_bonus = global.enemy_health_bonus * 1.25;
}