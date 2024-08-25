ini_open("save_file.ini"); 
ini_write_real("Save", "coins" ,global.coins);
ini_write_real("Save", "electrons" ,global.electrons);
ini_write_real("Save", "protons" ,global.protons);
ini_write_real("Save", "neutrons" ,global.neutrons);
ini_write_string("Save", "chunks" ,global.chunks);

ini_write_string("Save", "Na" ,global.na_unlocked);
ini_write_string("Save", "K" ,global.k_unlocked);

ini_close();
			
game_end(); // save coins if game is manually closed 