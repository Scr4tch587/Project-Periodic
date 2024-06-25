// Start the game music on a loop.
audio_play_sound(snd_music_game, 0, 1, 1.0, undefined, 1.0);

// Set the experience goal to reach the next level.
global.xp_goal = 10;

// Set current experience.
global.xp = 0;

// Set the current level.
global.level = 1;

// Set the cooldown time for spawning enemies.
global.enemy_spawn_speed = 60;

// Set starting enemy health bonus.
// This is a multiplier, and is increased each wave.
// Result: enemy hp = enemy base hp * health bonus.
global.enemy_health_bonus = 1;

// Create the hero in the center of the room.
instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_hero);

// Execute the shooting weapon reset function,
// initializing values for that weapon.
weapon_shooting_reset();

// Execute the swipe weapon reset function,
// initializing values for that weapon.
weapon_swipe_reset();

// Execute the trail weapon reset function,
// initializing values for that weapon.
weapon_trail_reset();

// Create the pause button.
instance_create_layer(1820, 20, "UpgradeScreen", obj_pause_button);

// Sets cooldown for enemy spawning time (from frames to seconds).
spawn_enemy_cooldown = global.enemy_spawn_speed * (1 / 60);

// Function handles enemy spawning.
spawn_enemy = function()
{
	// Reset cooldown.
	spawn_enemy_cooldown = global.enemy_spawn_speed * (1 / 60);

	// If an instance of obj_upgrade exists then
	// that means we are on the upgrade screen...
	if (instance_exists(obj_upgrade))
	{
		// Exit event, stopping any enemies from spawning.
		exit;
	}

	// If an instance of obj_upgrade exists then
	// that means we are on the upgrade screen...
	if (instance_exists(obj_game_over))
	{
		// Exit event, stopping any enemies from spawning.
		exit;
	}

	// If an instance of obj_upgrade exists then
	// that means we are on the upgrade screen...
	if (instance_exists(obj_template_complete))
	{
		// Exit event, stopping any enemies from spawning.
		exit;
	}

	// Declare a temp variable to hold an enemy type.
	// By default this will be the pumpkill enemy.
	var _enemy = obj_pumpkill;

	// If we are over level 2...
	if (global.level > 2)
	{
		// Change the enemy type to either
		// pigun or pumpkill.
		_enemy = choose(obj_pigun, obj_pumpkill);
	}

	// If we are over level 4...
	if (global.level > 4)
	{
		// Change the enemy type to either
		// pigun, pumpkill or rooster.
		_enemy = choose(obj_pigun, obj_pumpkill, obj_rooster);
	}

	// We want to spawn enemyes around the player.
	// So we first get a random direction (0 to 360).
	var _dir = random(360);

	// Then we get the position 1200 pixels away
	// from the hero on the x axis.
	var _x = obj_hero.x + lengthdir_x(1200, _dir);

	// Then we get the position 1200 pixels away
	// from the hero on the y axis.
	var _y = obj_hero.y + lengthdir_y(1200, _dir);

	// Create an enemy at that generated positon.
	instance_create_layer(_x, _y, "Instances", _enemy);
}