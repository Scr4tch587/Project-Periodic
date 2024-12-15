draw_set_colour(c_white);
draw_set_alpha(1);

draw_set_font(fnt_large);

// Sets the text alighnment.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_black);

draw_text_transformed(x - 5, y - 440, global.selected, 1.4, 1.4, 0);

draw_set_font(fnt_medium);
draw_set_halign(fa_left);
ini_open("save_file.ini"); 

if (ini_read_real("Save", global.selected, 0)) {
	if (global.type == "chunk") {
		draw_sprite_ext(spr_chunk, 1, x - 10, y - 280, 1.1, 1.1, 0, c_white, 1);
		draw_text_transformed(x - 135, y - 120, "Solid", 0.85, 0.85, 0);
		draw_text_transformed(x - 130, y - 64, "Alkali Metal", 0.85, 0.85, 0);
		draw_text_transformed(x - 125, y - 8, string(ini_read_real("Save",global.selected + "_conc",0.5)*100) + "%", 0.85, 0.85, 0);
		draw_text_transformed(x - 10, y + 48, "-", 2, 1, 0);
		draw_text_transformed(x - 100, y + 104, string(0.015 * 150 * 100 * ini_read_real("Save",global.selected + "_conc",0.5)), 0.85, 0.85, 0);
	} else if (global.type == "gas") {
		draw_sprite_ext(spr_trail, 0, x - 15, y - 280, 0.8, 0.8, 0, c_white, 1);
		draw_text_transformed(x - 135, y - 120, "Gas", 0.85, 0.85, 0);
		draw_text_transformed(x - 130, y - 64, "-", 2, 1, 0);
		draw_text_transformed(x - 125, y - 8, "-", 2, 1, 0);
		draw_text_transformed(x - 10, y + 48,  string(ini_read_real("Save",global.selected + "_conc",0.5)) + "M", 0.85, 0.85, 0);
		draw_text_transformed(x - 100, y + 104, string(0.015 * 150 * 100 * ini_read_real("Save",global.selected + "_conc",0.5)), 0.85, 0.85, 0);
	} else if (global.type == "puddle") {
		draw_sprite_ext(spr_shooting, 0, x - 25, y - 360, 0.8, 0.8, 0, c_white, 1);
		draw_text_transformed(x - 135, y - 120, "Liquid", 0.85, 0.85, 0);
		draw_text_transformed(x - 130, y - 64, "-", 2, 1, 0);
		draw_text_transformed(x - 125, y - 8, "-", 2, 1, 0);
		draw_text_transformed(x - 10, y + 48,  string(ini_read_real("Save",global.selected + "_conc",0.5)) + "M", 0.85, 0.85, 0);
		draw_text_transformed(x - 100, y + 104, string(0.015 * 150 * 100 * ini_read_real("Save",global.selected + "_conc",0.5)), 0.85, 0.85, 0);
	}
}

ini_close();
