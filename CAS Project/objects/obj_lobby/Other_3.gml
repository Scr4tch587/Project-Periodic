/// @description Insert description here
// You can write your code in this editor
ini_open("save_file.ini"); 
ini_write_real("Save", "coins" ,global.coins);
ini_close();
			
game_end(); // save coins if game is manually closed 