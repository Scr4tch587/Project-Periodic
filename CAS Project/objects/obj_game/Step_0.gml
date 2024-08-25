// If the game is NOT over...
if (!instance_exists(obj_game_over))
{
	// If the hero has run out of hitpoints...
	if (obj_hero.hitpoints <= 0)
	{
		// Destroy the player.
		with (obj_hero) instance_destroy();
	
		// Destroy any bullets.
		with (obj_hero_bullet) instance_destroy();
		
		// Destroy any chunks.
		with (obj_hero_chunk) instance_destroy();
	
		// Destroy the enemies.
		with (obj_enemy) instance_destroy();
	
		// Destroy any xp pickups.
		with (obj_atom) instance_destroy();
		
		with (obj_electron) instance_destroy();
		with (obj_neutron) instance_destroy();
		with (obj_proton) instance_destroy();
	
		// Destroy any health pickups.
		with (obj_heart) instance_destroy();
		
		// Destroy any health pickups.
		with (obj_coin) instance_destroy();
	
		// Create game over object.
		instance_create_layer(1920 / 2, 1080 / 2 - 150, "UpgradeScreen", obj_game_over);
	}
}

// If the game is over...
// We do this by checking is an end game screen is present.
if (!instance_exists(obj_game_over))
{
	// If we have reached the experience goal...
	if (global.xp >= global.xp_goal)
	{
		// Destroy any bullets.
		with (obj_hero_bullet) instance_destroy();
		
		// Destroy any chunks.
		with (obj_hero_chunk) instance_destroy();
	
		// Destroy any xp pickups.
		with (obj_atom) instance_destroy();
		
		with (obj_electron) instance_destroy();
		with (obj_neutron) instance_destroy();
		with (obj_proton) instance_destroy();
	
		// Destroy any health pickups.
		with (obj_heart) instance_destroy();
		
		// Destroy any coin pickups.
		with (obj_coin) instance_destroy();
		
		// If we are on the last wave...
		if (global.level == 10)
		{
			// Create the upgrade screen.
			instance_create_layer(1920 / 2, 1080 / 2, "UpgradeScreen", obj_template_complete);
		}
		else
		{
			// Execute function to go to the next wave.
			instance_create_layer(1920 / 2, 1080 / 2, "UpgradeScreen", obj_upgrade_screen);
		}
	}
}

// If the game is not currently paused...
if (!global.paused)
{	
	if (global.num_enemies > 0) {
		// Reduce spawner cooldown timer.
		spawn_enemy_cooldown -= delta_time * 0.000001;
	
		// Checks if spawner has expired.
		if (spawn_enemy_cooldown <= 0)
		{
			// Calls spawn enemy function.
			spawn_enemy();	
			global.num_enemies -= 1;
		}
	}
}

