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
		
		if (global.selected == "Na")  {
			draw_text_transformed(x - 255, y + 215,  "A soft, silvery-white, highly reactive alkali metal. It reacts", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 245,  "vigorously with water and is used in various applications,", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 275,  "including as a coolant in some nuclear reactors.", 0.4, 0.4, 0);
		}
		if (global.selected == "K")  {
			draw_text_transformed(x - 255, y + 215,  "A soft, silvery-white alkali metal that is more reactive", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 245,  "than sodium. It is essential for biological processes and", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 275,  "widely used in fertilizers", 0.4, 0.4, 0);
		}
		if (global.selected == "Rb")  {
			draw_text_transformed(x - 255, y + 215,  "A very soft, silvery alkali metal that is highly reactive,", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 245,  "especially with water and air. It has applications in", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 275,  "electronics and research.", 0.4, 0.4, 0);
		}
		if (global.selected == "Cs")  {
			draw_text_transformed(x - 255, y + 215,  "A soft, gold-colored alkali metal with the lowest ionization", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 245,  "energy. It is extremely reactive and used in atomic clocks", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 275,  "for precise timekeeping. electronics and research.", 0.4, 0.4, 0);
		}
	} else if (global.type == "gas") {
		draw_sprite_ext(spr_trail, 0, x - 15, y - 280, 0.8, 0.8, 0, c_white, 1);
		draw_text_transformed(x - 135, y - 120, "Gas", 0.85, 0.85, 0);
		draw_text_transformed(x - 130, y - 64, "-", 2, 1, 0);
		draw_text_transformed(x - 125, y - 8, "-", 2, 1, 0);
		if (global.selected == "Br2") {
			cloud_timer = 20;
		} else if (global.selected == "Cl2") {
			cloud_timer = 15;
		} else if (global.selected == "F2") {
			cloud_timer = 10;
		} else if (global.selected == "COCl2") {
			cloud_timer = 5;
		}
		draw_text_transformed(x - 10, y + 48,  string(ini_read_real("Save",global.selected + "_conc",0.5)) + "M", 0.85, 0.85, 0);
		draw_text_transformed(x - 100, y + 104, string(0.1 *  ini_read_real("Save",global.selected + "_conc",0.5) * 6 * 100 * 20 / cloud_timer) + " / s", 0.85, 0.85, 0);
		if (global.selected == "Br2")  {
			draw_text_transformed(x - 255, y + 215,  "A reddish-brown liquid at STP, it is the only nonmetallic", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 245,  "element that is liquid under these conditions. It is used", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 275,  "in flame retardants and other chemical processes.", 0.4, 0.4, 0);
		}
		if (global.selected == "Cl2")  {
			draw_text_transformed(x - 255, y + 215,  "A yellow-green gas with a strong odor. It is a highly", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 245,  "reactive halogen used as a disinfectant and in the", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 275,  "production of various chemicals", 0.4, 0.4, 0);
		}
		if (global.selected == "F2")  {
			draw_text_transformed(x - 255, y + 215,  "A pale yellow, highly toxic, and reactive gas. It is the", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 245,  "most electronegative element, used in fluorinated", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 275,  "compounds and Teflon production.", 0.4, 0.4, 0);
		}
		if (global.selected == "COCl2")  {
			draw_text_transformed(x - 255, y + 215,  "A toxic, colorless gas with a faint odor of hay or musty", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 245,  "odor. It is used in chemical manufacturing but is infamous", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 275,  "as a chemical weapon", 0.4, 0.4, 0);
		}
	} else if (global.type == "puddle") {
		draw_sprite_ext(spr_shooting, 0, x - 25, y - 360, 0.8, 0.8, 0, c_white, 1);
		draw_text_transformed(x - 135, y - 120, "Liquid", 0.85, 0.85, 0);
		draw_text_transformed(x - 130, y - 64, "-", 2, 1, 0);
		draw_text_transformed(x - 125, y - 8, "-", 2, 1, 0);
		draw_text_transformed(x - 10, y + 48,  string(ini_read_real("Save",global.selected + "_conc",0.5)) + "M", 0.85, 0.85, 0);
		if (global.selected == "HCl") {
			acid_timer = 60;
		} else if (global.selected == "H2SO4") {
			acid_timer = 45;
		} else if (global.selected == "HNO3") {
			acid_timer = 30;
		} else if (global.selected == "HF") {
			acid_timer = 15;
		}
		draw_text_transformed(x - 100, y + 104, string(20 * ini_read_real("Save",global.selected + "_conc",0.5)^2 * 60/acid_timer) +  " / s", 0.85, 0.85, 0);
		if (global.selected == "HF")  {
			draw_text_transformed(x - 255, y + 215,  "A weak acid with strong corrosive properties, especially", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 245,  "towards glass and silica. It is used in etching and industrial", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 275,  "processes.", 0.4, 0.4, 0);
		}
		if (global.selected == "HNO3")  {
			draw_text_transformed(x - 255, y + 215,  "A strong acid commonly used in fertilizers, explosives,", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 245,  "and industrial chemistry. It is highly corrosive and emits", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 275,  "yellow fumes when concentrated.", 0.4, 0.4, 0);
		}
		if (global.selected == "H2SO4")  {
			draw_text_transformed(x - 255, y + 215,  "A viscous, oily liquid that is a strong acid and a key", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 245,  "industrial chemical used in battery acid, fertilizers,", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 275,  "and refining processes.", 0.4, 0.4, 0);
		}
		if (global.selected == "HCl")  {
			draw_text_transformed(x - 255, y + 215,  "A clear, highly corrosive solution of hydrogen chloride gas in", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 245,  "water. It is widely used in industrial processes, including", 0.4, 0.4, 0);
			draw_text_transformed(x - 255, y + 275,  "metal refining, pH regulation, and chemical synthesis.", 0.4, 0.4, 0);
		}
	}
}

ini_close();
