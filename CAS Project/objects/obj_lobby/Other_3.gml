ini_open("save_file.ini"); 
ini_write_real("Save", "coins" ,global.coins);
ini_write_real("Save", "electrons" ,global.electrons);
ini_write_real("Save", "protons" ,global.protons);
ini_write_real("Save", "neutrons" ,global.neutrons);
ini_write_string("Save", "chunks" ,global.chunks);

ini_write_string("Save", "Na" ,global.na_unlocked);
ini_write_string("Save", "K" ,global.k_unlocked);
ini_write_string("Save", "Rb" ,global.na_unlocked);
ini_write_string("Save", "Cs" ,global.k_unlocked);

ini_write_string("Save", "H2SO4" ,global.h2so4_unlocked);
ini_write_string("Save", "HCl" ,global.hcl_unlocked);
ini_write_string("Save", "HF" ,global.hf_unlocked);
ini_write_string("Save", "HNO3" ,global.hno3_unlocked);

ini_write_string("Save", "Br2" ,global.br2_unlocked);
ini_write_string("Save", "Cl2" ,global.cl2_unlocked);
ini_write_string("Save", "COCl2" ,global.cocl2_unlocked);
ini_write_string("Save", "F2" ,global.f2_unlocked);

ini_close();
			
game_end(); // save coins if game is manually closed 