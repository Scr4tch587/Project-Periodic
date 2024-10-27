// Draws the upgrade background.

// Sets the draw colour and alpha.
draw_set_colour(c_black);
draw_set_alpha(0.8);



// Draws rectangle over screen.
draw_rectangle(0, 600, 2000, 1200, 0);

// Set font.
draw_set_font(fnt_medium);

// Center align drawn text horizontally and vertically.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Set color to opaque black.
draw_set_colour(c_white);
draw_set_alpha(1.0);

// Draw reroll text.
draw_text_transformed(x + 400, y + 300, "Hey there, how's it going?", 1.5, 1.5, 0);

draw_set_font(fnt_large);

draw_text_transformed(x - 450, y + 300, "MR. YOO:", 2.5, 2.5, 0);