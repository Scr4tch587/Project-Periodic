//loadfile = "save_file.ini"

//if(file_exists(loadfile)) { 
//	ini_open(loadfile); 
	
//	global.coins = ini_read_real("Save","coins",0)

//	ini_close(); 
//} 
	// Set font.
draw_set_font(fnt_small);

draw_text(1920 / 2 - 300, 250, "COINS: " + string(global.coins));
draw_text(1920 / 2 - 300, 275, "ELECTRONS: " + string(global.electrons));
draw_text(1920 / 2 - 300, 300, "PROTONS: " + string(global.protons));
draw_text(1920 / 2 - 300, 325, "NEUTRONS: " + string(global.neutrons));
draw_text(1920 / 2 - 300, 350, "CHUNK: " + global.chunks);



