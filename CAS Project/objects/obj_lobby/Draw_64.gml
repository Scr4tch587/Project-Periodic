//loadfile = "save_file.ini"

//if(file_exists(loadfile)) { 
//	ini_open(loadfile); 
	
//	global.coins = ini_read_real("Save","coins",0)

//	ini_close(); 
//} 
	
draw_text(1920 / 2, 250, "COINS: " + string(global.coins));
draw_text(1920 / 2, 275, "ELECTRONS: " + string(global.electrons));
draw_text(1920 / 2, 300, "PROTONS: " + string(global.protons));
draw_text(1920 / 2, 325, "NEUTRONS: " + string(global.neutrons));
draw_text(1920 / 2, 350, "CHUNK: " + global.chunks);
draw_text(1920 / 2, 375, "CONCENTRATION: " + string(global.concentration));



