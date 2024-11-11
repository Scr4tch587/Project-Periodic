draw_set_colour(c_white);
draw_set_alpha(1);

// Draws rectangle over screen.
draw_rectangle(x - 300, y - 525, x + 400, y + 500, 0);

draw_set_font(fnt_large);

// Sets the text alighnment.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_black);

draw_text(x + 50, y - 400, global.selected);

draw_set_font(fnt_small);
draw_set_halign(fa_left);
ini_open("save_file.ini"); 

if (ini_read_real("Save", global.selected, 0)) {
	if (global.type == "chunk") {
		draw_text(x - 200, y + 50, "Tier 2");
		draw_text(x - 200, y + 100, "State: Solid");
		draw_text(x - 200, y + 150, "Type: Group 1 Alkali Metal");
		ini_open("save_file.ini"); 
		draw_text(x - 200, y + 200, "Concentration: " + string(ini_read_real("Save",global.selected + "_conc",0.5)));
		draw_text(x - 200, y + 250, "Damage: " + string(0.015 * 150 * 100 * ini_read_real("Save",global.selected + "_conc",0.5)));
	} else if (global.type == "gas") {
		draw_text(x - 200, y + 50, "Tier 2");
		draw_text(x - 200, y + 100, "State: Gas");
		draw_text(x - 200, y + 150, "Type: ");
		ini_open("save_file.ini"); 
		draw_text(x - 200, y + 200, "Concentration: " + string(ini_read_real("Save",global.selected + "_conc",0.5)));
		draw_text(x - 200, y + 250, "Damage: " + string(0.015 * 150 * 100 * ini_read_real("Save",global.selected + "_conc",0.5)));
	} else if (global.type == "puddle") {
		draw_text(x - 200, y + 50, "Tier 2");
		draw_text(x - 200, y + 100, "State: Liquid");
		draw_text(x - 200, y + 150, "Type: Acid");
		ini_open("save_file.ini"); 
		draw_text(x - 200, y + 200, "Concentration: " + string(ini_read_real("Save",global.selected + "_conc",0.5)));
		draw_text(x - 200, y + 250, "Damage: " + string(0.015 * 150 * 100 * ini_read_real("Save",global.selected + "_conc",0.5)));
	}
}

ini_close();
