// Draw self, this is the button sprite.
draw_self();

// Set font.
draw_set_font(fnt_small);

// Center align drawn text horizontally and vertically.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Set color to opaque black.
draw_set_colour(c_black);
draw_set_alpha(1);

// Draw resume title text.
draw_text_transformed(x + 157, y + 45, "QUIT", image_xscale * 2.5, image_yscale * 2.5, image_angle);