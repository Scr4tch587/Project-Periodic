// Create the hero in the center of the room.
instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_lobbyhero);
global.selected = " ";
global.type = " ";

ini_open("save_file.ini"); 
global.hf_unlocked = true;
ini_write_string("Save", "HF" ,global.hf_unlocked);
ini_close();