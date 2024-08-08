// If the pause screen is open...
if (instance_exists(obj_pause_screen))
{
	// Exit event.
	exit;
}

// If the game over screen is open...
if (instance_exists(obj_game_over))
{
	// Exit event.
	exit;
}

// If the end screen is open...
if (instance_exists(obj_template_complete))
{
	// Exit event.
	exit;
}

// If the upgrade screen is open...
if (instance_exists(obj_upgrade))
{
	// Exit event.
	exit;
}

// If the button is active.
if (instance_exists(obj_pause_button))
{
	// If the pause button is clicked.
	if (obj_pause_button.is_clicked)
	{
		// Exit event.
		exit;
	}
}

// Draw the back of the health bar.
draw_sprite_ext(spr_healthbar_back, 0, 200, 200, 1120 / 65, 1, 0, c_white, 1);

// Get how much the health bar should be filled.
var _fill = (hitpoints / hitpoints_max)

// Draw the health bar filling.
draw_sprite_ext(spr_healthbar_fill, 0, 202.5, 203, (1160 / 54) * _fill, 1, 0, c_white, 1);

// If the left mouse button is NOT pressed...
if (!mouse_check_button(mb_left))
{
	// Exit event.
	exit;
}
