global.winscreen_on = false;
// Set the experience goal to reach the next level.
global.xp_goal = 20;
global.num_enemies = 20;

// Set current experience.
global.xp = 0;
global.mana = 100;
global.mana_max = 100;
global.fade = false;
global.opacity = 1;
global.chunk = "Na";

ini_open("save_file.ini"); 
if (ini_read_real("Save", "HF", 0)) {
	global.acid = "HF";
} else {
	global.acid = "None";
}

if (ini_read_real("Save", "Br2", 0)) {
	global.gas = "Br2";
} else {
	global.gas = "None";
}

ini_close();
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
instance_create_layer(1820, 20, "UpgradeScreen", obj_camera_hero);

// Sets cooldown for enemy spawning time (from frames to seconds).
spawn_enemy_cooldown = global.enemy_spawn_speed * (1 / 60);

// Function handles enemy spawning.
spawn_enemy = function()
{
	// Reset cooldown.
	spawn_enemy_cooldown = global.enemy_spawn_speed * (1 / 60);

	// If an instance of obj_upgrade exists then
	// that means we are on the upgrade screen...
	if (instance_exists(obj_upgrade_screen))
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
	var _enemy = obj_book;

	// If we are over level 2...
	if (global.level > 2)
	{
		// Change the enemy type to either
		// pigun or pumpkill.
		_enemy = choose(obj_cat, obj_book);
	}

	// If we are over level 4...
	if (global.level > 4)
	{
		// Change the enemy type to either
		// pigun, pumpkill or rooster.
		_enemy = choose(obj_cat, obj_book, obj_rooster);
	}

	// We want to spawn enemyes around the player.
	// So we first get a random direction (0 to 360).

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
	// create enemy in the position
	instance_create_layer(_x, _y, "Instances", _enemy);
}
