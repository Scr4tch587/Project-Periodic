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

draw_sprite_ext(spr_info, 0, 1340, 825, 0.8, 0.8, 0, c_white, 1);
// Set the font.
draw_set_font(fnt_small);
draw_set_colour(c_black);

// Center the text vertically and horizontally.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


// Draw our current level.
draw_text(1465, 1035, string(global.protons));
draw_text(1600, 1035, string(global.neutrons));
draw_text(1735, 1035, string(global.electrons));
draw_text(1870, 1035, string(global.coins));

draw_set_font(fnt_large);
draw_text(1645, 900, "LOBBY");

draw_set_font(fnt_small);
draw_text(1645, 950, "Mr Yoo's Chemistry Classroom");