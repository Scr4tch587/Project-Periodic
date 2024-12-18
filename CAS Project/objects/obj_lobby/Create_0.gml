// Create the hero in the center of the room.
instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_lobbyhero);
global.selected = " ";
global.type = " ";

ini_open("save_file.ini"); 
global.br2_unlocked = 1;
global.hcl_unlocked = 1;
global.na_unlocked = 1;
ini_write_string("Save", "HCl" ,global.hcl_unlocked);
ini_write_string("Save", "Br2" ,global.br2_unlocked);
ini_write_string("Save", "Na" ,global.na_unlocked);
ini_close();