// Set the maximum hitpoints that the player can have.
hitpoints_max = 10;

// Set the starting hitpoints of the player (to the max).
hitpoints = hitpoints_max;

// Variables for tracking enemies.
nearest_enemy = undefined;
nearest_distance = 1000;

// Cooldowns for the weapon attacks (from frames to seconds).
_shootcd = 240;
hero_shoot_cooldown = 30 * (1 / 60);
hero_swipe_cooldown = 30 * (1 / 60);
hero_trail_cooldown = 30 * (1 / 60);

// Function for the shooting weapon.
hero_shoot = function()
{
	if (mouse_check_button_pressed(mb_left) and _shootcd >= 240)
	{
		if (nearest_distance < 1000)
		{
			hero_shoot_cooldown = max(global.shooting[? "attack_speed"], 1) * (1 / 60);
			if (global.shooting[? "unlocked"])
			{
				// Execute the function to handle this weapon.
				shooting_attack();
			}
		}
	}

	// The nearest enemy is too far away, but we don't want to fully reset the cooldown...
		else
		{
			// Set the cooldown to test again next frame.
			hero_shoot_cooldown = 1 * (1 / 60);
		}
}

// Function for the swiping weapon
hero_swipe = function()
{
	if (mouse_check_button_pressed(mb_left))
	{	
		// If the nearest enemy is within 250 pixels...
		if (nearest_distance < 250)
		{
			// Reset the cooldown for this weapon.
			hero_swipe_cooldown = max(global.swipe[? "attack_speed"], 1) * (1 / 60);

			// Execute the function that handles this weapon.
			if (global.swipe[? "unlocked"])
			{
				// Execute the function that handles this weapon.
				swipe_attack();
			}
		}
		// The nearest enemy is too far away, but we don't want to fully reset the cooldown...
		else
		{
			// Set the cooldown to test again next frame.
			hero_swipe_cooldown = 1 * (1 / 60);
		}
	}
}

// Function for the trail weapon
hero_trail = function()
{
	if (mouse_check_button_pressed(mb_left))
	{
		// If the nearest enemy is within 300 pixels...
		if (nearest_distance < 300)
		{
			// Reset the cooldown for this weapon.
			hero_trail_cooldown = max(global.trail[? "attack_speed"], 1) * (1 / 60);

			// Execute the function that handles the weapon.
			if (global.trail[? "unlocked"])
			{
				attack_trail();
			}
		}

		// The nearest enemy is too far away, but we don't want to fully reset the cooldown...
		else
		{
			// So set the cooldown to test again next frame.
			hero_trail_cooldown = 1 * (1 / 60);
		}
	}
}

switch_weapon = function()
{
	if (keyboard_check_pressed(vk_space)) {
		if (global.swipe[? "unlocked"]) {
			ds_map_replace(global.swipe, "unlocked", false);
			
			ds_map_replace(global.trail, "unlocked", true);
		} else if (global.trail[? "unlocked"]) {
			ds_map_replace(global.trail, "unlocked", false);
			
			ds_map_replace(global.shooting, "unlocked", true);
		} else {
			ds_map_replace(global.shooting, "unlocked", false);
			
			ds_map_replace(global.swipe, "unlocked", true);
		}
	}
}

// Create shadow object to follow.
var _shadow = instance_create_layer(x, y, "Shadows", obj_shadow);
// Set shadow owner.
_shadow.owner_object = self;