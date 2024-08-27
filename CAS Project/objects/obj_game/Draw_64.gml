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
if (instance_exists(obj_upgrade_screen))
{
	// Exit event, so we don't render the HUD.
	exit;
}

if (global.winscreen_on) {

	// Sets the draw colour and alpha.
	draw_set_colour(c_white);

	// Sets the heading font.
	draw_set_font(fnt_huge);

	// Sets the text alighnment.
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	// Draws the heading.
	draw_text_ext_color(1920 / 2, 275, "WAVE CLEARED", 100, 1000, c_white, c_white, c_white, c_white, global.opacity);
	
}
