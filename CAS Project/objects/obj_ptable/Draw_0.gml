/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_small);
draw_self()

// Sets the text alighnment.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_black);

if (!instance_exists(obj_lab_screen)) {
	if (inradius == true) {
		draw_text(x + 169, y - 20, "'E'");
	} else {
		draw_text(x + 169, y - 20, "!");
	}
}