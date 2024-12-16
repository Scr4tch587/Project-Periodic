draw_set_colour(c_white);
draw_set_alpha(0.8);

// Draws rectangle over screen.
draw_rectangle(x - 1400, y - 525, x + 400, y + 500, 0);

draw_set_font(fnt_large);
draw_sprite_ext(spr_bohr4, 0, 1000, 600, 3, 3, 0, c_white, 1);
// Sets the text alighnment.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_black);

draw_text(x + 50, y - 400, global.selected);

draw_set_font(fnt_small);
draw_set_halign(fa_left);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_black);
draw_set_alpha(1);
draw_set_font(fnt_small);
draw_text_transformed(x - 480, y - 370, "COMING SOON", 4.5 ,4.5, 0);