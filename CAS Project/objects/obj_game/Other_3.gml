/// @description Insert description here
// You can write your code in this editor
ini_open("save_file.ini"); 
ini_write_real("Save", "coins" ,global.coins);
ini_write_real("Save", "electrons" ,global.electrons);
ini_write_real("Save", "protons" ,global.protons);
ini_write_real("Save", "neutrons" ,global.neutrons);
ini_write_string("Save", "chunks" ,global.chunks);

ini_close();
			
game_end(); // save coins if game is manually closed