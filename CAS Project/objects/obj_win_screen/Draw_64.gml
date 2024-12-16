// Set color.
// This will be a semi-transparent black.
draw_set_colour(c_black);
draw_set_alpha(1);

// Draw rectangle filling the screen.
draw_rectangle(0, 0, 1920, 1080, false);

// Set color to opaque white.
draw_set_colour(c_white);
draw_set_alpha(1.0);

// Draw game over banner.
draw_sprite_ext(spr_game_over_banner, 0, 1920 / 2, 1080 / 2 - 300, 1.5, 1.5, 0, c_white, 1);

// Set font.
draw_set_font(fnt_large);

// Align drawn text horizontally and vertically.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw game over text.

draw_text(1920 / 2, 1080 / 2, "Just kidding.");
draw_text(1920 / 2, 1080 / 2 + 200, "You Win!!");

draw_set_font(fnt_small);

draw_text(1920 / 2, 1080 / 2 + 500, "This is the end of this demo. More will be added soon.");