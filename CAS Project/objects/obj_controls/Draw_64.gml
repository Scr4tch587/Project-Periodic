
draw_sprite_ext(spr_button_grey, 0, x, y - 50, 1.5, 4.5, 0, c_white, 1);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_black);

draw_text_transformed(x, y - 200, "Space: Burette Swipe", 0.70, 0.700, 0);
draw_text_transformed(x, y - 150, "Left Click: Fire Chemical", 0.70, 0.70, 0);
draw_text_transformed(x, y - 100, "1: Equip Acid", 0.70, 0.70, 0);
draw_text_transformed(x, y - 50, "2: Equip Gas", 0.70, 0.700, 0);
draw_text_transformed(x, y - 0, "3: Equip Chunk", 0.70, 0.700, 0);
draw_text_transformed(x, y + 50, "G: Spray Water", 0.700, 0.70, 0);

draw_set_font(fnt_medium);
draw_set_halign(fa_left);