
// Sets the draw colour and alpha.
draw_set_colour(c_black);
draw_set_alpha(0.6);

// Draws rectangle over screen.
draw_rectangle(0, 0, 1920, 1080, 0);

draw_set_colour(c_white);

// Sets the heading font.
draw_set_font(fnt_huge);

// Sets the text alighnment.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draws the heading.
draw_text_ext_color(1920 / 2, 275, "HF ACID HAS BEEN UNLOCKED", 100, 2000, c_white, c_white, c_white, c_white, global.opacity);
	
draw_set_font(fnt_medium);
draw_text_ext_color(1920 / 2, 475, "View your new compound in the lobby!", 100, 1000, c_white, c_white, c_white, c_white, global.opacity);