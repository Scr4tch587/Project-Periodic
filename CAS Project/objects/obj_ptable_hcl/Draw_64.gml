// Draw self, this is the button sprite.
draw_self();

// Set font.
draw_set_font(fnt_elements);

// Center align drawn text horizontally and vertically.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Set color to opaque black.
draw_set_colour(c_black);
draw_set_alpha(1.0);

if border_on {
	draw_sprite_ext(spr_ptable_square_border, 1, x - 10, y - 7, 1.8, 1.8, 0, c_white, 1);
}