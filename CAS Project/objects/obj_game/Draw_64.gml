// Set the drawing color to white.
draw_set_colour(c_white);
draw_set_alpha(1.0);

// If an instance of obj_upgrade exists then
// that means we are on the upgrade screen...
if (instance_exists(obj_game_over))
{
	// Exit event, so we don't render the HUD.
	exit;
}

// If the upgrade screen is open...
if (instance_exists(obj_upgrade))
{
	// Exit event, so we don't render the HUD.
	exit;
}

