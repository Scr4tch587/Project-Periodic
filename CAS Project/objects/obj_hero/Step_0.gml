// If the game is paused...
if (global.paused)
{
	// Exit this event while paused.
	exit;
}

// Check if game is running.
if (instance_exists(obj_template_complete) || instance_exists(obj_game_over))
{	
	// Stop moving the hero.
	speed = 0;

	// Exit event while on upgrade screen.
	exit;
}

// Execute player movement function.
player_movement();

// Execute function that keeps the player in the room.
keep_in_room();

// Set depth to minus our y position.
// This is also done in enemies, with the
// result being instances higher up on the screen
// being drawn first.
depth = -y;

// Find the nearest enemy.
// And reset the distance to some high number.
nearest_enemy = instance_nearest(x, y, obj_enemy);
nearest_distance = 1000;

// If an enemy instance is found.
if (nearest_enemy)
{
	// Get the distance to that enemy.
	nearest_distance = point_distance(x, y, nearest_enemy.x, nearest_enemy.y);
}

// Reduce cooldown timer for attacks.
hero_swipe_cooldown -= delta_time * 0.000001;
hero_trail_cooldown -= delta_time * 0.000001;

//call hero_shoot function (i removed the cooldown since simpler _cdshoot exists now
if (true)
{
	// Call function.
	hero_shoot();	
}

if (true)
{
	// Call function.
	hero_swipe();	
}

if (true)
{
	// Call function.
	hero_gas();	
}

if (true)
{
	//call function.
	hero_chunk();
}

if (true)
{
	hero_water();
}
switch_weapon();
//increment cooldown to shoot variable
_shootcd += 1
_gascd += 1
global.mana += 0.001