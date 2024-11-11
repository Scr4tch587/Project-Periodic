// Declare a function to set up the next wave.
function next_wave() 
{	
	global.level += 1;
	if (global.level == 5) {
		if (!global.hf_unlocked) {
			hf_unlock()
		}
		ini_open("save_file.ini"); 
				
ini_write_real("Save",  "HCl", 0);
ini_write_real("Save",  "H2SO4", 0);
ini_write_real("Save",  "HNO3", 0);
ini_write_real("Save",  "HF", 0);

ini_close();
	}
	// Subtract experience goal from current experience.
	// Basically this is the cost of levelling up.

	// Increase the experience goal for the next wave.
	global.xp_goal += 10;
	global.num_enemies = global.xp_goal;

	// Decrease the time it takes to spawn enemies.

	// Increase enemy health bonus, making all enemies slightly harder to kill each wave.
	global.enemy_health_bonus = global.enemy_health_bonus * 1.25;
}