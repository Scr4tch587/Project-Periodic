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
draw_sprite_ext(spr_healthbar_back, 0, 50, 40, 1120 / 65, 1, 0, c_white, 1);

// Get how much the health bar should be filled.
var _fill = (hitpoints / hitpoints_max)

// Draw the health bar filling.
draw_sprite_ext(spr_healthbar_fill, 0, 52.5, 43, (1160 / 54) * _fill, 1, 0, c_white, 1);

// Draw the back of the experience bar.
draw_sprite_ext(spr_xpbar_back, 0, 50, 80, 7.7, 1, 0, c_white, 1);

// Get how much the bar should be filled.
_fill = min(global.mana / global.mana_max, 1);

// Draw the experince bar filling.
draw_sprite_ext(spr_xpbar_fill, 0, 57, 86.5, 9.5 * _fill, 1, 0, c_white, 1);


// Set the font.
draw_set_font(fnt_small);

// Center the text vertically and horizontally.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw our current level.
draw_text(600, 115, "Atoms");
draw_text(575, 60, "HP");


// Draw the shooting weapon icon, using the "unlocked"
// property of the shooting weapon.
draw_sprite(spr_shooting_attack_small, global.shooting[? "unlocked"], 50, 680);

// Draw the trail weapon icon, using the "unlocked"
// property of the trail weapon.
draw_sprite(spr_trail_attack_small, global.trail[? "unlocked"], 50, 800);

// Draw the swipe weapon icon, using the "unlocked"
// property of the swipe weapon.
draw_sprite(spr_arcing_attack_small, global.swipe[? "unlocked"], 50, 920);

// If the left mouse button is NOT pressed...
if (!mouse_check_button(mb_left))
{
	// Exit event.
	exit;
}
