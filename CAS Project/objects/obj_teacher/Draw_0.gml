draw_set_font(fnt_small);
draw_self()

// Sets the text alighnment.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_black);

if (!instance_exists(obj_lab_screen)) {
	if (inradius == true) {
		draw_text(x + 94, y - 91, "'E'");
	} else {
		draw_text(x + 94, y - 91, "!");
	}
}