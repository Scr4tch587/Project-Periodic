h = 63;
ini_open("save_file.ini"); 
if (ini_read_real("Save", "Br2", 0)) {
	instance_create_layer(x - 242, y - h, "Buttons2", obj_br2_button);
}
if (ini_read_real("Save", "Cl2", 0)) {
	instance_create_layer(x - 122, y - h, "Buttons2", obj_cl2_button);
}
if (ini_read_real("Save", "F2", 0)) {
instance_create_layer(x - 2, y - h, "Buttons2", obj_f2_button);
}
if (ini_read_real("Save", "COCl2", 0)) {
	instance_create_layer(x + 112, y - h, "Buttons2", obj_cocl2_button);
}
ini_close();
