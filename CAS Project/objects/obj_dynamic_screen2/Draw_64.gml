
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_black);

draw_sprite_ext(spr_button_green, 1, x -  500, y - 20, 7, 10, 0, c_white, 1);

draw_set_font(fnt_small);
draw_text_transformed(x - 470, y - 420, "PROJECT PERIODIC", 4,4, 0);

draw_set_font(fnt_medium);
draw_text_transformed(x - 470, y - 200, "Welcome to the demo of our CAS Project, PROJECT PERIODIC", 1, 1, 0);

draw_text_transformed(x - 470, y - 100, "In this work-in-progress edition, you can venture into the school", 1, 1, 0);
draw_text_transformed(x - 470, y - 50, "through the door above to fight monsters and earn resources using", 1, 1, 0);
draw_text_transformed(x - 470, y, "alkali metals,  gasses, and acid compounds.", 1, 1, 0);

draw_text_transformed(x - 470, y + 100, "Interact with the Periodic Table chart in the top left to", 1, 1, 0);
draw_text_transformed(x - 470, y + 150, "unlock new elements and compounds and learn about them!", 1, 1, 0);

draw_text_transformed(x - 470, y + 250, "Have fun!  (press \"Escape\")", 1, 1, 0);